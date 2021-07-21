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

	query := fmt.Sprintf("SELECT * FROM %s", tables.AchievementsTable{}.TableName())

	err := q.Select(&achievements, query)
	if err != nil {
		// Return empty object and error.
		return achievementsContainer, err
	}

	achievementsCategory := []models.AchievementsCategory{}
	query = fmt.Sprintf("SELECT * FROM %s", tables.AchievementsCategoryTable{}.TableName())

	err = q.Select(&achievementsCategory, query)
	if err != nil {
		// Return empty object and error.
		return achievementsContainer, err
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
