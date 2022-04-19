extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	# Find the interface and initialise
	var interface = ARVRServer.find_interface("Oculus")
	if interface and interface.initialize():
		get_viewport().arvr = true
		
		# make sure vsync is disabled or we'll be limited to 60fps
		OS.vsync_enabled = false
		
		# up our physics to 90fps to get in sync with our rendering
		Engine.target_fps = 90


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
