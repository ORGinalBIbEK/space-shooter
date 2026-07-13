extends CanvasLayer

var image=load("res://PNG/playerShip1_red.png")
var time_elapsed: =0
func set_health(amount):
#remove the children
	for child in $MarginContainer2/HBoxContainer.get_children():
		child.queue_free()
#create new children is set by health
	for i in amount:
		var text_rect=TextureRect.new()
		text_rect.texture=image
		$MarginContainer2/HBoxContainer.add_child(text_rect)


func _on_score_timer_timeout() -> void:
	time_elapsed+=1
	$MarginContainer/Label.text=str (time_elapsed)
