package queries

import (
	"fmt"

	"github.com/jmoiron/sqlx"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/models"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/models/tables"
)

type AchievementsQueries struct {
	*sqlx.DB
}

func (q *AchievementsQueries) GetAllAchievements() ([]models.Achievement, error) {
	// Define achievements variable.
	achievements := []models.Achievement{}

	// Define query string.
	query := fmt.Sprintf("SELECT * FROM %s", tables.AchievementsTable{}.TableName())

	// Send query to database.
	err := q.Select(&achievements, query)
	if err != nil {
		// Return empty object and error.
		return achievements, err
	}

	// Return query result.
	return achievements, nil
}

func (q *AchievementsQueries) GetAllAchievementsWithCategories() ([]models.AchievementsContainer, error) {
	achievementsContainer := []models.AchievementsContainer{}
	achievements := []models.Achievement{}

	achievementsChannel := make(chan error)
	go func() {
		query := fmt.Sprintf("SELECT * FROM %s", tables.AchievementsTable{}.TableName())
		achievementsChannel <- q.Select(&achievements, query)
	}()

	achievementsCategory := []models.AchievementsCategory{}

	achievementsCategoryChannel := make(chan error)
	go func() {
		query := fmt.Sprintf("SELECT * FROM %s", tables.AchievementsCategoryTable{}.TableName())
		achievementsCategoryChannel <- q.Select(&achievementsCategory, query)
	}()

	for i := 0; i < 2; i++ {
		select {
		case err := <-achievementsChannel:
			if err != nil {
				return achievementsContainer, err
			}
		case err := <-achievementsCategoryChannel:
			if err != nil {
				return achievementsContainer, err
			}
		}
	}

	for _, ac := range achievementsCategory {
		matchedAchievements := []models.Achievement{}

		for _, a := range achievements {
			if a.CategoryId == ac.Id {
				matchedAchievements = append(matchedAchievements, a)
			}
		}

		achievementsContainer = append(achievementsContainer, models.AchievementsContainer{
			Category:     ac.Category,
			Achievements: matchedAchievements,
		})
	}

	// Return query result.
	return achievementsContainer, nil
}

func (q *AchievementsQueries) CreateAchievement() (models.Achievement, error) {
	return models.Achievement{}, nil
}
