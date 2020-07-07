package models

type Food struct {
	FoodCode     string   `json:"food_code"`
	FoodName     string   `json:"food_name"`
	FoodPrice    int      `json:"food_price"`
	FoodCategory Category `json:"food_category"`
	FoodStock    int      `json:"food_stock"`
	CreatedAt    string		`json:"created_at"`
	UpdatedAt    string		`json:"updated_at"`
}

