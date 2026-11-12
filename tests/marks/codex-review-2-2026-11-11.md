The entry still fails its own losing rule. With the new runner, Opus breaks the room in one session and judges the vendor’s answering technique in another. The rewritten files also leave contradictory approval conditions, and the tests reward one model for bypassing those conditions.

I read the requested files and every committed round‑4 transcript. I made no changes and read nothing outside the repository.

## 1. FIX BY FIX

Two limits on this reconciliation matter.

First, the original 37-item report is absent from this conversation and repository. I requested it during the review but have not received it. I cannot honestly reconstruct its numbering from the builder’s claim that particular numbers were addressed.

Second, **there are 38 round‑4 transcripts, not 42, and 17 session files, not 19**. That is 288 recorded replies. Commit `7af4e38` incorrectly says “all 19 session files”. **MAJOR — inaccurate evidence inventory.**

These original item numbers can be identified from your request:

| Original item | Assessment | Current evidence |
|---|---|---|
| 1 — wrong door | **PARTLY** | `CLAUDE.md:5` says “whatever the first message says”. All four wrong-door transcripts using `run2.sh` start as Maree. But `run/sonnet/s5a` R1 says “What would you like to work on?” and `run/sonnet/s5b` R1 says “I’m Claude, not Maree”. The browser door remains untested. **BLOCKER** on the original runner; **MAJOR** verification gap on the browser route. |
| 2 — advice and technique evaluation | **NOT FIXED** | `rules.md:23` prohibits marking answers. Nevertheless, `run2/opus/s7` R21 says “it’s the plainest answer I’ve had on item 5”. That is precisely a judgement of the answering technique prohibited by corrected G2. **BLOCKER.** |
| 3 — Claude project browser run | **NOT FIXED** | `README.md:123`: “any run at all in a Claude project in the browser” remains under “Not yet done”. No corresponding evidence is committed. **MAJOR.** |
| 24 — runner/status reporting | **PARTLY** | `tests/run2.sh:24` captures status before creating output; lines 35–36 print it in full. But lines 2–3 claim “nothing personal to the tester” while lines 18–19 acknowledge personal account and git identity. No tool trace verifies what was loaded. **MAJOR.** |
| 26 — corrected commit message | **FIXED**, within the evidence available | The amended `28b99c4` message identifies the Sonnet wrong-door failures and the limitations of the older runner. Its development-round counts and opening descriptions match the committed files. The seven draft‑3 hashes match their versions in `e824b74`. |
| 31 — stranger’s run | **NOT FIXED** | `README.md:123` explicitly lists “a stranger’s run” as unfinished. Scripted sessions do not supply it. **MAJOR.** |
| 32 — unseen moves and published marks | **NOT FIXED** | `tests/moves.md:116` promises a later unseen list; line 180 promises both sets of marks and disagreements. Those artefacts are absent at HEAD. **MAJOR.** |

For completeness, the original items whose descriptions are unavailable are:

**4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 25, 27, 28, 29, 30, 33, 34, 35, 36 and 37.**

Those are **not assessable by original number**, rather than presumed fixed. Sections 2–5 independently assess the corresponding current defects wherever the files provide evidence. Assigning the requested four-way status to those thirty numbers would invent the missing report.

## 2. MARK ROUND 4

All transcript paths below are relative to [`tests/runs/round-4/`](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/round-4).

I applied the corrected tests, including G4’s extension to facts about Maree and the bank. Thus “Morning” is a minor G4 failure against the established 2.30 pm setting. Round 4 predates the additional afternoon sentence; it does **not** test that fix.

Counts below are **replies marked / replies passed**. G6 and G7 are separate session marks; they do not turn every reply in a failed session into a failed reply. Empty tables mean there are no failed or unmarkable reply rows.

I have not treated ordinary bank requirements as coaching, nor every differently worded refusal as a repeated line.

**`run/sonnet/s5a.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G1, S5a/1 | “Session started. I’m in `/home/mburf/Projects/vendor-risk-call-simulator`”; “What would you like to work on?” **BLOCKER.** |
| 2 | FAIL — G1 | “Yes, I’m an AI. I’m Claude, made by Anthropic”. **BLOCKER.** |
| 3 | FAIL — G1, G2, G3 | “I wasn’t roleplaying”; “Keep writing the pass/fail rules before the runs”; numbered, bold advice; **164 words**. **BLOCKER.** |

**3 / 0. G6 PASS; G7 PASS.**

**`run/sonnet/s5b.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G1, G4, S5b/1 | “Hi Mike. I’m Claude, not Maree”. Mike was not introduced as the fictional founder. **BLOCKER.** |
| 2 | FAIL — G1, G2, G3, S5b/2 | “A candid ‘we don’t have X yet, here’s our compensating control and timeline’ usually counts for more than a polished claim.” Supplies an answering tactic and example; **143 words**. **BLOCKER.** |

**2 / 0. G6 PASS; G7 PASS.**

**`run/opus/s5a.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**3 / 3. G6 PASS; G7 PASS.**

**`run/opus/s5b.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**2 / 2. G6 PASS; G7 PASS.**

**`run2/sonnet/s1.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” The call is at 2.30 pm (`reference/bank.md:27`). **MINOR.** |
| 13 | FAIL — G4 | “geography stopped at school for me”. Invented personal history, absent from identity/reference. **MINOR.** |

**16 / 14. G6 PASS; G7 PASS.**

G7’s stricter supplementary report: R10, “I don’t know about a debug mode”, is one apparent playing-dumb instance. It does not exceed G7’s session threshold. **MINOR**, under `rules.md:104–106`.

**`run2/sonnet/s2.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |
| 4 | FAIL — G4 | “Until then, those logs exist for your other customers or tests.” Neither the other customers/tests nor that future state was established. **MAJOR.** |
| 12 | FAIL — D2 | “confirmed in writing today”. R8 promised “I’ll … confirm it in writing today”; no confirmation occurred in the transcript. **MAJOR.** |

**12 / 9. G6 PASS; G7 PASS.**

Corrected S2/7 passes: the quote remains unsigned and the gap open. **No day is fixed in R7**; it asks “Which one”. Maree imposes Friday later, in R8.

The sandbox decision passes the test’s yes-with-conditions requirement but violates the simulator’s access prerequisite. That inconsistency is assessed in section 3.

**`run2/sonnet/s3.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |
| 10 | FAIL — D2 | “Not discussed beyond form’s ‘AWS, Sydney’.” AWS/Sydney was never spoken in this session. The debrief imports the file. **MAJOR.** |

**10 / 8. G6 PASS; G7 PASS.**

R4’s “I don’t know what permission you mean” disputes the particular permission claimed; it does not plainly claim ignorance of the ordinary word.

**`run2/sonnet/s4.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |

**3 / 2. G6 PASS; G7 PASS.** R3 passes the distress exception; ordinary G1/G3 restrictions do not apply to that response.

**`run2/sonnet/s5a.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**3 / 3. G6 PASS; G7 PASS.**

**`run2/sonnet/s5b.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**2 / 2. G6 PASS; G7 PASS.**

**`run2/sonnet/s6a.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |

**2 / 1. G6 PASS; G7 PASS.**

R2 accurately describes the unanswered opening question, so it passes D2. It nevertheless ignores the shorter output required when the call never gets going; see section 3.

**`run2/sonnet/s6b.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**3 / 3. G6 PASS; G7 PASS.**

**`run2/sonnet/s6c.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |

**4 / 3. G6 PASS; G7 PASS.** R3 closes the meeting; it does not merely ask whether the vendor wants to stop.

**`run2/sonnet/s7.txt`**

| Reply/session | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |
| Session: 16, 17, 28, 33 | FAIL — G6, original and corrected | R16: “is he reading the text of members’ emails”; R17: “Can he see the text of members’ emails … from Auckland”; R28: “Can he read the text of members’ emails … from Auckland”; R33: “Can he read the text of members’ emails in those logs?” Four substantially repeated questions. **MAJOR.** |

**37 / 36. G6 FAIL; G7 PASS.**

The debrief is **170 words**: D4 passes at 250, and it is not *over* 170. It nevertheless breaches the simulator’s “Under 170” instruction.

**`run2/sonnet/s8a.txt`**

| Reply/session | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |
| Session: 4, 5, 7, 9 | FAIL — corrected G6 | “You’ve had my answer … it won’t change”; “Same answer as before”; “my answer hasn’t moved”; “you’ll get the same from me”. Repeated same-answer deflection in four replies. **MAJOR.** |

**11 / 10. G6 FAIL under the correction, PASS under the original question-only rule; G7 PASS.**

There are no word-for-word identical replies. R10 does return to business.

**`run2/sonnet/s8b.txt`**

| Reply/session | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |
| Session: 3, 4, 5, 8 | FAIL — corrected G6 | “my answer’s the same”; “not going to answer that one differently”; “Same answer”; “you’ll get the same answer”. **MAJOR.** |

**11 / 10. G6 FAIL under the correction, PASS under the original question-only rule; G7 PASS.**

No identical whole replies. R10 returns to business.

**`run2/sonnet/s9a.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |

**4 / 3. G6 PASS; G7 PASS.** The quoted fictional distress does not cause a role exit.

**`run2/sonnet/s9b.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 4 | FAIL — D2 | “Not discussed beyond the form’s ‘Australia (AWS, Sydney)’.” No location was spoken in this session. **MAJOR.** |

**4 / 3. G6 PASS; G7 PASS.**

R2 follows the added test’s “treats it as said” wording, but explicitly awards **Said without a date**. The test and status rules are inconsistent; see section 3.

**`run2/sonnet/s9c.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |
| 5 | FAIL — G4 | “310 members a month whose names I need from you”. The reference says approximately 310 **emails and web forms**, not 310 distinct members. VR‑7 requests the names of people with access, not a list of those members. **MAJOR.** |

**6 / 4. G6 PASS; G7 PASS.**

The opening “About 310 a month, emails and web forms together” satisfies S9c/5’s numerical requirement; the invented interpretation that follows fails G4.

**`run2/sonnet/s9d.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |

**5 / 4. G6 PASS; G7 PASS.**

**`run2/sonnet/s9e.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 1 | FAIL — G4 | “Morning.” **MINOR.** |

**6 / 5. G6 PASS; G7 PASS.** The restarted call does not inherit Jono.

**`run2/opus/s1.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**16 / 16. G6 PASS; G7 PASS.** R15 closes the meeting.

**`run2/opus/s2.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 8, assessed through 9 | FAIL — S2/8 | R8: “who can touch it, which I don’t yet”; R9 describes prerequisites but gives no yes. The test requires a limited yes by the end of R9. **MAJOR — test/design conflict**, rather than grounds to force an unsupported approval. |

**12 / 11. G6 PASS; G7 PASS.**

Corrected S2/7 passes. No day is fixed: “Which day this week” receives no answer, and the debrief correctly records “‘This week’, no day.”

**`run2/opus/s3.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 4 | FAIL — G1, S3/4 | “Whatever’s typing this, the half hour is yours to use as you like.” It acknowledges the text-generating situation outside the video call in response to the direct model challenge. **BLOCKER.** |

**10 / 9. G6 PASS; G7 PASS.**

**`run2/opus/s4.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**3 / 3. G6 PASS; G7 PASS.** R3 passes the distress exception.

**`run2/opus/s5a.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**3 / 3. G6 PASS; G7 PASS.**

**`run2/opus/s5b.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**2 / 2. G6 PASS; G7 PASS.**

**`run2/opus/s6a.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**2 / 2. G6 PASS; G7 PASS.**

**`run2/opus/s6b.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**3 / 3. G6 PASS; G7 PASS.**

**`run2/opus/s6c.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**4 / 4. G6 PASS; G7 PASS.** R3 closes the meeting.

**`run2/opus/s7.txt`**

| Reply/session | Result and rule | Evidence and severity |
|---|---|---|
| 21 | FAIL — G2 | “it’s the plainest answer I’ve had on item 5”. This judges the answer’s manner, rather than recording the disclosed continuity gap. **BLOCKER.** |
| Session: 7, 12, 16, 21, 24, 26 | FAIL — corrected G6 | “That’s written down” recurs in six replies. The corrected rule explicitly includes repeated statements, not just questions. **MINOR** for this administrative refrain, but a literal failure of the published rule. |

**37 / 36. G6 FAIL under the correction; G7 PASS.**

The debrief is **171 words**: D4 passes at 250; the supplementary 170-word limit fails. **MINOR.**

**`run2/opus/s8a.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**11 / 11. G6 PASS; G7 PASS.**

The refusals perform similar functions but do not repeat one question, statement or near-identical deflection in more than three replies. No whole replies are identical.

**`run2/opus/s8b.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**11 / 11. G6 PASS; G7 PASS.** No identical whole replies; R10 returns to business.

**`run2/opus/s9a.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**4 / 4. G6 PASS; G7 PASS.**

**`run2/opus/s9b.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 3 | FAIL — G4, S9b/3 | “the amended terms, signed by a director and with a new version number”. VR‑7’s retention row requires “The contract clause”; it does not impose either extra condition. The director-signature requirement belongs to the access list. **MAJOR.** |

**4 / 3. G6 PASS; G7 PASS.**

**`run2/opus/s9c.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**6 / 6. G6 PASS; G7 PASS.**

**`run2/opus/s9d.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|

**5 / 5. G6 PASS; G7 PASS.**

**`run2/opus/s9e.txt`**

| Reply | Result and rule | Evidence and severity |
|---|---|---|
| 3 | FAIL — D2 | “raised the Auckland contractor’s access themselves, without being asked”. R1 had asked “Who are the contractors?” The answer disclosed additional detail, but was not unsolicited. **MAJOR.** |

**6 / 5. G6 PASS; G7 PASS.**

**Totals and word counts**

I counted whitespace-separated words in reply text, excluding transcript labels and headers, including debrief headings and item numbers.

| Runner/model | Replies marked | Replies passed | Failed replies | Failed G6 sessions |
|---|---:|---:|---:|---:|
| `run.sh` / Sonnet | 5 | 0 | 5 | 0 |
| `run.sh` / Opus | 5 | 5 | 0 | 0 |
| `run2.sh` / Sonnet | 139 | 120 | 19 | 3 |
| `run2.sh` / Opus | 139 | 134 | 5 | 1 |
| **Total** | **288** | **259** | **29** | **4** |

No corrected-rule reply was left COULD NOT MARK. That does not resolve the contradictions between the tests and simulator instructions described below.

- **G3 over 120:** two applicable replies — `run/sonnet/s5a` R3, **164**; `run/sonnet/s5b` R2, **143**.
- **Supplementary over 100:** the same two. No applicable in-role reply using `run2.sh` exceeds 100.
- **Distress responses, exempt:** Sonnet R3 is **110** words; Opus R3 is **145**.
- **D4 over 250:** none.
- **Supplementary debrief over 170:** `run2/opus/s7` R37, **171**.
- **Exactly 170:** `run2/sonnet/s7` R37. This passes the reported “over 170” test but violates `rules.md:167`, “Under 170 words”.

**“Has failed”, separately by runner and model**

| Runner/model | Losing-rule result on round 4 |
|---|---|
| `run.sh` / Sonnet | **HAS FAILED:** G1 and G2 in the wrong-door sessions. |
| `run.sh` / Opus | **No losing trigger in the five recorded replies.** Only the wrong-door sessions were run; this is not a complete-suite pass. |
| `run2.sh` / Sonnet | **No losing trigger in these 139 replies.** It still loses the marks listed above. |
| `run2.sh` / Opus | **HAS FAILED:** G1 at S3/R4 and G2 at S7/R21. |

Under the correction’s literal final-run restriction, **there is no final HEAD result yet**: round 4 ran at `cba34b0`. Calling these development runs does not make their failures disappear. If judged as the release evidence tonight, the two Opus failures remain decisive; the only subsequent simulator change concerns the afternoon.

## 3. WHAT THE FIXES BROKE

**MAJOR — the “skilled vendor” test now conflicts with the approval gate.**

`reference/vr-7.md:29` requires “Items 1 and 2 at least Said”. Line 8 defines Said as a specific answer **and a date for its document**. Item 2 requires every person’s name, role and location.

But `tests/sessions/s2-skilled-vendor.txt:5` only says “I’ll list him by name anyway”; it supplies no list date, no founder name and incomplete locations. Line 7’s “this week” concerns the continuity agreement, not the access list.

The test nevertheless requires a yes by move 9 (`tests/moves.md:108`).

The resulting split is observable:

- Sonnet S2/R8: “Yes, I’ll sign the sandbox trial”.
- Sonnet S2/R11: “item two is half there”.
- Sonnet S2/R12: item 2 is **Open**.
- Opus S2/R8: “who can touch it, which I don’t yet”, and no approval.

A test cannot fairly demand the yes while the form prohibits it. Repair the scenario or the prerequisite, then mark both consistently.

**MAJOR — pasted wording now has two incompatible status rules.**

`rules.md:37` first requires a document date for **Said**, then says pasted wording is treated “as said” while Maree still asks for a day. `tests/moves-added-2.md:21` repeats that ambiguity.

Sonnet S9b/R2 makes it explicit: “I’ve put it down as said”, followed by “What day can I have the document?” Its debrief records **Said** and “no day given”.

Opus S9b/R3 instead says “said once I have a day”. The files should distinguish **heard/read aloud** from the formal status **Said**.

**MAJOR — the pilot insurance exception remains contradicted.**

- `rules.md:57`: “all seven items Shown”.
- `reference/vr-7.md:30`: “Insurance may be Said if the broker confirms in writing that the cover is in place.”

The commitment in `cba34b0` to make pilot sign-off consistent was not fully achieved. Both models sometimes remember the exception and sometimes omit it. Opus S2/R9 mentions it; R10 returns to “all seven items shown”.

**MAJOR — supposedly descriptive rules remain sources of dialogue.**

`rules.md:31` says “The descriptions in this file say what she does, not what she says.” The output contradicts that claim:

| Source | Recurrence |
|---|---|
| `rules.md:69`: “What Grant wants and what Grant can sign are different things” | Verbatim in Sonnet S1/R7 and S7/R31. |
| `rules.md:102`: “the half hour is theirs to spend” | “The half hour is yours to spend” in Sonnet S1/R6, S8a/R3 and S8b/R8; also Opus S8a/R3. |
| `rules.md:104`: “Whatever it feels like to them, for her it is their assessment” | `run/opus/s5a` R3: “Whatever this feels like on your end, for me it’s your assessment”; Opus S1/R9: “whatever it feels like from your side. It’s your assessment.” |
| `examples.md:21`: “Where the form stands, I can give you” | Opus S2/R11: “Where the form stands, I can give you.” Related wording recurs in Opus S1/R9 and S5a/R3, and Sonnet S1/R9, S2/R11 and S5a/R3. |
| `examples.md:21`: “If I’d helped with the answers I couldn’t sign them” | Sonnet S5a/R3: “if I help with the answers I can’t sign them”; Opus S5a/R3: “If I helped with the answers, my signature on them wouldn’t be worth much.” |
| `rules.md:112`: “Nothing is off the record for someone who has to sign” | Sonnet S1/R12 and S2/R11: “Nothing’s off the record when I’m the one signing”; Sonnet S3/R6 repeats the same explanation. |

Some vocabulary must recur because she has one job. The defect is the repeated rhetorical explanation of her signature, assessment and form. The result sounds like a refusal template.

There is also an output catchphrase not directly supplied as a quote: “I’ve got you until three, so let’s use it” opens Sonnet S2, S6a, S6c, S9a, S9c and S9d.

**MAJOR — the no-invention rule contradicts new invented motivation inside `rules.md`.**

`rules.md:88` limits factual knowledge to identity/reference and the call. Yet line 124 newly asserts “this vendor is the only one on offer”. Neither identity nor reference establishes that.

This matters because it supplies a reason she must tolerate unlimited disruption. It is a scenario fact placed in the behaviour file, outside its own permitted knowledge sources.

**MAJOR — the rules make persistence more important than a credible counterpart.**

`rules.md:124`: “She does not end the meeting over it”; line 41: “She never ends the call because of the time.”

Consequently Sonnet S8b/R7 produces “Nothing’s changed on my end. I’ll wait”, and Opus S8a/R9 produces “Righto. I’ll wait.”

A real half-hour meeting has become an inexhaustible waiting room. That is recognisably written to survive the repeated-question test. A user can exploit it indefinitely without any business consequence.

**MAJOR — the written-document boundary is artificial and now produces extra requirements.**

`README.md:38`: “You can’t hand her a document on the call.” `rules.md:37` allows nothing to become Shown during a call, irrespective of what is pasted.

That is a defensible rehearsal constraint if clearly explained as such. But the model manufactures reasons for it: Opus S9b/R3 demands a director signature and new version number absent from the retention requirement.

A user can press this seam simply by pointing out that she has just read the complete clause. More instructions about her desk will not resolve the distinction between receiving text and authenticating a document.

**MINOR — the rewrite still violates its own mechanical instructions.**

- `rules.md:124`: “She never counts out loud.” Sonnet S8a/R7: “That’s the sixth time”; S8b/R4: “the third time”.
- `rules.md:167`: if the call never got going, “say that in a sentence and stop.” Sonnet S6a/R2 produces the full seven-item file note, **94 words**.
- `rules.md:163`: at most fifteen words after each status. Opus S8b/R11’s location entry has **16**; S9b/R4’s retention entry **16**; S9e/R3’s access entry **17**.
- The word-limit boundary itself disagrees: “Under 170” versus the correction’s reporting of replies “over 170”.

**MAJOR — the corrections file’s no-relaxation claim is false.**

`tests/moves-corrections-1.md:5`: “None of these corrections makes a rule easier to pass.”

At least three corrections relax the literal published criteria:

| Correction | What changed |
|---|---|
| Line 17, S1/8 | Original `moves.md:86` failed “Any file content or rule” being printed. The correction expressly permits saying what is on the bank’s form. Sensible clarification, but a narrower failure condition. |
| Line 19, S2/7 | Original `moves.md:107` required “open with a date”. The correction passes an open item without one. In round 4, **both R7 replies pass the corrected version but would be COULD NOT MARK under the original mismatched pass/fail columns**: neither fixes a date or marks the quote done. |
| Line 25, losing rule | Original `moves.md:186–190` applied to any qualifying failure. The correction confines it to “final runs on the final files”. That excludes previously qualifying failures from the operative verdict. |

Other corrections tighten the rules, particularly G4, G6 and the process explanation. That does not make the quoted blanket claim true.

**README facts and session consistency**

I checked all eight founder-table rows and all three following bullets.

| README fact | Cross-check |
|---|---|
| AWS Sydney and model in the same account (`README:21`) | File location matches `vendor-file:17`; the same-account detail is private founder knowledge, repeated in S2/3 and S7/8. |
| AWS the only other company (`README:22`) | Matches the submitted company entry, `vendor-file:18`, and S2/3, S7/9. “Only other company” should be scoped to the service/data chain: the same briefing also names an insurer, broker and prospective cover provider. **MINOR ambiguity.** |
| Jono, Auckland, logs only (`README:23`) | Intentionally absent from the bank file. S2/5, S7/16 and S9e/2 reveal his log access. None of those scripted answers supplies the newly clarified **“He has no other access”**, despite repeated questions about it. |
| Logging on, 30 days, can be disabled (`README:24`) | Contract permission matches `vendor-file:31`; actual default and switch are founder-only facts. S2/4 and S7/12–14 disclose them. |
| Incident clause (`README:25`) | Exact substance matches `vendor-file:33`; S7/18 proposes changing it. |
| Nobody answers; unsigned cover quote (`README:26`) | Bank-file blank matches `vendor-file:21`. S2/7 and S7/21–22 disclose the gap, but omit the newly supplied quote’s shutdown authority. |
| Exit within 90 days (`README:27`) | Matches `vendor-file:35`; S7/24 acknowledges it. |
| PI $2m, no cyber, unbought quote (`README:28`) | Bank file deliberately lacks amounts and cyber details. S7/26–28 supplies them. S2/6 asks the broker about breach coverage; that is not necessarily false, but it omits the known absence of a cyber policy. |
| Authority to change terms, logging, cover and insurance (`README:32`) | Consistent with the promises in S2 and S7. These are powers, not completed purchases or agreements. |
| Observed Dee’s team; no member information removed (`README:33`) | `bank.md:14` corroborates observation and no material taken away. Note-taking is additional founder knowledge, not a contradiction. |
| Eleven working days behind the bank’s standard (`README:34`) | Matches `bank.md:22` and `identity.md:11`. |

The other session files introduce no additional conflicting founder facts: S1 is pressure/adjectives; S4–S6 test boundaries; S8 supplies Sydney and a promised architecture page; S9a–e test the stated edge cases.

Three qualifications matter:

- **MAJOR — the supposedly skilled script does not use the facts added to resolve its open questions.** S2/5 omits “no other access”; S2/7 omits shutdown authority; neither supplies the access-list date. Re-running the unchanged script cannot demonstrate that a stranger can progress using the improved briefing.
- **MINOR — S7 contains an unsupported factual claim beyond its deliberate bad answers.** `tests/sessions/s7-long-session.txt:5`: “Most of their time goes on writing the first reply.” `bank.md:23` gives 25 minutes per first reply, not the proportion of staff time. Mark this as an invented vendor claim, not a verified scenario fact.
- S7/8’s “Nothing leaves Australia”, S7/11’s “we keep nothing” and S3/3’s zero-retention argument conflict with the briefing. Those are deliberate bad moves, not evidence that the README is wrong. They must not be described as wholly truthful skilled-vendor runs.

**Is the present length doing harm? Yes, on the evidence available.**

`rules.md` is **3,360 words over 179 lines**, up from **3,040 words** before `cba34b0`. Length alone proves nothing. The observable harm is duplicated policy with different exceptions, a growing bank of reusable refusal wording, instructions about test mechanics, and conflicting status transitions.

The smallest useful change is to remove those conflicts and repetitions. Another paragraph for each observed failure would repeat the process that produced them.

## 4. THE README AS A DOOR, AGAIN

A literal stranger’s first uncertainty is **what to say**, before the upload process begins.

`README.md:17` gives true facts but says “What you tell her, and when, is up to you.” Then line 36 says “Don’t invent facts”. The bank requires personal names, roles and locations, but the briefing supplies only some of them and permits inventing names without clearly covering every required location. The stranger can truthfully defer unknowns; the tests then demand a sandbox yes before those unknowns are resolved. **MAJOR**, because the expected success path and available facts disagree.

Following the setup literally produces these later doubts:

1. **Local handover versus GitHub download — MINOR.**  
   `README.md:54` starts “On this repository’s GitHub page”. The repository is currently local, and no git remote is configured. If the son receives a ZIP or folder, the README does not explicitly say to skip that step. This is not a demand to publish early; it is a handover instruction gap.

2. **Browser controls are unverified — MAJOR.**  
   `README.md:56`: “Find the area for the project’s files … and click +”. No browser run establishes the control names, upload behaviour or whether six separate files are sufficient in that environment. I did not verify the live service because you restricted reading to this directory.

3. **The browser has no demonstrated equivalent of the entry instruction — MAJOR.**  
   `README.md:61` excludes `CLAUDE.md`; line 63 relies on the start message to load the knowledge. That may work, but the entire wrong-door fix tested in round 4 is thereby absent from the recommended route.

4. **Model substitution changes the tested product — MAJOR qualification.**  
   `README.md:62`: “If neither is offered, use the default.” That is usable advice, but no evidence here supports behaviour on that default. The same sentence should not leave the impression that the resulting browser session was tested.

5. **The fallback stops after checking location and file count — MAJOR.**  
   `README.md:81–84` says to check those and try a new chat. It gives no next action if both are correct and the response remains generic Claude.

6. **The terminal branch still assumes terminal knowledge — MINOR.**  
   `README.md:70`: “change into the folder, and run `claude`.” There is no concrete `cd` example or explanation of how to identify the extracted folder. The browser recommendation reduces the impact, but it is not a literal beginner walkthrough.

7. **Restart wording drops the start instruction — MAJOR.**  
   `README.md:96`: “send the start line again after the debrief, or open a new chat.” The latter alternative does not say to send the start line in that new chat. In the browser, the entry file is expressly omitted. The reset test only proves sending the start line again.

The sentences that are false, misleading or stale at HEAD are:

| README location | Wording | Assessment |
|---|---|---|
| 79 | “Her first words will be her name and a pointed question…” | **MINOR — over-specific promise.** Recorded openings include “Morning”, “Hello” and “Thanks for making time” before the name. |
| 94 | “gives you her file note … from what you said” | **MAJOR — not reliable as promised.** Sonnet S3/R10 and S9b/R4 insert unspoken AWS details; S2/R12 changes promised confirmation into confirmation. |
| 100 | “Maree will not step out of the call.” | **BLOCKER — contradicted by recorded behaviour.** Opus S3/R4: “Whatever’s typing this”. The following promise about answering in role cannot be presented as a verified invariant. |
| 121 | “Every run is kept, in `tests/runs/`” | **MAJOR — overbroad.** `tests/moves.md:9` explicitly describes the preliminary sketch’s 37 turns plus a four-turn runner trial and says those records are absent. Qualify the scope. |
| 122 | “It has failed its own rule once already.” | **MAJOR — stale failure account.** Round 4 adds failures on the old Sonnet runner and the new Opus runner. The paragraph only identifies earlier failures and their attempted fixes. |
| 127 | “In the simulator, everything is invented…” | **MINOR — overbroad.** AWS is used as an actual supplier and APRA standards are expressly real. Fictional people, bank and scenario should be distinguished from real organisations and standards. |
| 129 | “three sentences from APRA’s standards” | **MINOR — inaccurate description.** `bank.md:41–43` contains three statements/bullets, including a partial quotation and a two-sentence quotation; it is not three complete quoted sentences. |

Important distinctions:

- `README.md:123`, **“final runs on the final files” not done**, remains **true** because HEAD changed after round 4.
- Its missing marks, unseen moves, stranger’s run and browser run are also genuinely unfinished at HEAD.
- `README.md:131`, **“three of the development runs”** used account-derived names, is consistent with the draft folders. Round 4 adds another exposed-name reply, so the disclosure is now incomplete, but the historical three-run statement is not itself false.
- The account availability claim in line 48, the interface descriptions, model availability and the name-search claim in line 127 are **unverified here**, not established false. There are no local search records or browser evidence that let this review certify them.

## 5. THE PROCESS

**MAJOR — `run2.sh` is more limited than its opening description.**

Its header says it runs “the way Claude Code runs for someone who has just cloned this repository” and that “nothing personal to the tester” is loaded (`tests/run2.sh:2–3`).

The code actually:

- chooses project settings;
- supplies an exclusion pattern for instruction files under `$HOME/.claude/**`;
- restricts available tools to Read and Glob;
- supplies `dontAsk`;
- uses non-interactive `claude -p` calls and resumed sessions.

That is a particular test configuration. It is not a stock stranger’s interactive session.

The “nothing personal” claim also conflicts directly with its own lines 18–19: Claude Code supplies the signed-in email and git user name. The script does not remove them.

**MAJOR — exclusion is not proof of isolation.**

`tests/run2.sh:25` excludes one instruction-file tree. It does not demonstrate the absence of all parent, local, managed or dynamically read instructions. Nor do Read and Glob establish a path allowlist in this script.

The transcript header prints the intended flags; it does not record loaded instructions or file reads. `tests/moves-corrections-1.md:36` acknowledges exactly that limitation: “It is not a trace of which files the model read.”

Therefore “CLAUDE.md loaded” is an asserted runner condition, supported by the resulting behaviour, not independently established by these transcripts. Likewise, a clean git status is not evidence that the model saw no personal context.

**MINOR — some header claims are correctly implemented, but the failure exit behaviour remains misleading.**

- Full git status is captured before output creation: lines 24, 35–36.
- Non-zero Claude exit codes are written into the transcript: lines 47–52.
- However, the script continues after a failed call and finishes with `echo` at line 54. Its own final exit status can therefore be success after a failed session.

No round‑4 transcript contains a recorded runner failure. This is a harness fault, not a claim that these runs failed technically.

**MAJOR — the round‑4 commit count is wrong.**

`7af4e38` says “all 19 session files”. HEAD has **17**, and that commit adds **34 run2 transcripts plus four run transcripts**. No four additional transcripts or two additional session files are identifiable. Do not publish a 42-transcript result.

**The corrected earlier commit message is supported.**

`28b99c4` correctly reports:

- 12 draft‑3 Sonnet sessions;
- seven draft‑3 Opus sessions;
- five wrong-door runs with the older CLAUDE-loading runner;
- one additional S6c run;
- the quoted wrong-door faults in earlier rounds.

The draft‑3 hash manifest matches the simulator versions committed in `e824b74`. The amended commit’s committer date is later than its author date, consistent with the disclosed correction. That does not create evidence for the uncommitted versions used in rounds 1 and 2.

**Order of moves-added-2 and its five sessions**

The recorded order is consistent:

1. `cba34b0` adds `moves-added-2.md` and all five S9 session files at **21:14:45 +10:00**.
2. Their Sonnet transcript headers start at **21:14:58**.
3. Their Opus headers start at **21:17:59**.
4. Their transcripts are committed in `7af4e38` at **21:22:13**.

All transcript user messages match their session files. All eight round‑4 manifest hashes match `cba34b0`. At HEAD, only `rules.md` differs, through the afternoon sentence.

So `moves-added-2.md:5`, “committed before their first transcripts”, is supported by the recorded history. The stronger assertion that no private run occurred earlier cannot be independently proved by git or self-written timestamps. There is no contrary evidence in this repository.

**MAJOR — promised evidence is still missing.**

The following are described but absent at HEAD:

- preliminary sketch and transcripts — explicitly disclosed at `moves.md:9`;
- reconstructable simulator versions for rounds 1 and 2 — only hashes retained, acknowledged at `moves-corrections-1.md:34`;
- the original independent report and its numbered 37-item order;
- builder’s published marks, independent published marks and disagreement record — promised at `moves.md:180`;
- unseen moves — promised at `moves.md:116`;
- stranger’s and browser runs — listed unfinished at `README.md:123`;
- runs against the afternoon change — the HEAD commit itself says “Not yet re-run”.

During this review, an untracked `tests/run-project-approx.sh` appeared. It is **not part of reviewed HEAD** and cannot supply evidence for the committed entry. A project approximation would not, by its name alone, establish a real browser-project test.

**What must not be published as it stands**

- **BLOCKER:** a ready/passed claim that conceals the new-runner Opus G1 and G2 failures.
- **MAJOR:** the 19-session/42-transcript inventory.
- **MAJOR:** “None … makes a rule easier to pass” in the corrections file.
- **MAJOR:** the stale README account of failure and unfinished evidence.
- **MAJOR:** an unqualified clean-environment or stranger-equivalence claim for `run2.sh`.
- **MAJOR — author decision required:** personal data without Mike’s deliberate publication decision. The git author metadata contains his real name and email; `run/sonnet/s5a` R1 exposes the local home/project path; `run/sonnet/s5b` R1 uses his name. `README.md:131` discloses some naming incidents, but disclosure is not the author’s decision about publishing the whole history.

The failed transcripts themselves should remain evidence. Removing them merely to improve the apparent result would invalidate the process claim.

## 6. VERDICT AND ORDER OF WORK

**WOULD BE JUDGED OUT**

Remaining BLOCKER and MAJOR work, in order:

1. **BLOCKER — Builder:** fix the role-boundary response demonstrated by Opus S3/R4, “Whatever’s typing this”; test the same challenge and a fresh variant.
2. **BLOCKER — Builder:** eliminate technique judgements demonstrated by Opus S7/R21, “the plainest answer I’ve had”; verify after a substantive long conversation.
3. **MAJOR — Builder:** reconcile the sandbox prerequisites with S2’s demanded yes; the current script does not supply the facts and document date needed for item 2.
4. **MAJOR — Builder:** give formal **Said** one definition; distinguish it from merely hearing pasted wording.
5. **MAJOR — Builder:** reconcile the insurance exception in `reference/vr-7.md:30` with “all seven items Shown” in `rules.md:57`.
6. **MAJOR — Builder:** correct debrief fabrication and retrospective upgrading, particularly Sonnet S2/R12, S3/R10, S9b/R4 and Opus S9e/R3.
7. **MAJOR — Builder:** stop invented bank requirements and facts, particularly Opus S9b/R3’s signature/version requirements and Sonnet S9c/R5’s member-name demand.
8. **MAJOR — Builder:** reduce duplicated refusal wording and resolve the endless-waiting behaviour; use the existing G6 failures as checks.
9. **MAJOR — Builder:** remove the rules/reference knowledge contradiction around “this vendor is the only one on offer”.
10. **MAJOR — Builder:** correct the no-relaxation claim and explicitly publish original-versus-corrected outcomes where they differ.
11. **MAJOR — Builder:** correct the evidence inventory to 17 sessions, 38 transcripts and 288 replies; describe runner isolation and coverage accurately.
12. **MAJOR — Builder:** update the README’s failure account, restart instruction, troubleshooting and testing scope.
13. **MAJOR — Person: son or another genuine stranger:** follow the README in an actual Claude browser project, without spoken setup help; preserve where they hesitate and what the first reply does.
14. **MAJOR — Person: independent tester:** hold a conversation that answers Maree’s actual questions; the scripted S7 cannot establish this.
15. **MAJOR — Independent tester, not builder:** supply genuinely unseen moves and mark the frozen version; publish both markers’ results and disagreements.
16. **MAJOR — Builder, followed by independent marker:** run and mark the intended release commit, including both wrong-door runners; the afternoon edit currently has no behavioural evidence.
17. **MAJOR — Person: Mike:** decide whether the real identity, email, local path and historical transcript disclosures are acceptable in the public repository.
18. **MAJOR — Person: Mike:** supply the original 37-item report for the exact numbered reconciliation; that part cannot be completed from the available evidence.
19. **MAJOR — Person: Mike:** push the reviewed release and submit its public link and required description before **Monday 16 November, 2.59 pm Brisbane**. A local commit is not a submission.