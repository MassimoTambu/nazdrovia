package router

import (
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/logger"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/controllers"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/middleware"
)

const achievements string = "/achievements"
const achievementsWithCategories string = "/achievements-with-categories"
const players string = "/players"
const playersWithAchievements string = "/players-with-achievements"
const rulesContainersWithCategories string = "/rules-containers-with-categories"

// SetupRoutes func
func SetupRoutes(app *fiber.App) {
	// Middleware
	api := app.Group("/api/v1", logger.New(), middleware.AuthReq())

	// routes

	// ACHIEVEMENTS
	api.Get(achievements, controllers.GetAllAchievements)
	api.Get(achievementsWithCategories, controllers.GetAllAchievementsWithCategories)

	// PLAYERS
	api.Get(players, controllers.GetAllPlayers)
	api.Get(playersWithAchievements, controllers.GetAllPlayersWithAchievements)

	// RULES
	api.Get(rulesContainersWithCategories, controllers.GetAllRulesContainersWithCategories)

	// api.Get("/:id", handler.GetSingleProduct)
	// api.Post("/", handler.CreateProduct)
	// api.Delete("/:id", handler.DeleteProduct)
}
