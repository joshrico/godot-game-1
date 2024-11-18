extends Node

var score = 0
@onready var score_label = $ScoreLabel

func _ready():
	score_label.text = "Score: " + str(score)

func add_point():
	score += 1
	score_label.text = "Score: " + str(score)
