extends SceneTree

## Alternate headless entry: instantiate main, force smoke win path.

func _initialize() -> void:
	print("PIPELINE_PROOF_SMOKE_SCRIPT")
	var packed: PackedScene = load("res://main.tscn") as PackedScene
	if packed == null:
		printerr("PIPELINE_PROOF_FAIL: cannot load main.tscn")
		quit(1)
		return
	var root_node: Node = packed.instantiate()
	root.add_child(root_node)
	await root_node.ready
	if root_node.has_method("_smoke_collect"):
		root_node.set("_smoke", true)
		root_node.call("_smoke_collect")
	await create_timer(2.0).timeout
	printerr("PIPELINE_PROOF_FAIL: smoke timeout")
	quit(2)
