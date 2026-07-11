extends CanvasLayer

var image=load("res://PNG/playerShip1_red.png")
func set_health(amount):
#remove the children
	for child in $MarginContainer2/HBoxContainer.get_children():
		child.queue_free()
#create new children is set by health
	for i in amount:
		var text_rect=TextureRect.new()
		text_rect.texture=image
		$MarginContainer2/HBoxContainer.add_child(text_rect)
