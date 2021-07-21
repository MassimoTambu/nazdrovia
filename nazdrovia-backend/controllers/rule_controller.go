package controllers

import (
	"github.com/gofiber/fiber/v2"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/database"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/response"
)

//region Achievements

func GetAllRulesContainersWithCategories(c *fiber.Ctx) error {

	// Create database connection.
	db, err := database.OpenDBConnection()

	if err != nil {
		response.InternalServerError(c, err)
		return err
	}

	players, err := db.GetAllRulesContainersWithCategories()

	if err != nil {
		response.NotFound(c, err)
		return err
	}

	return response.Success(c, "All Rules returned successfully", players)
}
