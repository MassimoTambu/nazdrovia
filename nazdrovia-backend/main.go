package main

import (
	"log"
	"os"

	"github.com/gofiber/fiber/v2"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/configs"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/router"

	_ "github.com/lib/pq"
)

func main() {

	configs.LoadEnv()
	// Define Fiber config.
	config := configs.FiberConfig()

	// call the New() method - used to instantiate a new Fiber App
	app := fiber.New(config)

	router.SetupRoutes(app)

	// listen on port 3000
	log.Fatal(app.Listen(os.Getenv("SERVER_URL")))
}
