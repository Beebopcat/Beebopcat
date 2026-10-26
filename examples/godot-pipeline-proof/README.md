# Godot pipeline proof

A small 2D source example from the local Hermes pipeline work. Move the cyan square with WASD or the arrow keys and touch the gold square to show the win message. The scene uses built-in shapes and labels; it has no external art, audio, network dependency, or private game assets.

## Open and play

Use Godot 4.7.2, the version used for verification. Import this folder's project.godot in the Godot Project Manager, then run the main scene with F6 or the project with F5.

## Headless smoke

From this folder, run the Godot executable installed on your system (the command below assumes it is named godot and available on PATH):

```sh
godot --headless --path . -- --smoke
```

Expected output includes PIPELINE_PROOF_BOOT and PIPELINE_PROOF_OK, followed by exit code 0. The alternate script entry can be run with:

```sh
godot --headless --path . --script smoke.gd
```

Both smoke entries instantiate the scene and invoke the win path directly. They do **not** simulate keyboard movement or prove collision behavior. Play manually to review movement, collision, and presentation.

## Files and provenance

- project.godot: project settings and original Raven overnight attribution.
- main.tscn: player, collectible, boundaries, and interface.
- main.gd: movement, collection, win state, and primary smoke mode.
- smoke.gd: alternate headless smoke entry.
- The two .uid files preserve Godot script identities.

The six source/configuration files retain their original names and contents. This README replaces machine-specific launch instructions with portable ones; .gitignore excludes Godot's generated cache. No existing license or attribution was removed, and no new license is asserted.
