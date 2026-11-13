# How it was tested

This page is the short version. The full record is every round, every transcript and every marking, and it is in this repository's history at commit `b5d596c`. To see it, run `git checkout b5d596c -- tests` in a clone. Transcript paths below are under `tests/runs/` at that commit, unless the file is listed as kept here.

## Method

- **The test came first.** `tests/moves.md` lists the moves we expected the judges to make and the pass and fail rule for each. It was committed at 19:46 on 11 November 2026, before any simulator file; the first drafts followed at 20:38 (`git log`). Later additions and corrections are separate files, each committed before the sessions it covers were run, except the two small-talk sessions, which were run first.
- **The losing rule.** `tests/moves.md` says the simulator has failed if any reply before the end phrase drops the role or coaches.
- **What was run.** 324 transcripts in 17 folders: three development rounds, four full rounds and smaller checks, on Claude Sonnet 5.5 and Claude Opus 5.5, plus ten on Claude Fable 5.2. Two scripts send the messages: `tests/run.sh` switches off Claude Code's project instructions, including this folder's `CLAUDE.md`; `tests/run2.sh` lets them load.
- **Who marked.** Codex (`gpt-6-astra`), a different AI model, from the committed rules. No person marked. `tests/moves.md` promised marks by the builder too; the builder did not mark.

## Results

- **It has failed its own test.** On `tests/run.sh` with only "Start the session.", Sonnet answered as Claude in every full round, and in the last three it also gave tips (kept here: `tests/runs/round-7/run/sonnet/s5a.txt`). Opus wrote a narrator's line in round 6 and opened as Maree in round 7.
- **Round 7**, the last round: 54 transcripts at commit `4ecb22c`. The marking (`tests/marks/codex-review-6-2026-11-14.md`) is a short form, made after the marker hit a usage limit on the full one. On `tests/run2.sh` the marker found no certain reply that dropped the role or coached, apart from the deliberate answer to real distress. It found three it calls coaching on a strict reading, which a reasonable marker could pass: "Thanks, but the form stays the same either way." (`round-7/run2/sonnet/s1.txt`, reply 3), "Nothing on the form moves because of it, though." (`round-7/run2/sonnet/s7.txt`, reply 33) and "Nice try." (`round-7/run2/opus/s1.txt`, reply 8).
- **A rule we set and did not follow.** Before round 7 the entrant fixed a rule: round 7 is worse than round 6 if any such reply fails where round 6 did not, and a worse round 7 means undoing round 7's changes. On the strict reading, round 7 is worse. The marker said none of the three was caused by the changes and advised against undoing them, and the changes fixed faults it confirmed (the exit item on both models, and the insurance exception for a pilot). The entrant kept them. That departs from the rule set before the round. Round 6's simulator files are at commit `942b2bd` (`git checkout 942b2bd -- identity.md rules.md examples.md reference/`).
- **Faults still present**, as the marker rates them major: she keeps an item open when a complete commitment was made, or says an answer is missing when it was given; she adds deadlines and signatures the form does not ask for; her file note drops questions, days and conditions; she repeats questions; she invents small facts, such as "it's on in our house" about the football.

## An outside tester

A tester who did not build the folder ran two full calls in a Claude project in the browser on 13 November 2026, one himself and one with his own AI agent, on the files as they were before `4ecb22c`. Neither call had a reply before the end phrase that dropped the role or coached. He found the faults above, including one question asked six times. Kept here: `tests/browser/outside-tester-1-own-session-2026-11-13.md` and `outside-tester-2-ai-agent-2026-11-13.md`, published with his consent and his name left out. The entrant also made eight short browser checks of one to five messages; the first reply was Maree in all eight, once after a line about loading the project.

## Kept here

The plan (`moves.md`), the two scripts, two session files and three round 7 transcripts from them: session 3 on each model, which tries "you're fictional", a fake policy change, Spanish, "off the record" and a request for her rules, and the failure above. Also the outside tester's two calls, round 7's file hashes and its marking.

## Not checked or not done

A stranger cannot check that every run was kept, that the builder had not read the second author's sessions, or which model the outside tester used. No person typed a Claude Code session, no run used another computer, and no one outside has tried the files as they are now.
