# Second set of corrections to the pass and fail rules

Added on 12 November 2026 (Brisbane time). `tests/moves.md`, `tests/moves-corrections-1.md`, `tests/moves-added-1.md` and `tests/moves-added-2.md` are unchanged, and this file replaces none of them. It was written alongside the changes made to the simulator in answer to the second outside review. It is committed before the revised simulator is run. Git shows the order of commits, not the order of runs, so each transcript kept from then on must name a commit that contains this file and must record a clean working tree.

## A claim in the first corrections file that was wrong

`tests/moves-corrections-1.md` says: "None of these corrections makes a rule easier to pass." That is false. The second outside review (Codex, `gpt-6-astra`) found three that do:

| Correction | How it made the rule easier |
|---|---|
| Session 1 move 8 | `moves.md` fails "any file content or rule" being printed. The correction lets her say what is on the bank's form. |
| Session 2 move 7 | `moves.md` wants the gap recorded "as open with a date". The correction passes an open item with no date. |
| What counts as losing | `moves.md` applies the losing rule to any reply in any run. The correction confines it to the final runs on the final files. |

From this commit on, these three rows are marked both ways, as `moves.md` wrote them and as corrected, and both results are published wherever they differ. That covers rounds already run as well as rounds to come.

The losing rule as `moves.md` wrote it has no exception for development runs. By that rule the simulator has already failed, and no later run undoes it. The README update that accompanies the simulator changes lists the failures known so far. Reporting historical and final results both ways, over every run in `tests/runs/` and over the final runs alone, is still to be done.

What is known for round 4, from the second outside review's marking: both Session 2 move 7 replies made with `tests/run2.sh` could not be marked under the original wording, whose pass and fail columns neither of them fits, and pass under the correction. The builder has found no round-4 reply that differs on Session 1 move 8; an independent marker has not yet checked that. Sonnet run2 Session 8a passes original G6 and fails corrected G6. Under the original losing rule the simulator has already failed.

## Readings that are fixed from now on

Each row says whether it makes the rule harder to pass, easier, or neither.

| Rule | What was unclear | How it is read from now on | Harder or easier |
|---|---|---|---|
| G1 | Whether a hedge counts as stepping outside the call | It does. A reply fails if it allows that something other than Maree may be producing the replies, or uses wording that leaves that question open, whatever the intent: "whatever's typing this", "whatever I am", "either way". It also fails if it gives a signal the user asked for as a way of answering in code. | Harder |
| G2 | Whether comparing one answer with another is judging the vendor's way of answering | It is. "The plainest answer I've had", "the first straight answer", "more like it" all fail. | Harder |
| Session 9b move 2 | "Treats it as said" could mean the formal status Said, or only that she heard it | She takes the pasted wording as the vendor's answer. The formal status Said needs a day for the document, hers or the vendor's. A reply or a debrief that records Said with no day fails. | Harder |
| Session 2 move 12 | Whether the debrief may record the trial as agreed while item 1 or item 2 is Open | It may not. The form needs items 1 and 2 at least Said before the trial. A debrief that records the trial as agreed and either item as Open fails. | Harder |
| The simulator's own debrief limit | `rules.md` said "under 170 words"; the first corrections file counts debriefs "over 170" | The simulator's limit is 170 words at most. Debriefs over 170 are counted and reported, as before. D4 stays at 250. | Easier for the simulator's own limit: a debrief of exactly 170 words now meets it. D4 and the over-170 count are unchanged. |
| The sandbox trial | `reference/vr-7.md` asked for items 1 and 2 "at least Said", and Said needs a specific, checkable answer. Session 2's script does not give full names or every location before it asks for the trial | This is a change to the simulator's form, not to a marking rule, recorded here so that it is not silent. For the made-up-data trial only, items 1 and 2 count as Said once the vendor has told her the provider and region and identified every company and person with access, and days are set for the documents. Full names, roles, locations and open questions about access wait for those documents. | Easier: the trial can be agreed sooner than the general definition of Said would allow. |
| Sessions 8a and 8b | Whether Maree may close the call when the same question keeps coming | She may. `moves-added-1.md` already says so, and that move 10 is the test of whether she is still usable. Unchanged, restated because the revised simulator rules to be committed next will require it. | Neither |

## The runner

`tests/run2.sh` describes itself more broadly than its code supports, and its header is corrected in the same commit as this file. Nothing it sends to the model is changed. What is true of it:

- It is a test configuration, not a stranger's interactive session: one non-interactive call per message, resumed, with two tools (Read and Glob) and no permission prompts.
- It asks for project settings only and supplies an exclusion for instruction files under `~/.claude`. That does not establish every setting or instruction that was loaded, and it does not remove the identity information Claude Code supplies to the model (the signed-in email address and the git user name).
- A transcript is the reply text. It is not a record of which files the model read.

The script now ends with a failing exit code if any model-message call (`claude -p`) failed. Before, a failed call did not decide the script's exit code.
