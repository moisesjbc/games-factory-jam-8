extends ProgressBar

export (float) var energy_fill_step = 1.0
var energy = 100.0

func _process(delta):
	# Fill energy on a regular basis.
	if energy < 100:
		energy += energy_fill_step * delta
		
	# Prevent energy from going beyond 100%
	if energy > 100:
		energy = 100
		
	value = int(energy)
