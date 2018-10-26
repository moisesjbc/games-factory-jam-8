extends ProgressBar

export (float) var energy_fill_step = 1.0

func _process(delta):
	# Fill energy on a regular basis.
	if value < 100:
		value += energy_fill_step * delta
		
	# Prevent energy from going beyond 100%
	if value > 100:
		value = 100
