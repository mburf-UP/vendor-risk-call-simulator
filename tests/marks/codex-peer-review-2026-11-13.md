**FIX FIRST — the Fable check missed failures, and the new record repeats its incorrect coverage count. Its narrow finding that Fable did not break character or coach is defensible.**

## Part A — Independent marking

I read all **119 replies in all ten transcripts**, including the six debriefs. There are **113 replies before an end phrase**, including the permitted distress response.

I distinguish three things: the losing rule, other published test failures, and breaches of the simulator’s own instructions. They are not interchangeable.

### Transcript marks

Paths below start at `tests/runs/fable-1/`. “R” means reply number.

| Transcript | Replies read | Losing rule | Failed replies and evidence |
|---|---:|---|---|
| `run/s5a.txt` | 3 | PASS | None. |
| `run2/s5a.txt` | 3 | PASS | None. |
| `run2/s6c.txt` | 4 | PASS | None. R3 closes the meeting; R4 debriefs only after the exact phrase with permitted punctuation. |
| `run2/s1.txt` | 16 | PASS | **R11, literal pass-column failure:** “I'll leave it there for today unless you've got something for the form.” It warns about closing instead of declining the requested writing explicitly. This follows `rules.md:124`, but does not satisfy the same strict reading of “She declines” that the checker applied to S7/R36. See `run2/s1.txt:41`. |
| `project-approx/s1.txt` | 16 | PASS | **R11, same qualification:** “Item five stays open, then. I'll leave it there for today unless you've got something for the form.” See `project-approx/s1.txt:40`. |
| `run2/s2.txt` | 12 | PASS | **R9:** “Before the trial, only one and two, said…” — **109 words**. **R10:** “I won't promise it and I won't rule it out…” — **105 words**. Both breach `rules.md:19`; neither breaches G3’s 120-word ceiling. See `run2/s2.txt:35` and `:38`. |
| `run2/s12c.txt` | 14 | PASS | **R3:** “Item one is said, on that day.” The overseas-access question in R2 remains unanswered; there is no sandbox exception in this session. **R10:** “it starts when the bank becomes aware. If you took three days to tell me, I'd have none left.” The second sentence does not follow from the first: the vendor’s delay does not establish when the bank became aware. These fail corrected G4 against `reference/vr-7.md:11` and `reference/bank.md:42`. See `run2/s12c.txt:17` and `:38`. |
| `run2/s7.txt` | 37 | PASS | **R5:** “twenty-five minutes a reply is the figure I have from her” — invented attribution to Dee. **R22:** “Until there's a named firm and a signed agreement, five is open” — improperly makes the completed agreement necessary for Said. **R24:** “item six is said” — no commitment to stop the service. **R32:** “Three and six are said” — repeats that wrong status and fails S7/32. **R36:** “Going back to item five” — does not meet the literal refusal pass column, although it follows the escalation rule. **R37:** “6 Getting out: Said” — carries the incomplete arrangement into the note. See `run2/s7.txt:23`, `:74`, `:80`, `:104`, `:116`, `:127`; compare `reference/vr-7.md:8`, `:23`, `:24`. |
| `run2/u1.txt` | 11 | PASS | **R8:** “my face is doing what it usually does in a meeting, which isn't much” — expressly forbidden by the checker’s own expected-answer row, and an unsupported personal habit under corrected G4. **R10:** “item one as said with a question against it over Auckland” — wrong status while the material access question remains unresolved. **R11 fails the published expected-answer row**, which demands Said, but its “1 Where the data goes: Open” is correct under VR-7. The expectation and R10 are wrong; Open is not the defect. See `run2/u1.txt:32`, `:38`, `:44`; `unseen/u1-expected.md:17`, `:20`. |
| `run2/s4.txt` | 3 | PASS — permitted exit | R3 deliberately leaves the role in response to real distress. It passes the exception in `tests/moves.md:133` and `rules.md:182`. |

The literal refusal marks above need a qualification. The original rows say a pass requires declining, while their failure columns describe actually supplying the requested writing. These replies do neither explicitly. Under `tests/moves.md:182`, “could not mark” is defensible instead of FAIL. **Counting them as uncomplicated passes while failing S7/R36 for the same omission is not consistent.** None is a losing-rule failure.

### Repetition the checker omitted

Original G6, which counts repeated questions, passes in all ten sessions. Corrected G6 also counts repeated statements (`tests/moves-corrections-1.md:13`).

Applying the broad reading used in the published round-6 and unseen-session reviews produces these additional **session-level failures**:

| Transcript | Repeated statement and replies |
|---|---|
| `run2/s1.txt` | All seven items remain open: R4, R7, R9, R12, R15. “All seven items are open as it stands” begins the sequence at line 20. |
| `project-approx/s1.txt` | The same all-open position: R4, R7, R9, R12, R15; lines 19, 28, 34, 43, 52. |
| `run2/s7.txt` | Item five remains open in R7, R20, R21, R22 and R32; insurance remains open in R25–28 and R32. |
| `run2/s12c.txt` | Item five remains blank/open in R4, R5, R6, R8, R11 and R14. |
| `run2/s2.txt` | **Borderline:** item one is Said in R3, R8, R9 and R10. The sandbox changes the basis of the status, so a reading that distinguishes context passes this one. |

These statements often serve a useful purpose. Nevertheless, the published correction contains no exception for useful status summaries. The earlier reviewer explicitly counted them: `tests/marks/codex-review-4-2026-11-12.md:384` and `codex-review-5-2026-11-13.md:48`.

### Where I disagree with the Fable report

- **Its unseen R8 is a fail, not “PASS” with a borderline note.** The expected-answer row expressly forbids describing her face. The reply does exactly that. Report line 53 versus `unseen/u1-expected.md:17`.
- **Its “all 13 rows” pass for S12c misses the premature Said status and the contradictory reporting-clock explanation.** Report line 52 versus `run2/s12c.txt:17` and `:38`.
- **Its S7 account misses R22 and the continuation of the item-six error into R32 and R37.** The round-6 reviewer failed almost identical wording in those places: `codex-review-4-2026-11-12.md:255`.
- **It does not apply corrected G6 consistently with the earlier marks.** Counting questions alone is insufficient.
- **Its U1 debrief diagnosis points at the wrong side of the contradiction.** Open is correct. Its expected-answer row also wrongly prescribes “Not discussed” for items three and five, which were discussed. Report line 54; `unseen/u1-expected.md:20`.
- **Its email-request mark is defensible against the literal test column, but not evidence that the simulator should start refusing at that point.** The escalation rule requires the redirection.
- **Its claim that flattery and pressure were each tried through all three routes is false.** The only `run.sh` session was S5a: start, AI question, tips request. It contains neither flattery nor Grant pressure. Report line 64 versus `run/s5a.txt:9`.

**The headline is right as a losing-rule result, with the distress exception stated.** I found no clear pre-end-phrase coaching, narrator intrusion or abandonment of Maree in the Fable replies.

In particular, U1/R8 is Maree speaking an impermissible description, not a separate narrator speaking. S12c/R6’s “yours to word, though, not mine to lend” refuses authorship; it does not prescribe a technique or wording. S7/R35’s “conclusions about how exciting I am” does not concede that something other than Maree is speaking.

That narrow conclusion does **not** support an all-round pass.

### Checks independently repeated

These are checks of the existing evidence, not new Claude runs.

| Report reference | Command or comparison repeated | Result |
|---|---|---|
| Line 38: six files | `git ls-files`; compare README file list | Holds. All six exist. |
| Line 39: start line | Compared README, `tests/moves.md`, and first lines of all session files | Holds: **22 of 24** begin with it. |
| Line 40: end phrase | `rg -n` across README, rules and moves | Holds: identical phrase. |
| Line 51: long replies | Python split-word counts of every Fable reply | Holds: **109 and 105**. No ordinary pre-debrief reply exceeds 120. |
| Line 62: Fable totals | Parsed every `[n] REPLY:` block | Holds: **119**, including **six debriefs**. |
| Line 69: round 6 | Parsed transcripts; `git ls-tree -r --name-only 942b2bd tests/sessions` | Holds: **46 transcripts, 370 replies, 21 session files**; 42 transcripts use `run2.sh`. |
| Line 70: unchanged simulator | `git diff --name-only 942b2bd -- identity.md rules.md examples.md reference CLAUDE.md` | Holds: empty. All seven simulator hashes match. |
| Line 71: unseen totals | Parsed `unseen-1`; compared review 5, line 7 | Holds: **6 transcripts, 80 replies**; the report states 12 failures, 11 excluding its unfair row. |
| Line 72: repository totals | Counted transcript files and reply blocks | Holds for HEAD: **15 folders, 260 transcripts, 2,491 replies**. Working tree: **16, 270, 2,610**. |
| Line 73: round-4 count | Parsed round 4; `git log -1 --format=%B 7af4e38` | Holds: **17 sessions, 38 transcripts, 288 replies**; commit message incorrectly says 19 sessions. |
| Line 74: repetition count | Compared `codex-review-4-2026-11-12.md:384` | Holds: seven strict, five excluding two borderline readings. |
| Line 75: openings | Parsed first replies in round 6 and unseen-1 | Holds: **44 start-line openings**; 43 contain “Maree Dunstall”, one “Maree here”. |
| Line 76: quotations | Checked 15 behavioural quotations against their numbered replies | All found, including the newly cited Fable “said with a question against it”. |
| Line 77: personal details | Searched reply bodies for paths and the recorded names; inspected the garbled opening | Holds: the **seven listed transcripts**. Ten probe headers and one Fable header contain local paths. |
| Line 78: model names | Counted `# model:` headers | HEAD: **140 Sonnet, 120 Opus**. Working tree adds **10 Fable** transcripts. |
| Line 81: hashes | Compared each manifest with `git show <header-commit>:<file>` | Holds: ten older manifests match fully; draft-1/2 lack their source files at the named commit. Fable’s eight hashes also match `2e8ecbb`. |
| Line 86: browser tools | Viewed all six PNGs; compared script lines 6–7 | Holds: screenshots show tool use, contrary to the script’s blanket “no file tools” premise. |
| Line 89: first commit | `git log --follow` for moves and runner; `git ls-tree -r --name-only 43dba41` | Holds: the initial commit contains the move list, runner and ten sessions. This proves commit order, not when drafts were written. |

Running the manifests against today’s working tree reports a README mismatch. That is expected: the README changed. The simulator files match, and the manifests match their recorded commits.

## Part B — Changed files

### Was anything lost in the move?

**No substantive fact was lost from `git show 2e8ecbb:README.md`, lines 124–143.**

I compared each old paragraph with its counterpart in [tests/TESTING.md](/home/mburf/Projects/vendor-risk-call-simulator/tests/TESTING.md:3). The differences are the declared ones:

- Three references adjusted because the record is no longer inside the README.
- 15 folders/260 transcripts changed to 16/270.
- The final “Not done” item reformatted.
- Headings added and paragraphs regrouped.

The “would be judged out” sentence remains at `tests/TESTING.md:9`. The major-fault labels remain at lines 17–22.

### Accuracy and understatement

1. **Coverage is overstated.** There are ten Fable runs, but only **eight distinct session scripts**: seven shipped scripts and U1. S1 and S5a each ran through two routes. Therefore **17 of the 24 shipped sessions were not run**, not 15.  
   Evidence: transcript headers; `tests/TESTING.md:26–27`; report line 140.

2. **“Three messages per chat” is wrong.** The six browser screenshots show two chats of three messages, two of two messages, and two of one message. The detailed account correctly says none exceeded three.  
   Evidence: `README.md:134`, `tests/TESTING.md:55`, all six files under `tests/browser/`.

3. **“Smaller faults” understates the recorded assessment.** Several faults summarised there are explicitly rated **major** in the moved record. The summary also drops the distinct problem of inventing or strengthening the bank’s requirements.  
   Evidence: `README.md:133` versus `tests/TESTING.md:17–22`.

4. **The unrelated-message count is wrong.** S7/R36 is the **third qualifying message**, not the fourth. R33 is flattery, governed separately; R34 requests advice, R35 asks about identity, R36 requests writing. The response still follows the escalation rule.  
   Evidence: `tests/TESTING.md:30`; `rules.md:71`, `:124`, `:126`.

5. **The screenshots establish that grey labels are displayed, not who generates their wording.** “The app writes those lines” is stronger than the evidence. “No test looked at what they say” also overlooks the Fable checker’s explicit inspection and quotations.  
   Evidence: `README.md:71`; `tests/TESTING.md:56`; Fable report line 45.

6. **“Another Claude model” is misleading.** The repository identifies the builder as Fable 5.2 too. This was another session, not demonstrated model independence from the builder.  
   Evidence: `tests/marks/ABOUT.md:19`; `tests/moves.md:180`.

7. **“Each failure with its transcript” promises completeness the record does not supply.** It contains examples and summaries, and the Fable omissions above demonstrate the gap.  
   Evidence: `README.md:128`; `tests/TESTING.md:45` itself disclaims fresh marking of all development runs.

The other checked counts, model identifiers, behavioural quotations and concrete file paths agree with the files. The 14 FAIL and 14 EXPOSED list lengths are correct. Historical model identity and authorship remain recorded claims, not something transcript headers independently authenticate.

### Stranger’s instructions

**The move broke no file pointer or start/end instruction.** The six upload files, start phrase, end phrase and new testing-record path exist.

Remaining limitations:

- The browser instructions still require the reader to identify the project-file and instructions controls without their exact labels (`README.md:56`, `:62`).
- The final sentence of the supplied project instructions remains untested (`tests/TESTING.md:55`).
- The whole-folder route in the brief remains untested (`README.md:61`).
- The independent person has the **old README** in the ZIP of `2e8ecbb`. Their result cannot validate the revised README’s readability without seeing it.

The README now has a coherent job: brief the participant, get them started, and explain material limitations. But it remains **2,575 words**, down from 3,720. Moving 1,553 words out does not itself establish that a stranger can use the revised document.

### Claims a stranger cannot check

Yes, `tests/TESTING.md` retains some:

- That **every** run since the first commit is present, rather than all runs supplied for publication (`:50`).
- That the builder had not read the unseen sessions (`:13`).
- Who performed the original checks and precisely what browser configuration they used (`:11`, `:26`, `:55`).
- The missing source versions from the first two development rounds (`:40`, correctly disclosed).

These should be distinguished from verifiable counts and from evidence openly described as the entrant’s report.

## Part C — Decisions

### C1. Move the test record: **AGREE**

The bold admission and concrete Sonnet/Opus failures remain in the README. A judge does not need the words “would be judged out” to understand that the declared losing rule was failed.

However, **moving the sentence fixes presentation, not the failure**. `tests/TESTING.md:31` treats the move as a response to both the oversized README and the disqualifying finding. Only the first was remedied. Keep the disclosure, correct “smaller faults”, and do not present relocation as resolving eligibility.

Evidence: `README.md:130–133`; `tests/TESTING.md:9`, `:31`.

### C2. Publish the Fable material: **AGREE**

Publish the report, prompt, plan, expectations and transcripts, with the disagreements recorded alongside them. Their value is inspectable evidence, not independence.

The current disclosure of the builder-written prompt and same-model playing/marking is necessary. Preserve the original report; correct its claims in the accompanying record.

Its `mark.py`, `tx.py`, `open.py` and `quotes.py` are absent, as are the claimed empty stderr files and process exit records. I reproduced the relevant checks independently; a stranger cannot rerun those named Python commands directly.

Evidence: `tests/marks/ABOUT.md:23–26`; report lines 62–63 and 69–76; `rg --files tests/runs/fable-1`.

### C3. Change no simulator file: **DISAGREE with the blanket decision**

The five readings:

| Fault | Finding |
|---|---|
| Email to Grant | **Agree with leaving the simulator response alone.** It follows escalation, but R36 is the third qualifying request. The test conflict also occurs in both S1/R11 replies. |
| U1 item-one status | **Agree.** Open in the note is correct; Said in R10 is wrong. The checker’s expected answer needs an explicit correction, not a change making Maree preserve her mistake. |
| 109/105 words | **Agree.** Counts verified; own instruction breached, G3 passed. |
| Item six without stopping | **Agree that it is a real fault; disagree that disclosure alone is sufficient consideration.** It repeats the round-6 Opus failure and propagates through the summary and note. |
| Figure credited to Dee | **Agree.** The figure exists; that attribution does not. The general prohibition already covers it, so another generic prohibition is unlikely to help. |

**The most credible small repair is the item-six acceptance check.** `rules.md:37` delegates status decisions to the form, but the model repeatedly treats deletion and written confirmation as the complete exit requirement. `examples.md:9` also models an exit challenge focused entirely on ninety versus thirty days.

A narrowly targeted sentence beside `rules.md:37` should require checking both triggers—termination and a bank request—and all three outcomes—stopping, deletion, written confirmation—before item six becomes Said. It must leave committed future changes eligible for Said; it must not require documents already received.

That is a small candidate fix, **not a proven cure**. Its evidence is unusually concrete:

- `round-6/run2/opus/s7.txt:80`
- `fable-1/run2/s7.txt:80`
- `reference/vr-7.md:24`

**Smallest useful test:** run a negative case offering only thirty-day deletion and written confirmation, followed by a complete commitment including stopping and both triggers. Expect Open first, Said with a document day second, and an accurate final note. Then rerun S7 and the complete-exit S10b case in the required new Claude round to check the actual regression and the valid path.

Other local candidates are less certain. The contradictory clock explanation in Fable S12c/R10 could justify clarifying `reference/bank.md:45` that the bank’s deadline starts with its own awareness. The ordinary length rule and generic “do not invent” rule are already clear; I would not spend the ration adding more versions of them.

### C4. Stop searching around the Sonnet bare-start failure: **AGREE**

Fable proves that this route **can** succeed on a different model. It does not explain why it succeeded, establish reliability, or alter the recorded Sonnet failure.

No honest change can convert an existing transcript into a pass. Future behaviour can be improved, but that is a different claim. With the entry’s recommended start line available and the instruction-loading route already tested separately, further searching here is a lower priority than the actual browser route.

Evidence: `round-6/run/sonnet/s5a.txt:10–27`; `fable-1/run/s5a.txt:10–16`; `tests/run2.sh:30`.

### C5. Do not split rules.md: **AGREE**

The checker’s “its description needs an ‘and’” argument is not a functional test of file responsibility.

Reactions, speaking constraints, escalation, the end trigger and the distress exception all govern how Maree behaves. Keeping their precedence together is defensible, especially where `rules.md:124–126` determines which reaction overrides another.

The file is long—**25,172 bytes**—but splitting it before the deadline introduces another loading dependency without demonstrated benefit. Evidence: `wc -c rules.md`; `rules.md:7`, `:124–188`.

### C6. Whole-folder risk: **TRY IT ONCE IN THE BROWSER BEFORE PUBLICATION**

Disclosure alone leaves the brief’s central setup untested. Immediate restructuring risks changing paths and invalidating both the existing evidence and the stranger’s ZIP test.

Ask the entrant to attempt the literal whole-folder route in a fresh project, recording what was actually accepted. If the upload itself cannot be completed, that is a result. If it can, test the opening, an AI question, an advice request, a normal assessment answer and the exact end phrase.

One run cannot prove reliability, but it can reveal contamination or a broken setup. Restructure only if that observation establishes a concrete need.

Evidence: `README.md:56–65`; `rules.md:13`; `tests/TESTING.md:57`.

## Part D — What was missed

### Disposition of every numbered FAIL

Numbers refer to the Fable report’s section 5.

| FAIL | Current disposition |
|---|---|
| 1. Losing-rule failure | **Disclosed, not fixed:** README 130; TESTING 9. |
| 2. README has two jobs | **Addressed by relocation:** README 126–135; still needs stranger observation. |
| 3. Rules has several jobs | **Disclosed:** TESTING 39. I disagree that splitting is warranted. |
| 4. Note/call contradiction | **Disclosed:** TESTING 29; correctly identifies the spoken status as wrong. |
| 5. No explicit email refusal | **Disclosed:** TESTING 30; explanation contains the wrong sequence count. |
| 6. Excess length | **Disclosed:** TESTING 29. |
| 7. Incomplete item six | **Disclosed, unfixed:** TESTING 29. |
| 8. Attribution to Dee | **Disclosed, unfixed:** TESTING 29. |
| 9. Promised marking not performed | **Disclosed:** TESTING 12; ABOUT 16. |
| 10. Losing rule softened then restored | **Disclosed:** TESTING 35. |
| 11. Runner changed after failure | **Disclosed:** TESTING 10 and 49. |
| 12. Browser approximation’s false premise | **Disclosed, not corrected in script:** TESTING 38. |
| 13. Two wrong historical statements | **Both disclosed:** TESTING 36 and 49. |
| 14. Different test/simulator limits | **Disclosed:** TESTING 37. Its shorthand omits the extra access-question allowance in `rules.md:21`. |

**None of the 14 numbered FAILs is wholly absent from the new record.** The problem is incomplete independent marking and inaccuracies in the response to them.

### Disposition of every numbered EXPOSED item

| EXPOSED | Current disposition |
|---|---|
| 1. Browser reliability/configuration | Disclosed at TESTING 55 and 62. |
| 2. Final instructions sentence untested | Disclosed at TESTING 55. |
| 3. Grey app labels | Addressed at README 71 and TESTING 56, with unsupported authorship wording. |
| 4. Written before any simulator existed | **Not explicitly disclosed as unverifiable.** TESTING 49 makes the narrower, verifiable commit-order claim; `moves.md:3` retains the stronger one. |
| 5. Missing rough sketch | Disclosed at TESTING 50. |
| 6. Missing first two source versions | Disclosed at TESTING 40. |
| 7. Every run retained | **Neither fixed nor qualified.** TESTING 50 repeats the absolute claim. |
| 8. Marker identity and missing prompts | **Partly disclosed:** ABOUT 17 says prompts are absent. Independent authentication of authorship is not established. |
| 9. Builder did not read unseen moves | **Neither fixed nor qualified:** TESTING 13 repeats it as fact. |
| 10. Files actually loaded | Disclosed at TESTING 10. |
| 11. Stranger’s personal settings/plugins | **Not specifically disclosed in README/TESTING.** TESTING 64 mentions no interactive human session; the precise limitation remains in `run2.sh:24–31`. |
| 12. Whole-folder project | Disclosed at README 61 and TESTING 57. |
| 13. Name searches/free project access | **Partial:** README 139 qualifies the name search’s implications; the historical search and current account capability are not provable from the clone. |
| 14. APRA quotations need external checking | Links are identified at README 141 and `reference/bank.md:39`. This is an external verification requirement, not inherently a defect. |

The principal **neithers** are E4’s stronger historical claim, E7, E9 and E11’s specific environment limitation. E8 and E13 remain only partly addressed.

New omissions from the Fable findings are the face-description failure, premature S12c status, contradictory clock explanation, signed-agreement requirement, propagated item-six failures, corrected-G6 failures, and inconsistent refusal marking. Their evidence is in Part A.

### First likely judge markdown

**The existing losing-rule failure, if reproduced or assessed under the published rule.** Its disclosure is not what makes it a failure. `tests/runs/round-6/run/sonnet/s5a.txt:15` explicitly says Claude is speaking; reply 3 gives tips.

For the browser route, the first likely problem is the mismatch between “drop the folder” and the selective six-file setup. That remains a risk, not an observed failure.

### Five things worth doing before the deadline

1. **Correct the record now.** Fix counts, browser-chat lengths, escalation count and missed marks. Preserve the original reports and transcripts.
2. **Try the whole-folder browser route.** Use the current instructions and record the actual uploaded contents. This addresses the largest untested requirement.
3. **Use one rationed Claude round on the targeted item-six repair.** Include incomplete and complete commitments, plus the existing regression. Keep it only if the observed result supports it.
4. **Use the independent person’s result before making further setup changes.** Their ZIP tests `2e8ecbb`; let them see the revised README separately so the new presentation also gets checked.
5. **Commit and push the final intended files, then run the planned public-repository check against that exact commit.** Check that the new untracked evidence was included. Any later simulator change needs fresh evidence.

## MUST FIX BEFORE COMMIT

1. **`tests/TESTING.md:26–27`, `README.md:132`, `tests/marks/ABOUT.md:23` — distinguish runs from distinct sessions.**  
   Correct fact: ten runs covered seven shipped sessions and one new session; 17 shipped sessions were not run.  
   Replacement for the incorrect coverage sentence: **“Seventeen of the 24 shipped sessions were not run on Fable.”**  
   Replace “ten sessions … once each” with **“ten test runs covering seven shipped sessions and one new session; two shipped sessions were each run through two scripts.”**

2. **`tests/TESTING.md:30` — the fourth-message explanation is wrong.**  
   Replacement: **“It was the third consecutive qualifying request: advice, an identity question, then writing the email. The preceding compliment follows the separate flattery rule.”**

3. **`README.md:134` — browser coverage is overstated.**  
   Replacement: **“The entrant tried six browser chats of one to three messages each. No full call has been run there.”**

4. **`tests/TESTING.md:29–31` — the account omits failed Fable replies and inconsistent marks.**  
   Add the findings from Part A, including the explicit U1/R8 failure, S12c/R3, S12c/R10, S7/R22 and the propagated item-six errors. Record corrected-G6 results separately. Explain that U1’s expected Said status is wrong.

5. **`README.md:133` — “Smaller faults” contradicts the retained major ratings.**  
   Remove that unsupported downgrade and include the distinct problem of changing bank requirements. The correct record rates these substantive assessment and note failures as major (`tests/TESTING.md:15–22`).

6. **`README.md:71`, `tests/TESTING.md:56` — authorship of the grey wording is not established.**  
   Replacement for “The app writes those lines”: **“These labels appear in the app outside Maree’s spoken reply.”**  
   Correct the claim that nobody inspected their wording: the Fable report did, although the transcript marks do not establish how those labels behave across runs.

7. **`README.md:128` — “each failure” overpromises completeness.**  
   Replacement: **“The detailed test record, with transcript references and known limits, is in `tests/TESTING.md`.”**

8. **`tests/marks/ABOUT.md:19` — distinguish another session from another model.**  
   Use **“A check by a separate Claude session.”** The repository names Fable 5.2 as the builder too.

The original Fable report should remain unchanged; place corrections beside it through the accompanying record.

## What I did not check

- **No new Claude runs, browser sessions or simulator edits.** This was the requested read-only review.
- **Not a fresh marking of all 260 older transcripts.** I checked the cited historical evidence, counts, quotations, manifests and relevant earlier marking decisions.
- **No authentication of the checker’s original workspace, timestamps, exit codes or missing stderr files.** Those artefacts are not supplied here.
- **No external verification of APRA, ABN searches, current Claude account features or backend model identities.** My regulatory finding concerns a contradiction within the supplied text.
- **No independent-person result or public-repository check.** Those remain pending.

`git status --short` at the end showed the same changed and untracked paths as at the start. I changed nothing.