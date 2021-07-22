package controllers

import (
	"github.com/gofiber/fiber/v2"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/database"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/response"
)

//region Achievements

func GetAllAchievements(c *fiber.Ctx) error {

	// Create database connection.
	db, err := database.OpenDBConnection()

	if err != nil {
		response.InternalServerError(c, err)
		return err
	}

	achievements, err := db.GetAllAchievements()

	if err != nil {
		response.NotFound(c, err)
		return err
	}

	return response.Success(c, "All Achievements returned successfully", achievements)
}

func GetAllAchievementsWithCategories(c *fiber.Ctx) error {
	db, err := database.OpenDBConnection()

	if err != nil {
		response.InternalServerError(c, err)
		return err
	}

	achievementsWithCategories, err := db.GetAllAchievementsWithCategories()

	if err != nil {
		response.NotFound(c, err)
		return err
	}

	return response.Success(c, "All AchievementsWithCategories returned successfully", achievementsWithCategories)
}

func CreateAchievement(c *fiber.Ctx) error {
	db, err := database.OpenDBConnection()

	if err != nil {
		response.InternalServerError(c, err)
		return err
	}

	achievement, err := db.CreateAchievement()

	if err != nil {
		response.NotFound(c, err)
		return err
	}

	return response.Success(c, "Achievement created successfully", achievement)
}

//endregion

// GetSingleProduct from db
// func GetSingleProduct(c *fiber.Ctx) error {
// 	id := c.Params("id")
// 	product := models.Product{}
// 	// query product database
// 	row, err := database.DB.Query("SELECT * FROM products WHERE id = $1", id)
// 	if err != nil {
// 		c.Status(500).JSON(&fiber.Map{
// 			"success": false,
// 			"message": err,
// 		})
// 		return err
// 	}
// 	defer row.Close()
// 	// iterate through the values of the row
// 	for row.Next() {
// 		switch err := row.Scan(&id, &product.Amount, &product.Name, &product.Description, &product.Category); err {
// 		case sql.ErrNoRows:
// 			log.Println("No rows were returned!")
// 			c.Status(500).JSON(&fiber.Map{
// 				"success": false,
// 				"message": err,
// 			})
// 		case nil:
// 			log.Println(product.Name, product.Description, product.Category, product.Amount)
// 		default:
// 			//   panic(err)
// 			c.Status(500).JSON(&fiber.Map{
// 				"success": false,
// 				"message": err,
// 			})
// 		}
// 	}

// 	// return product in JSON format
// 	if err := c.JSON(&fiber.Map{
// 		"success": false,
// 		"message": "Successfully fetched product",
// 		"product": product,
// 	}); err != nil {
// 		c.Status(500).JSON(&fiber.Map{
// 			"success": false,
// 			"message": err,
// 		})
// 		return err
// 	}

// 	return nil
// }

// // CreateProduct handler
// func CreateProduct(c *fiber.Ctx) error {
// 	// Instantiate new Product struct
// 	p := new(models.Product)
// 	//  Parse body into product struct
// 	if err := c.BodyParser(p); err != nil {
// 		log.Println(err)
// 		c.Status(400).JSON(&fiber.Map{
// 			"success": false,
// 			"message": err,
// 		})
// 		return err
// 	}
// 	// Insert Product into database
// 	res, err := database.DB.Query("INSERT INTO products (name, description, category, amount) VALUES ($1, $2, $3, $4)", p.Name, p.Description, p.Category, p.Amount)
// 	if err != nil {
// 		c.Status(500).JSON(&fiber.Map{
// 			"success": false,
// 			"message": err,
// 		})
// 		return err
// 	}
// 	// Print result
// 	log.Println(res)

// 	// Return Product in JSON format
// 	if err := c.JSON(&fiber.Map{
// 		"success": true,
// 		"message": "Product successfully created",
// 		"product": p,
// 	}); err != nil {
// 		c.Status(500).JSON(&fiber.Map{
// 			"success": false,
// 			"message": "Error creating product",
// 		})
// 		return err
// 	}

// 	return nil
// }

// // DeleteProduct from db
// func DeleteProduct(c *fiber.Ctx) error {
// 	id := c.Params("id")
// 	// query product table in database
// 	res, err := database.DB.Query("DELETE FROM products WHERE id = $1", id)
// 	if err != nil {
// 		c.Status(500).JSON(&fiber.Map{
// 			"success": false,
// 			"error":   err,
// 		})
// 		return err
// 	}
// 	// Print result
// 	log.Println(res)
// 	// return product in JSON format
// 	if err := c.JSON(&fiber.Map{
// 		"success": true,
// 		"message": "product deleted successfully",
// 	}); err != nil {
// 		c.Status(500).JSON(&fiber.Map{
// 			"success": false,
// 			"error":   err,
// 		})
// 		return err
// 	}

// 	return nil
// }
