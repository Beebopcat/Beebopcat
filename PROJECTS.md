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
