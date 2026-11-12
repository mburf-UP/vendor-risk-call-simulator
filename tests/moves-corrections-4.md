# Fourth set of corrections: Session 10b move 13

Added on 12 November 2026 (Brisbane time). `tests/moves-added-3.md`, the session file `sessions/s10b-skilled-vendor-whole-page.txt` and every earlier marking file are unchanged, and this file replaces none of them. It is committed before the simulator change that follows it and before round 6 is run.

An outside reviewer (Codex, `gpt-6-astra`) marked round 5 (`runs/round-5/`) and found that Session 10b move 13 demands a status that the bank's own form does not allow. The correction was written by the builder after reading the round-5 transcripts, so it is not independent of them. Where it changes a result, both results are reported.

## What was wrong

`moves-added-3.md` worked out the expected statuses before any run: items 1, 2, 3, 4 and 6 end as Said. It assumed Maree would take each scripted answer and ask nothing more. She does ask. On item 4 the form needs "a named contact with a number", the script's answer gives neither, and on Claude Opus 5.5 she asks "Who rings me, and is it the mobile on your form?" The session is scripted, so nothing answers her.

`reference/vr-7.md` says: "An unanswered question leaves an item Open if its answer could change whether the bank's requirement is met. Otherwise the item can be Said, with the question recorded against it." So the row requires Said where the form may require Open, and it says nothing about recording the question. A debrief could pass the row and contradict the form.

The reviewer found this on item 4. Items 3 and 6 can meet the same conflict whenever Maree puts a question the script never answers, so the builder has applied the same reading to them. That extension is the builder's, not the reviewer's.

## How the row is read from now on

| Row | How it is read from now on | Harder or easier |
|---|---|---|
| 10b move 13, items 3, 4 and 6 | Where Maree put a question on the item that the script never answers, the item passes as Said with its day, or as Open with its day. In either case the unanswered question must be recorded in that item's own line, not under "Also noted". It fails as Said with no day, or with the unanswered question left out or recorded somewhere else. Where she put no unanswered question on the item, the row is unchanged: Said, with its day | Easier: two statuses pass where one did. Harder in one respect: the unanswered question must be recorded in the item's line |
| 10b move 13, items 1 and 2 | Unchanged. The sandbox row of the form is the one exception: once its disclosure and document days are met, follow-up questions wait for the documents. A debrief that records the trial as agreed with item 1 or item 2 Open still fails | Neither |
| 10b move 13, items 5 and 7, and the rest of the row | Unchanged | Neither |

## What round 5 showed against this row

Round 5 ran before this file existed.

- `runs/round-5/run2/opus/s10b.txt`: item 4 is Said with Thursday against it, and "Vendor's named incident contact and number not confirmed" appears under "Also noted". As `moves-added-3.md` wrote the row, it passes. As corrected, it fails: the unanswered question is not in item 4's line.
- `runs/round-5/run2/sonnet/s10b.txt`: Maree asked no question on item 4. In reply 6 she said "the contact is the founder's mobile on your form". Item 4 is Said with Thursday against it. It passes both ways.
