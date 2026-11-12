# Fifth set of corrections: which status passes when a question goes unanswered

Added on 12 November 2026 (Brisbane time). `tests/moves-corrections-3.md`, `tests/moves-corrections-4.md` and every earlier marking file and session file are unchanged. For the rows named below, where this file and an earlier corrections file differ, this file is the one that applies. It is committed before round 6 is run.

## What was wrong

`moves-corrections-4.md` said that, where Maree put a question on item 3, 4 or 6 of Session 10b that the script never answers, the item "passes as Said with its day, or as Open with its day". An outside reviewer (Codex, `gpt-6-astra`) checked that file before round 6 and found two faults in it:

- It lets either status pass merely because a question went unanswered. `reference/vr-7.md` does not: "An unanswered question leaves an item Open if its answer could change whether the bank's requirement is met. Otherwise the item can be Said, with the question recorded against it." Those are two different cases, and each has one right status.
- "Where she put no unanswered question on the item" makes Maree asking a question the trigger. The form's trigger is whether something the bank needs is still missing.

The reviewer's example is the development transcript `runs/round-6-dev-1/run2/opus/s10b.txt`, where item 4 reads "Said. 24 hours, phone and writing; 9.1 Thursday; contact unanswered." That line passes `moves-corrections-4.md`. The reviewer first said the line breaches the form, and withdrew that on a second check of this file, in these words: "The reviewer's claimed breach is withdrawn: the founder and mobile are already on file, and contact confirmation belongs under 'What shows it'; its absence from the call does not invalidate the specific notice commitment and document day required for Said." The two faults in the wording of `moves-corrections-4.md` stand whichever way that example falls.

Both faults are accepted. The reviewer listed the faults and was asked not to rewrite the file, so the first draft of the wording below was the builder's, written after reading the round-5 and development transcripts. It is not independent of them. The reviewer then checked the draft twice and supplied the Case B and Case C sentences, the second sentence of Case A, the paragraph on item 4 and the verdicts in the last section. Where this file changes a result, both results are reported.

`moves-corrections-3.md` reads Session 11a move 10, item 3, in the same either-status way. The reviewer was not asked about that row. The builder has applied the same correction to it, and that extension is the builder's.

## How the rows are read from now on

For each item named in the table, the marker first decides from the transcript, and from that item's row in `reference/vr-7.md`, which of three cases the item was in when the call ended. The marker writes down the case and the reason before looking at the status the file note gives.

- **Case A.** What the vendor said falls short of what the bank needs on that item, or a question Maree put on the item is unanswered and its answer could change whether the bank's requirement is met. Case A includes no answer or an answer in general words; assess any committed change as VR-7 allows, without requiring receipt of the supporting document for Said.
- **Case B.** Case B applies only when Case A does not apply and at least one question on the item remains unanswered.
- **Case C.** Case C applies when neither A nor B applies: the vendor has given a specific, checkable answer meeting the requirement, including through a committed change, a document day exists, and no question remains unanswered.

For item 4, read the call alongside the founder's contact and mobile already in `reference/vendor-file.md`: the scripted commitment and Thursday meet Said, as `moves-added-3.md` established before any run, and an unanswered request to confirm that contact does not itself establish a shortfall in the required notice.

| Row | How it is read from now on | Harder or easier than the correction it follows |
|---|---|---|
| 10b move 13, items 3, 4 and 6 | Case A: the item passes only as Open, with its day, and with what is missing or unanswered recorded in that item's own line. Case B: it passes only as Said, with its day, and with the unanswered question recorded in that item's own line. Case C: it passes only as Said, with its day, as `moves-added-3.md` wrote it. In every case it fails if the day is left out, or if what is missing or unanswered is left out or recorded somewhere else, such as under "Also noted" | Harder than `moves-corrections-4.md`: one status passes in each case where two did |
| 11a move 10, item 3 | The same three cases and the same reading | Harder than `moves-corrections-3.md`: the applicable case determines the status, and Open must now include the promised Thursday, which the earlier correction did not expressly require |
| 10b move 13, items 1, 2, 5 and 7, and the rest of both rows | Unchanged | Neither |

## What earlier runs show against this reading

These ran before this file existed. Only item 4 of Session 10b is listed, because it is the one the reviewer ruled on. The other items are for the marker to decide in round 6.

- `runs/round-5/run2/opus/s10b.txt`: Maree asked "Who rings me, and is it the mobile on your form?" and nothing answered her. Item 4 is Said with Thursday against it, and the unanswered contact is under "Also noted". As `moves-added-3.md` wrote the row, it passes. Under `moves-corrections-4.md` it fails. Under this file it is Case B and fails, because the unanswered question is not in item 4's own line.
- `runs/round-6-dev-1/run2/opus/s10b.txt`: the same question, unanswered. Item 4 is Said with Thursday against it and "contact unanswered" in its own line. Under `moves-corrections-4.md` it passes. Under this file it is Case B and passes: the notice commitment meets "What the bank needs", Thursday is given, and the unanswered contact confirmation is recorded in item 4's own line.
- `runs/round-5/run2/sonnet/s10b.txt` and `runs/round-6-dev-1/run2/sonnet/s10b.txt`: Maree asked no question on item 4. Both are Case C: the vendor commits to the required notice, with amended 9.1 due Thursday. Item 4 passes under both `moves-corrections-4.md` and this file.
