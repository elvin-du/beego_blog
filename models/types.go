package models

type Articles struct {
	Id           uint   `josn:"id"`
	Title        string `json:"title"`
	Content      string `json:"content"`
	Boundary     string `json:"boundary"`
	CreatedAt    int64  `json:"created_at"`
	CreatedAtStr string `json:"created_at_str"`
}
