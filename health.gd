extends Node2D

onready var player = $bot1
#variavel 1 para o player 1
onready var player2 = $bot2
#variavel 2 para o player 2
var  vida  = 100
var vida2 = 100
var dano =  10
func _ready():
	get_node("ProgressBar").value = vida
	get_node("ProgressBar2").value = vida2
	$Label3.text = String("pergunta 1")
	



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
		$Label3.text = String("pergunta z")



	
		
		
		
		
		


func _on_Button2_pressed():
	if self.has_node("bot2"):
			if dano > 0 :
				vida2 = (vida2 - dano)
			if vida2 <= 0 :
				dano = 0
				player2.queue_free()
			get_node("ProgressBar2").value = vida2
			print("vida =", vida2)
			$Label3.text = String("pergunta y")
			
		


func _on_Button3_pressed():
	if self.has_node("bot1"):
		if dano > 0 :
			vida = (vida - dano)
		if vida <= 0: 
			dano = 0
			player.queue_free()
		#print("dano : ",dano)
		#print("vida : ",vida)
		get_node("ProgressBar").value = vida
		$Label3.text = String("pergunta x")

func _process (delta):
	get_node("ProgressBar2").value = vida2
	$Label4.text = String(vida2)
	if vida2 < 100:
		$Label4.show()
		$Label5.show() 
		$Label6.hide()
	else:
		$Label6.show()
	
