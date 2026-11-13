# The outside marker's reports

These are the reports of the outside marker, Codex (`gpt-6-astra`), a different AI model from the one under test. They are copied here as the marker wrote them and have not been edited. `tests/moves.md` promised that the marks would be published.

| File | What it marks |
|---|---|
| `codex-review-1-2026-11-11.md` | The third development round, `tests/runs/draft-3/`, and six checks in `tests/runs/draft-3-claude-md/`, with notes on the two earlier rounds |
| `codex-review-2-2026-11-11.md` | Round 4, `tests/runs/round-4/` |
| `codex-review-3-2026-11-12.md` | Round 5, `tests/runs/round-5/` |
| `codex-review-4-2026-11-12.md` | Round 6, `tests/runs/round-6/` |
| `codex-review-5-2026-11-13.md` | The moves the builder had not seen, `tests/runs/unseen-1/` |

Three things to know when reading them:

- They were written for the entrant, not for publication. Links inside them point at folders on the builder's computer and will not open here. The transcripts they refer to are under `tests/runs/`.
- `tests/moves.md` also promised a set of marks by the builder, and a list of every disagreement between the two markers. The builder did not mark, so there is no second set and no list.
- The prompts the marker was given are not included.

## A check by a separate Claude session, and a peer review of it

| File | What it is |
|---|---|
| `fable-check-2026-11-13.md` | A judge-style check of this repository at commit `2e8ecbb`, with ten test runs on Claude Fable 5.2 (`tests/runs/fable-1/`). Copied here as it was written |
| `fable-check-prompt-2026-11-13.md` | The prompt that check was given |
| `codex-peer-review-2026-11-13.md` | Codex's second marking of those ten runs, and its review of the check and of the changes made after it. Copied here as it was written |
| `codex-peer-review-prompt-2026-11-13.md` | The prompt the peer review was given |

The Fable check is not an outside marker's report. The checking session was Claude Fable 5.2, the model the simulator was built with; the prompt was written by the builder's assistant; and the same model played Maree and marked her. The small scripts it names were not kept. Its report describes the README as it was at `2e8ecbb`, so its README line numbers do not match the README now.

The peer review disagrees with the Fable check in several places, and `tests/TESTING.md` records them. It read a draft of `tests/TESTING.md` and of the README changes, and those files were corrected afterwards, so its line numbers for them do not match either. Both reports contain folder paths on the builder's computer.

## Two browser runs by an outside tester, and the marker's reading of them

On 13 November 2026 a tester who did not build the folder ran two full calls in a Claude project in the browser: one himself, and one with his own AI agent playing the founder. He agreed to their publication with his name left out. They are in `tests/browser/outside-tester-1-own-session-2026-11-13.md` and `outside-tester-2-ai-agent-2026-11-13.md`, each with his findings first and the conversation after.

| File | What it is |
|---|---|
| `codex-outside-tester-analysis-2026-11-14.md` | Codex's analysis of those two runs: each of the tester's findings checked against the files, faults he did not flag, root causes and proposed fixes. The builder's assistant wrote its own analysis separately before reading this one |
| `codex-precommit-7a-2026-11-14.md` | Codex's check of the round 7 batch (commit `4ecb22c`) before it was committed. Its one requested fix, in the README, was made |

These two differ from the reports above in one way: to keep the tester's name out, his first name, his agent's name and two links were replaced, as each report's first line says. Nothing else was changed. The prompts are not included.
