extends Node2D

#var que l'on peut personnaliser
export var _scale = Vector2(2.5, 0.15) #taille de notre plateform
export var couleur_crossable=1 #couleur de la plateforme (1=noir,2=rouge,3=bleu)
export var is_disabled=false

onready var cs=get_node("StaticPlateforme/CollisionPlateforme")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_scale(_scale)
	cs.set_deferred("disabled",is_disabled)
	if (couleur_crossable==1) :
		$StaticPlateforme/Color.color= Color(0, 0, 0, 1) #black
		$StaticPlateforme/Color2.color= Color(0, 0, 0, 1) #black
		$StaticPlateforme/Color3.color= Color(0, 0, 0, 1) #black
	elif (couleur_crossable==2) :
		$StaticPlateforme/Color.color= Color(1, 0, 0, 1) #red
		$StaticPlateforme/Color2.color= Color(1, 0, 0, 1) #red
		$StaticPlateforme/Color3.color= Color(1, 0, 0, 1) #red
	elif (couleur_crossable==3) :
		$StaticPlateforme/Color.color= Color(0, 0, 1, 1) #blue
		$StaticPlateforme/Color2.color= Color(0, 0, 1, 1) #blue
		$StaticPlateforme/Color3.color= Color(0, 0, 1, 1) #blue
	elif (couleur_crossable==4) :
		$StaticPlateforme/Color.color= Color(0, 1, 0, 1) #green
		$StaticPlateforme/Color2.color= Color(0, 1, 0, 1) #green
		$StaticPlateforme/Color3.color= Color(0, 1, 0, 1) #green
