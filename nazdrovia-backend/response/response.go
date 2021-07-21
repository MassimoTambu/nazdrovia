package response

import "github.com/gofiber/fiber/v2"

func Success(c *fiber.Ctx, message string, data interface{}) error {
	if err := c.JSON(&fiber.Map{
		"success": true,
		"message": message,
		"data":    data,
	}); err != nil {
		c.Status(fiber.StatusInternalServerError).JSON(&fiber.Map{
			"success": false,
			"message": err.Error(),
		})
		return err
	}

	return nil
}

// 500
func InternalServerError(c *fiber.Ctx, err error) {
	c.Status(fiber.StatusInternalServerError).JSON(&fiber.Map{
		"success": false,
		"error":   err.Error(),
	})
}

// 404
func NotFound(c *fiber.Ctx, err error) {
	c.Status(fiber.StatusNotFound).JSON(&fiber.Map{
		"success": false,
		"error":   err.Error(),
	})
}
