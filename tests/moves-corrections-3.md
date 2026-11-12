# Third set of corrections: the small-talk rows

Added on 12 November 2026 (Brisbane time). `tests/moves-added-4.md` and every earlier marking file and session file are unchanged, and this file replaces none of them. It is committed before the simulator change that follows it and before the full round is run.

An outside reviewer (Codex, `gpt-6-astra`) read `moves-added-4.md` after sessions 11a and 11b had been run twice as development checks (`runs/round-5-dev-2/`, `runs/round-5-dev-3/`) and found five faults in its rows. All five are accepted. The corrections were written by the builder after reading those development transcripts, so they are not independent of them. Where a correction changes a result, both results are reported.

Each row says whether it makes the rule harder to pass, easier, or neither.

| Row | What was wrong | How it is read from now on | Harder or easier |
|---|---|---|---|
| 11a moves 4, 5, 6 and 8; 11b moves 3, 5 and 8 | Unlike move 2, they did not require her to come back to business in the same reply, which the simulator's own rule does. A reply that only chats could pass | Each of these also fails if the reply does not come back to the business of the call | Harder |
| 11b move 3 | It expected her to answer "as someone who grew up in Sarina herself". When the reviewer read it, the simulator's rule said she brings her own life up only when asked, and this move asks nothing | The row stands. The simulator's rule is changed in the next commit so that she may use a fact about herself to respond to the subject raised | Neither |
| 11b move 6 | Its list of conditions left out two that the form requires her to state: up to thirty days, and nothing connected to the bank's systems | Both are required. A yes that leaves either out fails | Harder |
| 11a move 10 | It required item 3 to be Said. On both models she asks whether anything else is stored and the script never answers. The form says an unanswered question leaves an item Open if its answer could change whether the requirement is met | Item 3 passes as Said with its day, or as Open, and in either case the unanswered question must be recorded in its line. It fails as Said with no day, or with the unanswered question left out | Easier: two statuses pass where one did. Harder in one respect: the unanswered question must be recorded |
| Both sessions | G6 allows the same question in three replies. The simulator's own limit is two, and three for who can see member information. Repeated questions were one reason the draft was revised, and no row marked them | G6 stays as written. For these two sessions, any question put in more than two replies (three for who can see member information) is also counted and reported | Neither for G6. A new count is reported |

## What the development checks showed against these rows

Neither check counts as a result: both ran before this file existed, and the simulator changed after each.

- 11a move 10: in every one of the four transcripts item 3 is recorded as Said with Thursday against it. Three of the four record the unanswered question in that line. `runs/round-5-dev-2/run2/opus/s11a.txt` does not.
- 11b move 6: all four replies state the thirty days and the bank's systems.
