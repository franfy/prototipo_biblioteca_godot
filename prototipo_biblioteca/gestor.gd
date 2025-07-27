extends Control

func _ready() -> void:
	
	
	#Obtiene el menuButton en la variable menub
	var menu1 = $Panel/TabContainer/HBoxContainer/MenuButton
	var popup1 = menu1.get_popup() #obtiene el popupmenu como objeto
	
	#Se hace lo mismo pero con el segundo boton
	var menu2 = $Panel/TabContainer/HBoxContainer/MenuButton2
	var popup2 = menu2.get_popup()
	
	var menu3 = $Panel/TabContainer/HBoxContainer/MenuButton3
	var popup3 = menu3.get_popup()
	
	var menu4 = $Panel/TabContainer/HBoxContainer/MenuButton4
	var popup4 = menu4.get_popup()
	
	popup1.id_pressed.connect(subir)
	popup2.id_pressed.connect(bajar)
	popup3.id_pressed.connect(listar)
	popup4.id_pressed.connect(otros)
	
	pass

#Se llama a la seccion subir y se decide que va a hacer
func subir(id):
	
	if id == 0:
		print("Se sube una computadora")
		$Subir.visible = true
	elif id == 1:
		print("Se sube un libro")
		$Subir.visible = true
	else:
		print("Se sube otra cosa")
		$Subir.visible = true
	pass
	

#Se llama a la seccion bajar y se decide que va a hacer
func bajar(id):
	
	if id == 0:
		print("Se baja una computadora")
		$bajar.visible = true
	elif id == 1:
		print("Se baja un libro")
		$bajar.visible = true
	else:
		print("Se baja otra cosa")
		$bajar.visible = true
	pass
	

#Se llama a la seccion listar y se decide que va a hacer
func listar(id):
	
	if id == 0:
		print("Se listan computadoras")
	elif id == 1:
		print("Se listan libros")
	else:
		print("Se lista todo")
	pass

#Se llama a la lista otros y se decide que va a hacer
func otros(id):
	
	if id == 0:
		print("Se anadira un objeto")
	elif id == 1:
		print("Se eliminara un objeto")
	else:
		print("Se va a configurar algo")
		configuracion()
		
	pass
	

#Se muestra el menu de configuracion
func configuracion():
	
	$Config.visible = true
	$Config/HBoxContainer/VBoxContainer2/OptionButton.select(0)
	
	pass
	

#Si se elige "si" entonces muesta la primera opcion, sino muestra la otra opcion
func _on_option_button_2_item_selected(index: int) -> void:
	
	if index == 0:
		$Config/Label.text = "Que pena, ahora tendras que trabajar para tenerlo"
	else:
		$Config/Label.text = "Te iba a decir 'que pena', pero, que pena :3"
	pass
	

func _on_bajar_close_requested() -> void:
	
	$bajar.visible = false
	$bajar/VBoxContainer/Label.text = ""
	pass
	

func _on_config_close_requested() -> void:
	
	$Config.visible = false
	$Config/Label.text = ""
	pass
	


func _on_subir_close_requested() -> void:
	
	$Subir.visible = false
	$Subir/VBoxContainer/Label.text = ""
	pass
	
