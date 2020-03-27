extends AnimationPlayer

func _ready():
	pass

func _on_Animation_animation_finished(anim_name):
	stop(true)
