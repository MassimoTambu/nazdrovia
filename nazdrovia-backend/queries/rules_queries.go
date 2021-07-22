package queries

import (
	"fmt"

	"github.com/jmoiron/sqlx"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/models"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/models/tables"
)

type RulesQueries struct {
	*sqlx.DB
}

func (q *RulesQueries) GetAllRulesContainersWithCategories() ([]models.RulesContainersWithCategories, error) {
	rulesContainersWithCategories := []models.RulesContainersWithCategories{}
	rules := []models.Rule{}

	// RULES

	rulesChannel := make(chan error)
	go func() {
		query := fmt.Sprintf("SELECT * FROM %s", tables.RuleTable{}.TableName())
		rulesChannel <- q.Select(&rules, query)
	}()

	// RULESCONTAINER
	rulesContainers := []models.RulesContainer{}

	rulesContainersChannel := make(chan error)
	go func() {
		query := fmt.Sprintf("SELECT * FROM %s", tables.RulesContainerTable{}.TableName())
		rulesContainersChannel <- q.Select(&rulesContainers, query)
	}()

	// RULESCONTAINERREF
	rulesContainerRefs := []models.RulesContainerRef{}

	rulesContainersRefChannel := make(chan error)
	go func() {
		query := fmt.Sprintf("SELECT * FROM %s", tables.RulesContainerRefTable{}.TableName())
		rulesContainersRefChannel <- q.Select(&rulesContainerRefs, query)
	}()

	// RULESCATEGORY
	rulesCategory := []models.RulesCategory{}

	rulesCategoryChannel := make(chan error)
	go func() {
		query := fmt.Sprintf("SELECT * FROM %s", tables.RulesCategoryTable{}.TableName())
		rulesCategoryChannel <- q.Select(&rulesCategory, query)
	}()

	for i := 0; i < 4; i++ {
		select {
		case err := <-rulesChannel:
			if err != nil {
				return rulesContainersWithCategories, err
			}
		case err := <-rulesContainersChannel:
			if err != nil {
				return rulesContainersWithCategories, err
			}
		case err := <-rulesContainersRefChannel:
			if err != nil {
				return rulesContainersWithCategories, err
			}
		case err := <-rulesCategoryChannel:
			if err != nil {
				return rulesContainersWithCategories, err
			}
		}
	}

	for _, rcr := range rulesContainerRefs {
		matchedRule := models.Rule{}

		for _, r := range rules {
			if r.Id == rcr.RuleId {
				matchedRule = r
				break
			}
		}

		matchedRuleContainer := models.RulesContainer{}

		for _, rc := range rulesContainers {
			if rc.Id == rcr.RuleContainerId {
				matchedRuleContainer = rc
			}
		}

		if len(rulesContainers) == 0 || matchedRuleContainer.Rules == nil {
			rulesContainer := models.RulesContainer{Id: matchedRuleContainer.Id, Title: matchedRuleContainer.Title, Prologue: matchedRuleContainer.Prologue, Rules: []models.Rule{matchedRule}, Epilogue: matchedRuleContainer.Epilogue, CategoryId: matchedRuleContainer.CategoryId}
			rulesContainers = append(rulesContainers, rulesContainer)
		} else {
			for i, rc := range rulesContainers {
				if rc.Id == rcr.RuleContainerId {
					rulesContainers[i].Rules = append(rulesContainers[i].Rules, matchedRule)
					break
				}
			}
		}
	}

	for _, rc := range rulesContainers {
		matchedRulesCategory := ""

		for _, rcat := range rulesCategory {
			if rcat.Id == rc.CategoryId {
				matchedRulesCategory = rcat.Category
			}
		}

		rulesContainerWithCategory := models.RulesContainersWithCategories{RulesContainer: rc, Category: matchedRulesCategory}
		rulesContainersWithCategories = append(rulesContainersWithCategories, rulesContainerWithCategory)
	}

	// Return query result.
	return rulesContainersWithCategories, nil
}
