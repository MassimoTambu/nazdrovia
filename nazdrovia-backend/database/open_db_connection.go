package database

import "gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/queries"

// Queries struct for collect all app queries.
type Queries struct {
	*queries.AchievementsQueries
	*queries.PlayersQueries
	*queries.RulesQueries
}

// OpenDBConnection func for opening database connection.
func OpenDBConnection() (*Queries, error) {
	// Define a new PostgreSQL connection.
	db, err := PostgreSQLConnection()
	if err != nil {
		return nil, err
	}

	return &Queries{
		// Set queries from models:
		AchievementsQueries: &queries.AchievementsQueries{DB: db},
		PlayersQueries:      &queries.PlayersQueries{DB: db},
		RulesQueries:        &queries.RulesQueries{DB: db},
	}, nil
}
