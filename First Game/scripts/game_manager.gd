extends Node

var score = 0

@onready var score_label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " coins."

func host():
	print("Host Button Pressed")
	%MultiplayerHUD.hide()
	MultiplayerManager.become_host()
	
func join_player():
	print("Join Button Pressed")
	%MultiplayerHUD.hide()
	MultiplayerManager.join()	
