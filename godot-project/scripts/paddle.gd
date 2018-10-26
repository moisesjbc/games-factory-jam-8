extends Area2D

func _on_paddle_body_entered(body):
	if body.name == 'player':
		body.apply_impulse(Vector2(0.0, 0.0), -body.linear_velocity * 2)
		body.recharge_energy()
		self.queue_free()
