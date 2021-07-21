package queries

import (
	"fmt"

	"github.com/jmoiron/sqlx"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/models"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/models/tables"
)

type PlayersQueries struct {
	*sqlx.DB
}

func (q *PlayersQueries) GetAllPlayers() ([]models.Player, error) {
	// Define players variable.
	players := []models.Player{}

	// Define query string.
	query := fmt.Sprintf("SELECT * FROM %s", tables.PlayersTable{}.TableName())

	// Send query to database.
	err := q.Select(&players, query)
	if err != nil {
		// Return empty object and error.
		return players, err
	}

	// Return query result.
	return players, nil
}

func (q *PlayersQueries) GetAllPlayersWithAchievements() ([]models.Player, error) {
	players := []models.Player{}

	query := fmt.Sprintf("SELECT * FROM %s", tables.PlayersTable{}.TableName())

	err := q.Select(&players, query)
	if err != nil {
		// Return empty object and error.
		return players, err
	}

	playersAchievementsRef := []models.PlayersAchievementsRef{}
	query = fmt.Sprintf("SELECT * FROM %s", tables.PlayersAchievementsRefTable{}.TableName())

	err = q.Select(&playersAchievementsRef, query)
	if err != nil {
		// Return empty object and error.
		return []models.Player{}, err
	}

	for i, p := range players {
		achievementsIds := []int{}

		for _, par := range playersAchievementsRef {
			if p.Id == par.PlayerId {
				achievementsIds = append(achievementsIds, par.AchievementId)
			}
		}

		players[i].AchievementsId = append(players[i].AchievementsId, achievementsIds...)
	}

	// Return query result.
	return players, nil
}
