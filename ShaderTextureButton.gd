tool
extends TextureButton


export(Texture) var texture


func _ready():
	if texture:
		texture_normal = texture
		texture_hover = texture
		texture_pressed = texture
		texture_click_mask = BitMap.new()
		texture_click_mask.create_from_image_alpha(texture.get_data())


func _on_ShaderTextureButton_button_down():
	material.set_shader_param("pressed", true)


func _on_ShaderTextureButton_button_up():
	material.set_shader_param("pressed", false)


func _on_ShaderTextureButton_mouse_entered():
	material.set_shader_param("hover", true)


func _on_ShaderTextureButton_mouse_exited():
	material.set_shader_param("hover", false)
