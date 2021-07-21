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

func (q *PlayersQueries) GetAllRulesContainersWithCategories() ([]models.RulesContainersWithCategories, error) {
	rulesContainersWithCategories := []models.RulesContainersWithCategories{}
	rules := []models.Rule{}

	// RULES
	query := fmt.Sprintf("SELECT * FROM %s", tables.RuleTable{}.TableName())

	// Send query to database.
	err := q.Select(&rules, query)
	if err != nil {
		// Return empty object and error.
		return rulesContainersWithCategories, err
	}

	// RULESCONTAINER
	rulesContainers := []models.RulesContainer{}
	query = fmt.Sprintf("SELECT * FROM %s", tables.RulesContainerTable{}.TableName())

	// Send query to database.
	err = q.Select(&rulesContainers, query)
	if err != nil {
		// Return empty object and error.
		return rulesContainersWithCategories, err
	}

	// RULESCONTAINERREF
	rulesContainerRefs := []models.RulesContainerRef{}
	query = fmt.Sprintf("SELECT * FROM %s", tables.RulesContainerRefTable{}.TableName())

	// Send query to database.
	err = q.Select(&rulesContainerRefs, query)
	if err != nil {
		// Return empty object and error.
		return rulesContainersWithCategories, err
	}

	// RULESCATEGORY
	rulesCategory := []models.RulesCategory{}
	query = fmt.Sprintf("SELECT * FROM %s", tables.RulesCategoryTable{}.TableName())

	// Send query to database.
	err = q.Select(&rulesCategory, query)
	if err != nil {
		// Return empty object and error.
		return rulesContainersWithCategories, err
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
