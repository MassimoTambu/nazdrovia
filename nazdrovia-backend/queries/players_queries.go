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

	playersChannel := make(chan error)
	go func() {
		query := fmt.Sprintf("SELECT * FROM %s", tables.PlayersTable{}.TableName())
		playersChannel <- q.Select(&players, query)
	}()

	playersAchievementsRef := []models.PlayersAchievementsRef{}

	playersAchievementsRefChannel := make(chan error)
	go func() {
		query := fmt.Sprintf("SELECT * FROM %s", tables.PlayersAchievementsRefTable{}.TableName())
		playersAchievementsRefChannel <- q.Select(&playersAchievementsRef, query)
	}()

	for i := 0; i < 2; i++ {
		select {
		case err := <-playersChannel:
			if err != nil {
				return players, err
			}
		case err := <-playersAchievementsRefChannel:
			if err != nil {
				return []models.Player{}, err
			}
		}
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
