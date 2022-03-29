extends Node2D

onready var player = $bot1
#variavel 1 para o player 1
onready var player2 = $bot2
#variavel 2 para o player 2
onready var player3 = $bot3
onready var player4 = $bot4



onready var resposta = $Button
onready var resposta2 = $Button2
onready var resposta3 = $button3



onready var rect = $TextureRect3
onready var rect2 = $TextureRect4
onready var rect3 = $TextureRect5


onready var label_res = $resposta1
onready var label_res2 = $resposta2
onready var label_res3 = $resposta3





var  vida  = 100
var vida2 = 100
var dano =  30
func _ready():
	get_node("ProgressBar").value = vida
	get_node("ProgressBar2").value = vida2
	$Label3.text = String(Global.perguntas["pergunta 1"]["pergunta"]["voto impresso"][0])
	
	$resposta1.text = String(Global.perguntas["pergunta 1"]["respostas"][0])
	$resposta2.text = String(Global.perguntas["pergunta 1"]["respostas"][1])
	$resposta3.text = String(Global.perguntas["pergunta 1"]["respostas"][2])
	



func _on_Button_pressed():
	if self.has_node("bot1"):
		if dano > 0 :
			rect.show()
			resposta.hide()
			resposta2.hide()
			resposta3.hide()
			label_res.hide()
			label_res2.hide()
			label_res3.hide()
			
			



	
		
		
		
		
		


func _on_Button2_pressed():
	if self.has_node("bot2"):
			if dano > 0:
				rect2.show()
				resposta.hide()
			resposta2.hide()
			resposta3.hide()
			label_res.hide()
			label_res2.hide()
			label_res3.hide()
		




func _on_button3_pressed():
	if self.has_node("bot1"):
		rect3.show()
		resposta.hide()
		resposta2.hide()
		resposta3.hide()
		label_res.hide()
		label_res2.hide()
		label_res3.hide()
	


func _on_botao_expancao_pressed():
	if vida > 0:
		vida = (vida - dano)
		rect.hide()
		resposta.show()
		resposta2.show()
		resposta3.show()
		label_res.show()
		label_res2.show()
		label_res3.show()
		if vida <= 0: 
			dano = 0
			player.queue_free()
			
		
		
		get_node("ProgressBar").value = vida
		


func _on_botao_expancao2_pressed():
	rect.hide()
	resposta.show()
	resposta2.show()
	resposta3.show()
	label_res.show()
	label_res2.show()
	label_res3.show()


func _on_botao2_expancao_pressed():
	if dano > 0 :
			vida2 = (vida2 - dano)
			rect2.hide()
			resposta.show()
			resposta2.show()
			resposta3.show()
			label_res.show()
			label_res2.show()
			label_res3.show()
			if vida2 <= 0 :
				dano = 0
				player2.queue_free()
			get_node("ProgressBar2").value = vida2
			print("vida =", vida2)
			
		
	if self.has_node("bot3"):
			
			if vida2 <= 0 :
				dano = 0
				player3.queue_free()
			
	if self.has_node("bot4"):
			
			if vida2 <= 0 :
				dano = 0
				player4.queue_free()


func _on_botao2_expancao2_pressed():
	rect2.hide()
	resposta.show()
	resposta2.show()
	resposta3.show()
	label_res.show()
	label_res2.show()
	label_res3.show()


func _on_botao3_expancao_pressed():
	if dano > 0 :
		vida = (vida - dano)
		rect3.hide()
		resposta.show()
		resposta2.show()
		resposta3.show()
		label_res.show()
		label_res2.show()
		label_res3.show()
		if vida <= 0: 
			dano = 0
			player.queue_free()
		
		get_node("ProgressBar").value = vida


func _on_botao3_expancao2_pressed():
	rect3.hide()
	resposta.show()
	resposta2.show()
	resposta3.show()
	label_res.show()
	label_res2.show()
	label_res3.show()
