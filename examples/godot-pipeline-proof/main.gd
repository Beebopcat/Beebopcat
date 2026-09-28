extends Node2D

## Tiny pipeline-proof minigame: WASD move, one coin, win label.
## Headless smoke: pass -- --smoke to auto-collect and print PIPELINE_PROOF_OK.

const SPEED := 220.0
const SMOKE_ARG := "--smoke"

@onready var player: CharacterBody2D = $Player
@onready var coin: Area2D = $Coin
@onready var win_label: Label = $UI/WinLabel
@onready var hint_label: Label = $UI/HintLabel

var _won := false
var _smoke := false

func _ready() -> void:
	win_label.visible = false
	hint_label.text = "WASD to move - touch the gold square"
	_smoke = SMOKE_ARG in OS.get_cmdline_user_args()
	coin.body_entered.connect(_on_coin_body_entered)
	print("PIPELINE_PROOF_BOOT: %s smoke=%s" % [
		ProjectSettings.get_setting("application/config/name"), _smoke
	])
	if _smoke:
		call_deferred("_smoke_collect")

func _physics_process(_delta: float) -> void:
	if _won or _smoke:
		return
	var dir := Vector2.ZERO
	if Input.is_key_pressed(KEY_A) or Input.is_action_pressed("ui_left"):
		dir.x -= 1.0
	if Input.is_key_pressed(KEY_D) or Input.is_action_pressed("ui_right"):
		dir.x += 1.0
	if Input.is_key_pressed(KEY_W) or Input.is_action_pressed("ui_up"):
		dir.y -= 1.0
	if Input.is_key_pressed(KEY_S) or Input.is_action_pressed("ui_down"):
		dir.y += 1.0
	dir = dir.limit_length(1.0)
	player.velocity = dir * SPEED
	player.move_and_slide()

func _on_coin_body_entered(body: Node2D) -> void:
	if _won:
		return
	if body == player or body.is_in_group("player"):
		_win()

func _smoke_collect() -> void:
	player.global_position = coin.global_position
	_win()

func _win() -> void:
	if _won:
		return
	_won = true
	coin.visible = false
	coin.set_deferred("monitoring", false)
	win_label.text = "YOU WIN"
	win_label.visible = true
	hint_label.text = "pipeline-proof collectible OK"
	print("PIPELINE_PROOF_OK")
	if _smoke:
		await get_tree().process_frame
		get_tree().quit(0)
