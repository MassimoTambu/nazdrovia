package controllers

import (
	"github.com/gofiber/fiber/v2"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/database"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/response"
)

//region Achievements

func GetAllPlayers(c *fiber.Ctx) error {

	// Create database connection.
	db, err := database.OpenDBConnection()

	if err != nil {
		response.InternalServerError(c, err)
		return err
	}

	players, err := db.GetAllPlayers()

	if err != nil {
		response.NotFound(c, err)
		return err
	}

	return response.Success(c, "All Players returned successfully", players)
}

func GetAllPlayersWithAchievements(c *fiber.Ctx) error {

	// Create database connection.
	db, err := database.OpenDBConnection()

	if err != nil {
		response.InternalServerError(c, err)
		return err
	}

	players, err := db.GetAllPlayersWithAchievements()

	if err != nil {
		response.NotFound(c, err)
		return err
	}

	return response.Success(c, "All PlayersWithAchievements returned successfully", players)
}
