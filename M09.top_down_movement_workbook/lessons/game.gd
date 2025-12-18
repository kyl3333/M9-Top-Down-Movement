extends Node2D
@onready var _finish_line: FinishLine = %FinishLine
@onready var _count_down: CountDown = %CountDown
@onready var _runner: Runner = %Runner
@onready var _bouncer: CharacterBody2D = %Bouncer
@onready var _bouncer_2: CharacterBody2D = %Bouncer2
@onready var _bouncer_3: CharacterBody2D = %Bouncer3
@onready var _bouncer_4: CharacterBody2D = %Bouncer4
@onready var _bouncer_5: CharacterBody2D = %Bouncer5
@onready var _bouncer_6: CharacterBody2D = %Bouncer6
@onready var _bouncer_7: CharacterBody2D = %Bouncer7
@onready var _bouncer_8: CharacterBody2D = %Bouncer8
@onready var _bouncer_9: CharacterBody2D = %Bouncer9
@onready var _bouncer_10: CharacterBody2D = %Bouncer10
@onready var _bouncer_11: CharacterBody2D = %Bouncer11
@onready var _bouncer_12: CharacterBody2D = %Bouncer12
@onready var _bouncer_13: CharacterBody2D = %Bouncer13
@onready var _bouncer_14: CharacterBody2D = %Bouncer14
@onready var _bouncer_15: CharacterBody2D = %Bouncer15




func _ready() -> void:
	_finish_line.body_entered.connect(func (body: Node) -> void:
		if body is not Runner:
			return
		var runner := body as Runner

		runner.set_physics_process(false)
		var destination_position := (
			_finish_line.global_position + Vector2(0, 64)
		)

		runner.walk_to(destination_position)
		runner.walked_to.connect(
			_finish_line.pop_confettis
		)
	)

	_finish_line.confettis_finished.connect(
		get_tree().reload_current_scene.call_deferred
	)
	_count_down.start_counting()
	_runner.set_physics_process(false)
	_count_down.counting_finished.connect(
		func() -> void:
			_runner.set_physics_process(true)
	)
	_bouncer.set_physics_process(false)
	_bouncer_2.set_physics_process(false)
	_bouncer_3.set_physics_process(false)
	_bouncer_4.set_physics_process(false)
	_bouncer_5.set_physics_process(false)
	_bouncer_6.set_physics_process(false)
	_bouncer_7.set_physics_process(false)
	_bouncer_8.set_physics_process(false)
	_bouncer_9.set_physics_process(false)
	_bouncer_10.set_physics_process(false)
	_bouncer_11.set_physics_process(false)
	_bouncer_12.set_physics_process(false)
	_bouncer_13.set_physics_process(false)
	_bouncer_14.set_physics_process(false)
	_bouncer_15.set_physics_process(false)
	_count_down.counting_finished.connect(
		func() -> void:
			_bouncer.set_physics_process(true)
			_bouncer_2.set_physics_process(true)
			_bouncer_3.set_physics_process(true)
			_bouncer_4.set_physics_process(true)
			_bouncer_5.set_physics_process(true)
			_bouncer_6.set_physics_process(true)
			_bouncer_7.set_physics_process(true)
			_bouncer_8.set_physics_process(true)
			_bouncer_9.set_physics_process(true)
			_bouncer_10.set_physics_process(true)
			_bouncer_11.set_physics_process(true)
			_bouncer_12.set_physics_process(true)
			_bouncer_13.set_physics_process(true)
			_bouncer_14.set_physics_process(true)
			_bouncer_15.set_physics_process(true)

	)
	
