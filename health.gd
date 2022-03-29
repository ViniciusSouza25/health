extends Node2D

onready var player = $bot1
#variavel 1 para o player 1
onready var player2 = $bot2
#variavel 2 para o player 2
onready var player3 = $bot3
onready var player4 = $bot4
var  vida  = 100
var vida2 = 100
var dano =  30
func _ready():
	get_node("ProgressBar").value = vida
	get_node("ProgressBar2").value = vida2
	$Label3.text = String(Global.perguntas["pergunta 1"]["pergunta"]["voto impresso"][0])
	#texto.text = String(Global.dialogos_dados["Introdução"][textoatual])
	$resposta1.text = String(Global.perguntas["pergunta 1"]["respostas"][0])
	$resposta2.text = String(Global.perguntas["pergunta 1"]["respostas"][1])
	$resposta3.text = String(Global.perguntas["pergunta 1"]["respostas"][2])
	



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
		#$Label3.text = String("pergunta z")
		



	
		
		
		
		
		


func _on_Button2_pressed():
	if self.has_node("bot2"):
			if dano > 0 :
				vida2 = (vida2 - dano)
			if vida2 <= 0 :
				dano = 0
				player2.queue_free()
			get_node("ProgressBar2").value = vida2
			print("vida =", vida2)
			#$Label3.text = String("pergunta y")
		
	if self.has_node("bot3"):
			#if dano > 0 :
			#	vida2 = (vida2 - dano)
			if vida2 <= 0 :
				dano = 0
				player3.queue_free()
			
	if self.has_node("bot4"):
			#if dano > 0 :
				#vida2 = (vida2 - dano)
			if vida2 <= 0 :
				dano = 0
				player4.queue_free()
		




func _on_button3_pressed():
	if self.has_node("bot1"):
		if dano > 0 :
			vida = (vida - dano)
		if vida <= 0: 
			dano = 0
			player.queue_free()
		#print("dano : ",dano)
		#print("vida : ",vida)
		get_node("ProgressBar").value = vida
	#	$Label3.text = String("pergunta x")
