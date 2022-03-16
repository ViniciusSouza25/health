extends Node2D

onready var player = $bot1
var  vida  = 100
var dano =  10
func _ready():
	get_node("ProgressBar").value = vida
	



func _on_Button_pressed():
	if self.has_node("bot1"):
		if dano > 0 :
			vida = (vida - dano)
		if vida <= 0: 
			dano = 0
			player.queue_free()
		#print("dano : ",dano)
		#print("vida : ",vida)
		get_node("ProgressBar").value = vida



	
		
		
		
		
		


func _on_Button2_pressed():
	pass # Replace with function body.
