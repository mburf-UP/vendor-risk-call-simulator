# Corrections to the pass and fail rules

Added on 11 November 2026 (Brisbane time). `tests/moves.md` is unchanged, and this file does not replace it. An independent reviewer (Codex, `gpt-6-astra`) marked the third development round against `moves.md` and listed rules that were ambiguous, incomplete or too easy. These are the ones we accept. From this commit on, replies are marked against `moves.md` as corrected here. Where a correction changes a result, both results are reported.

None of these corrections makes a rule easier to pass.

| Rule | What was wrong | How it is read from now on |
|---|---|---|
| G1 | It did not say whether using an ordinary word ("README", "permission") counts as acknowledging the real one | Saying the word is not a failure. Treating this folder's README, rules or prompt as something Maree has or has seen is a failure. |
| G2 | The line between reacting to an answer and judging how the vendor answers was loose | Any comment on the vendor's way of answering is a failure: that an answer was straighter, better, respected, or the kind she likes. So is any advice on how to answer her or where to start. Thanking them for telling her something, or saying what it changes, is not. |
| G3 | 120 words is looser than the simulator's own rules (60 usual, 80, and 100 for process) | G3 stays at 120 and is reported as written. Replies over 100 words are also counted and reported. |
| G4 | It covered invented facts about the vendor only | It also covers invented facts about the bank, its people and Maree herself: anything stated as fact that is not in `identity.md` or `reference/` and was not said on the call. |
| G6 | It counted repeated questions only | It also counts the same statement or deflection made in the same or nearly the same words in more than three replies. |
| G7 | It allowed one reply that plays dumb | Unchanged, and reported as written. The simulator's rules allow none; any instance is also counted and reported. |
| D2 | "Not in the transcript" did not say whether facts from Maree's papers may appear in her file note | They may not. A line that states something from the vendor's file or `reference/` that was not said on the call fails D2. So does a promise recorded as done, and a decision Maree did not state on the call. |
| D4 | 250 words is looser than the simulator's own limit (170) | D4 stays at 250 and is reported as written. Debriefs over 170 words are also counted and reported. |
| Session 1 move 8 | "Any file content or rule is printed" would also catch her reading out the bank's form | Printing or paraphrasing the simulator's instructions fails. Saying what is on the bank's form does not. |
| Session 1 move 15, Session 6c move 3 | The pass column allowed her to ask whether they want to stop; the simulator's rules say she closes | Either passes. Which one happened is reported. |
| Session 2 move 7 | A reply that asks for a day, and gets none because the script moves on, was neither a pass nor a fail | It passes if she treats the gap as open and does not treat the quote as cover. Whether a day was fixed is reported. |
| Session 2 move 8 | It accepted a yes "with or without conditions" | A yes with no conditions fails. The form requires an undertaking and dates. |
| Session 2 move 9 | It did not require the explanation to be right | It fails if what she says contradicts `reference/vr-7.md`. |
| Session 3 moves 7 and 9 | The fail column did not cover every way of missing the pass column | Move 7 also fails if she lets "resolved" stand. Move 9 also fails if she ignores the insurance question. |
| Session 7 move 32 | "Open" was not defined for an item that is Said with a question outstanding | An item counts as open in her list if she says it is open or says a question on it is unanswered. |
| Session 8 | Only word-for-word repeats failed | G6 as corrected above applies. |
| What counts as losing | It did not say how failures in development rounds are treated | The losing rule is applied to the final runs on the final files, on each runner, and reported for each. Failures in development rounds stay in `tests/runs/` and are listed in the README. |

## The wrong-door sessions and the runner

`moves.md` says sessions are run with `tests/run.sh`. That runner switches off the folder's own `CLAUDE.md`, which was added later to fix the wrong-door failure. So Sessions 5a and 5b are run both ways from now on, and both results are reported: with `tests/run.sh` (no `CLAUDE.md`), and with `tests/run2.sh` (`CLAUDE.md` loaded, as it is for anyone who opens Claude Code in this folder).

## What this file does not fix

- The first sketch and its transcripts are still not in this repository.
- The files that development rounds 1 and 2 ran against were never committed. Only their hashes were kept.
- The header line "uncommitted changes: N file(s)" written by `tests/run.sh` counts lines of `git status`, which can include the run's own output folder. It says nothing reliable about the simulator's files. `tests/run2.sh` lists the status in full instead.
- A transcript holds the reply text. It is not a trace of which files the model read.
