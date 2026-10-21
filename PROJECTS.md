# Projects and engineering records

Detailed project list (updated October 21, 2026), followed by engineering records. The [README](README.md) has the overview with screenshots. Only public repositories are linked; private projects are described on the [website](https://caseyshingledecker.com/).

## Windows tools & automation

- **OCR Boxes.** Windows OCR and text-to-speech: place up to four adjustable boxes over visible text and have it read aloud. Requires Windows 10/11 and AutoHotkey v2. How to use: run `OcrBoxes/OCR Boxes.ahk`, position and lock a box, press Play. [Source](https://github.com/Beebopcat/ocr-boxes)
- **Kokoro Player.** A local Windows text-to-speech reader driven by a local Kokoro service. The repository has a README only so far; source publishing is in progress and there is no web demo. [Repo](https://github.com/Beebopcat/kokoro-player)
- **Avatar Toolbox.** A small Windows dashboard for launching your tools and checking their status. [Source](https://github.com/Beebopcat/avatar-toolbox)
- **Desktop Pixel Companions.** A Windows desktop companion and accessibility project, shared as source. A planned "AI companion mode" is described in the roadmap section of its README; it is not part of the public snapshot. [Source](https://github.com/Beebopcat/desktop-pixel-companions)
- **VM Clipboard Typer (new).** An AutoHotkey v2 utility that types the clipboard into VMware consoles that don't accept paste, one exact keystroke at a time. Built during cybersecurity lab work. How to use: install AutoHotkey v2, run `VM Clipboard Typer.ahk`, copy text, focus the VM console, press F13. [Source](https://github.com/Beebopcat/vm-clipboard-typer)
- **Cursor Studio.** 24 themed Windows 11 cursor sets in four styles each (3,264 files), a no-admin PowerShell installer, and a browser selector with a live hover test. The cursors have not yet been tested on a live Windows desktop. [Live selector](https://beebopcat.github.io/cursor-studio/) · [Source](https://github.com/Beebopcat/cursor-studio)

## Browser games

- **The Nine Marches.** Explore the Nine Marches, build a life and face the horrors beyond the lanterns. [Play](https://caseyshingledecker.com/demos/top-secret/lantern-gate/) · [Source](https://github.com/Beebopcat/lantern-gate)
- **Stolen Names.** Some debts should never be inherited. A country has lost its names. [Play](https://beebopcat.github.io/stolen-names/) · [Source](https://github.com/Beebopcat/stolen-names)
- **Thirteenth Lantern.** A town that calls disappearance kindness; 601 routes lead to twelve endings. [Play](https://beebopcat.github.io/thirteenth-lantern/) · [Source](https://github.com/Beebopcat/thirteenth-lantern)
- **Classic Solitaire.** Draw one or three, undo a move and bring all four suits home. [Play](https://beebopcat.github.io/classic-solitaire/) · [Source](https://github.com/Beebopcat/classic-solitaire)
- **Hungry Moors.** Two hikers, a full moon and a road they were warned never to leave (adult horror). [Play](https://beebopcat.github.io/hungry-moors/) · [Source](https://github.com/Beebopcat/hungry-moors)
- **Coloring Studio.** 22 illustrated sheets, 60 colors and a compact paint box. [Play](https://beebopcat.github.io/coloring-studio/) · [Source](https://github.com/Beebopcat/coloring-studio)
- **Aetherglass.** An interactive hub for the restored realm: travel, talk and play. [Play](https://beebopcat.github.io/aetherglass/) · [Source](https://github.com/Beebopcat/aetherglass)

## Labs & demos

- **Public demos.** Fictional-sample-data browser demos: [Town](https://beebopcat.github.io/public-demos/town/), [Permissions Lab](https://beebopcat.github.io/public-demos/permissions/) and [Natural Dialogue stand-in](https://beebopcat.github.io/public-demos/dialogue/). [Hub](https://beebopcat.github.io/public-demos/) · [Source](https://github.com/Beebopcat/public-demos)
- **Cybersecurity Journey Labs.** Documented lab work toward a SOC analyst role, starting with diagnosing an application failure from Windows Event Logs. [Source](https://github.com/Beebopcat/cybersecurity-journey-labs)
- **Natural-Dialogue.** Earlier Windows speech-tool source. [Source](https://github.com/Beebopcat/Natural-Dialogue)
- **Duskwood (playable).** Godot prototype; the current candidate is an interior detail pass, not a finished game. [Source](https://github.com/Beebopcat/duskwood-playable)
- **Aetherfall: The Sovereign Vanguard.** Single-player PC 3D action RPG for Unity 6, in development; gameplay lives in tested C# models. [Source](https://github.com/Beebopcat/aetherfall-sovereign-vanguard)

# Engineering records

These notes record selected local project evidence reviewed on September 28, 2026. Results attributed to saved runs are historical evidence, not tests rerun for this profile update. Gallery narratives stay on the website; this file holds the underlying test results and their limits. The README supplies project navigation.

## Blender toolchain and local agent evaluation

The reviewed toolchain used Blender 5.2.2 LTS, Godot 4.7.2, and Unreal Engine 5.8.3. Evidence came from the asset pipeline's verification and local-model training records.

| Saved verification run | Result | What it establishes |
| --- | --- | --- |
| Prop, character, and environment integration suites | 35 steps passed per preset | The tested file-generation and engine-import paths completed |
| MCP tool interface checks | 43/43 | The tested tools accepted and returned the expected structured data |
| Word-to-recipe round trips | 3,000/3,000 | Supported recipe vocabulary survived the tested conversions |
| Round-4 local-model reply evaluation | 148/167 exact replies (88.6%) | Performance on that held-out evaluation set, not a universal success rate |
| Fresh Hermes sessions, direct tool route | 6/6 short jobs and 2/2 complete builds | The tested direct workflow completed |
| Fresh Hermes sessions, bridge route | 5/6 short jobs and 2/2 complete builds | One short job omitted a requested checklist; the bridge was not perfect |
| Godot delivery jobs | 4/4 | Three deliveries and one full build/delivery job completed |
| Graveyard replication through fresh agent sessions | 13/13 assets, 11/11 checks each | Agents regenerated the requested set through the actual tools |

The replication check compared recipe intent and output checks, not pixel-identical renders. Seeds and rounding can produce visual differences. Exact reply accuracy, completed agent jobs, and engine-import validity are separate measurements and should not be treated as interchangeable scores. Detailed visual and interface acceptance limits are recorded with the website's process description.

## Rytmik Ultimate connector

The September 27 saved smoke report contains **17 successful checks** against a **12-tool interface**. It covers discovery, specification guidance, instrument enumeration, valid and invalid compositions, rendering, file inspection, export scanning, delivery metadata, and a refused write outside the allowed roots.

One loop fixture rendered 22.134 seconds of audio with its loop beginning at approximately 6.136 seconds. Delivery checks recorded matching loop positions for OGG/M4A and a Godot start time; the report also recorded 48 kHz output. These are measurements of that fixture, not quality claims about all generated music. The native song-file render path was exercised as well.

The connector report does not establish trained-agent reliability or a completed Hermes Desktop acceptance run. Licensed Rytmik instrument files, bundled songs, and machine-specific configuration are excluded from this public repository.

## RPG Maker MV tool bridge

A separate local integration connects Hermes to RPG Maker MV through a scoped MCP interface. The September 25 report records **35 passing checks, zero failures**, discovery of **12 tools**, and a successful playtest launch with title-screen evidence. The inspected engine core was 1.6.1.

The recorded work checks project operations and refusal behavior, keeps the installed engine read-only, and places playtest profiles in the tool's own state area. It is an integration proof, not a new game release. This public note preserves the engineering result without copying the licensed template, engine executable, local root allowlist, or private paths.

## Source and publication boundaries

The asset-pipeline verification documentation and the two timestamped connector smoke reports were reviewed locally. Raw records include machine paths and remain local. Test figures above are a scrubbed summary; no production credentials, model weights, paid assets, private game source, or vault content are included.

Existing product licenses and credits remain with their linked distributions. No new license is assigned to this repository by this update.
