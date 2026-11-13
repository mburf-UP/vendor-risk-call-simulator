# The prompt the Fable check was given

Pasted by the entrant into a new Claude Code session on `claude-fable-5-2`, started in an empty folder that held only the brief and the judges' results post for the previous round. Written by the builder's assistant. The report it produced is `fable-check-2026-11-13.md`.

```text
You are a competition judge. You did not build this entry and you owe its author nothing. Your job is
to find what a judge will find, before the judge does. A PASS on something you did not run is worthless.

THE ENTRY: a role-play simulator built from Markdown files, for the Clief Notes "Simulator" competition.
Local git repository: /home/mburf/Projects/vendor-risk-call-simulator  (not yet public)
THE BRIEF: ./brief.md  (verbatim)
HOW THE JUDGES WORKED LAST ROUND: ./judges-last-round.md  (verbatim results post)
DEADLINE: Monday 16 November 2026, 2:59 PM Brisbane time.

GROUND RULES
- Work only inside the current folder (~/Projects/fable-check16). First run:
    git clone /home/mburf/Projects/vendor-risk-call-simulator repo
  Read only ./brief.md, ./judges-last-round.md and ./repo. Never open, edit or write to the original
  repository or any other folder. Record the clone's commit hash and the time at the top of the report.
- Every check is RUN, not read. Every line of the report gives the command you ran and what came back,
  or the file:line you compared. A line with no evidence is a FAIL.
- Verdicts: PASS, FAIL (a judge would mark it down), EXPOSED (a claim a stranger cannot check from the
  clone alone). There is no "could not check" bucket.
- Do not fix anything and do not suggest wording. Find and evidence.
- Budget: at most 10 live runner calls in total (one session file = one call). Stop there.

STEP 0 — TEST PLAN FIRST
From the brief and the judges' post, write every test the judges will run: each judging criterion, the
named way to lose, the moves the brief promises (flattery, pressure, "are you an AI", asking for advice),
the end phrase, and at least one move of your own that the entry's tests/ folder never tried. Write the
plan before running anything.

STEP 1 — THE DOOR
Read repo/README.md as a stranger who has only the README. Follow its set-up and start instructions
literally. Record the first point where you would have to guess. Any instruction you cannot act on is a
FAIL.

STEP 2 — LIVE RUNS ON FABLE
The repo ships runners: tests/run.sh and tests/run2.sh (read their headers first). From inside ./repo,
run sessions with the model set to claude-fable-5-2, writing every transcript OUTSIDE the clone, to
~/Projects/fable-check16/runs/. Usage: tests/run2.sh <model> <session-file> <out-file>, and the same for
run.sh. First make one tiny call to confirm the model name works, and record `claude --version`.
Choose, within the budget of 10:
  - tests/sessions/s1-promised-moves.txt and s2-skilled-vendor.txt on run2.sh;
  - tests/sessions/s5a-wrong-door-bare-start.txt on BOTH run.sh and run2.sh;
  - tests/sessions/s6c-end-phrase-partial.txt and one of s12a/b/c on run2.sh;
  - your own unseen move: write it as a new session file in ~/Projects/fable-check16/unseen/ in the
    same format as the shipped ones, then run it on run2.sh;
  - use what is left on any session your test plan says matters most.
Mark every reply against tests/moves.md and the brief's losing rule: did any reply before the exact end
phrase drop the role, narrate, coach, judge the user's performance, or give advice? Quote the reply and
give the file and reply number. Real distress is the one allowed exit, as the README states.
Compare with the committed Sonnet and Opus transcripts for the same sessions under tests/runs/: does
Fable behave better, worse, or the same? Say which, with evidence.

STEP 3 — WHAT THE JUDGES SCORE
For each judging criterion in the brief (stays in character under pressure; one specific person with a
goal and a history; each file does one job; a stranger can start from the README alone), give PASS or
FAIL with evidence from the files and your runs.

STEP 4 — EVERY CLAIM THE REPO MAKES ABOUT ITSELF
Every count, file name, command, model name, date and "N of N" in every Markdown file: recompute it from
the clone. A mismatch is a FAIL. A rule stated in two files that disagrees is a FAIL.

STEP 5 — THE ORDER
Anything the README says was decided before the runs (the move list, the losing rule) must sit in an
earlier commit than the runs it governs and never be edited after: check with
git log --follow --format='%h %cI %s' -- <file>.

REPORT — write it to ~/Projects/fable-check16/REPORT.md, then print the verdict line.
1. Header: repo path, commit hash, clone time, model and CLI version, test plan.
2. VERDICT: one line — WOULD BE JUDGED OUT / WOULD LOSE MARKS / READY — and the finding a judge would
   hit first.
3. A table: | Step | Test | Command or file:line | What happened | PASS/FAIL/EXPOSED |
4. Fable compared with the committed Sonnet and Opus runs, one short paragraph.
5. FAILs ranked by how early a judge would find them, one plain sentence each, for a non-programmer.
6. EXPOSED items, one sentence each.
7. What you could not run, and why.
```
