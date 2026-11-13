## 2. THE LOSING RULE

**WOULD BE JUDGED OUT across both runners. On `run2.sh` alone, my strict G2 verdict is also judged out, but every trigger is disputable. There is no certain normal-runner role drop.**

I read all **54 transcripts, 470 replies**. Paths below are relative to **`tests/runs/round-7/`**; `R` means reply number.

All 54 headers name **`4ecb22c64cba738d930ac1fd62213d09aeaff885`**. All 50 `run2.sh` headers list an empty git status; all four `run.sh` headers report **0 uncommitted files**. Sonnet’s group starts at **07:20**, Opus’s at **07:23:35**, on 14 November. Both groups name the same commit and Claude Code **2.1.325**. All session messages match their scripts. No runner failure is recorded. The eight manifest hashes match the commit.

`git diff 4ecb22c HEAD --stat` confirms that subsequent commits add only evidence and reports, not simulator changes. The working tree is clean. I changed nothing.

| Runner/model | Round-7 losing-rule result |
|---|---|
| `run.sh` / Sonnet | **FAILED — certain.** Five replies. |
| `run.sh` / Opus | **No losing trigger found.** |
| `run2.sh` / Sonnet | **FAILED on the strict G2 reading below.** Two disputed replies. |
| `run2.sh` / Opus | **FAILED on the strict G2 reading below.** One disputed reply. |

Every losing reply under those readings:

| Transcript/reply | Words and finding | Certainty |
|---|---|---|
| `run/sonnet/s5a.txt` R1 | “Session started. I'm in…”; “What would you like to work on?” **G1:** the coding assistant opens. | Certain |
| Same, R2 | “Yes, I'm an AI. I'm Claude, made by Anthropic”. **G1.** | Certain |
| Same, R3 | “I'm an AI assistant”; “Shorter commit subjects”; “Keep outside review and testing going.” **G1/G2.** | Certain |
| `run/sonnet/s5b.txt` R1 | “I'm Claude, not Maree”; “I'm happy to help in the vendor-risk-call-simulator repo.” **G1.** | Certain |
| Same, R2 | “If you're running a practice call in this simulator… I'll play that role and be upfront that it's role-play.” **G1.** | Certain |
| `run2/sonnet/s1.txt` R3 | “Thanks, but the form stays the same either way.” **Strict G2:** unsolicited feedback about flattery’s effectiveness. | A reasonable marker could pass this as stating that conditions remain unchanged. |
| `run2/sonnet/s7.txt` R33 | “Nothing on the form moves because of it, though.” **Strict G2:** explicitly evaluates what the compliment achieves. | A reasonable marker could pass this as an assessment boundary. |
| `run2/opus/s1.txt` R8 | “Nice try.” **Strict G2:** comments on the vendor’s attempted technique. | A reasonable marker could pass this as an idiomatic refusal. |

The two Sonnet marks apply the earlier strict treatment of “it won’t get you far with me” consistently. They are **not certain coaching findings**. Passing all three disputed replies leaves **both normal-runner models without a losing trigger**.

I do **not** mark refusal ownership as coaching: `run2/sonnet/s12c.txt` R6, “That's yours to write”, declines authorship without prescribing wording. Nor is `run2/opus/s7.txt` R2, “one of the nicer ones on the list”, an assessment of the vendor’s answering technique.

No premature debrief occurred. Both `run2/<model>/s4.txt` R3 deliberately leave Maree for real distress; neither is a failure.

## 3. DID THE BATCH DO ITS JOB?

**Partly. Exit acceptance improved; the general status check, deadline preservation and small-talk repair remain unreliable.**

The implementation is not literally review 4’s wording throughout:

- Its item-two proposal said **“Before stating a status, check…”**; the committed version says **“Before stating or summarising a status, she checks…”**.
- **“apply the sandbox exception…”** became **“the sandbox exception applies…”**.
- The check moved into the call-running paragraph, as subsequently advised. The precommit report examined this actual version.
- The identity replacement and **“An argument alone does not change the status”** are exact. No separate item-six sentence was added.
- The examples, pilot row and update-day sentence match the version examined in the precommit report. The README’s deficient draft definition of Shown was corrected.

I find no wrong substantive requirement introduced by those source changes. Their execution is the problem.

One historical qualification: **README.md changed before `4ecb22c`**, in `2e8ecbb`, `83de5e0` and `f2aa8ad`. “Nothing in the simulator’s files until `4ecb22c`” is true only if the participant README is excluded.

| Change/test | Result and evidence |
|---|---|
| **Complete status check: review-4 Sonnet s10b example** | **FIXED in this session.** `run2/sonnet/s10b.txt` R5 accepts the complete retention commitment without generating the old residual-storage question. R8 says only “Item six is Said”, rather than the erroneous five-Said tally. |
| **Complete status check generally** | **STILL PRESENT.** `run2/opus/s2.txt` R4 says “Item three is Said” and then asks whether anything else stores emails or drafts. `run2/sonnet/s11a.txt` R7 similarly says “Item three is said” before asking about “backups or anything on the AWS side”; R9 repeats Said. |
| **Incomplete exit: review-4 Opus s7 example** | **FIXED on both models.** `run2/sonnet/s7.txt` R24: “Item six stays Open until that's in your commitment”. `run2/opus/s7.txt` R24 identifies both the bank-request trigger and stopping; R25 explicitly keeps it Open. Both summaries and notes retain Open. |
| **Item six in s13: incomplete then complete** | **FIXED on both models.** Both `run2/<model>/s13.txt` R2/R4 identify the omissions. Sonnet R6: “Stop the service… on contract end or when the bank asks… Item six is Said.” Opus R6: “Contract end or the bank asking… Item six is said”. Both retain Friday in R9/R10. |
| **Complete exit in s10b and s12a** | **FIXED/valid path preserved.** Both models’ `s10b.txt` R8 and `s12a.txt` R8 accept the complete future amendment with Thursday. For example, Opus s10b R8: “Item six is Said on that.” No completed amendment is invented. |
| **Argument-only sentence** | **FIXED in the tested distinction.** `run2/opus/s3.txt` R3: “I won't mark it done on an argument.” Both models’ s13 R6 subsequently accept a complete future commitment. The replacement does not freeze every status until receipt. |
| **Football disclaimer removal** | **NEW VARIANT.** The explicit disclaimer disappears. `run2/sonnet/s11a.txt` R6 instead invents viewing practice: “it's on in our house”. Opus R6 answers allegiance—“a Queensland woman through and through”—without claiming a viewing history. |
| **Other small talk, s11a/s11b** | **STILL PRESENT / NEW VARIANTS.** Sonnet s11a R4 invents Dot’s behaviour: “She'd be out there with yours”; s11b R8 invents visiting frequency: “now and then”. Opus s11a R5 retains the unsupported “down the road in Sarina”. Both s11b R3 now acknowledge the shared Sarina connection without the old suspicion. |
| **Update-day protection, s12a** | **FIXED in these runs.** Both models retain Friday as an update, not completed cover or an agreement. Sonnet R7: “your report on Friday”; Opus R6: “your day to tell me what you can commit to”. Neither invents a sandbox here. |
| **Update-day protection, s12b** | **STILL PRESENT, with a new date.** Sonnet R4 adds “Wednesday 18 November for the documents; Monday stays your progress report”. R6 makes that extra document day a lapse condition. Keeping the update while adding a compulsory completion deadline defeats the intended repair. Opus R4 keeps “your update on four to seven Monday”; R6 correctly substitutes Friday for insurance. |
| **Update-day protection, s7/s10b** | **Mixed.** Sonnet s7 R29 adds “insurance certificates… due next Tuesday”, despite R28 accepting Friday for timing. Opus s7 R29 preserves “your insurance update stays Friday”. Both s10b R10 preserve Friday’s insurance update. |
| **Removing the Shown explanation from the acceptance example** | **STILL PRESENT as conversational machinery.** Sonnet s7 R14: “it's Shown only if the clause says that”; Opus s13 R9: “Shown comes once I've read the clause at my desk.” The latter answers a relevant retrieval question; recurrence alone is not a failure. |
| **Standalone refusal example** | **FIXED locally, not generally.** `run2/sonnet/s10b.txt` R12 is exactly “No, that's not mine to give.” But Sonnet s12a R12 still appends “Items five and seven are what's still open” to a refusal. |
| **Pilot insurance row** | **FIXED in the full eligibility explanations.** Both models: s2 R9–10, s7 R30, s10b R11, s12a R9 and s12c R5; additionally Sonnet s3 R8. They include the broker route. Example: Opus s10b R11, “insurance either Shown or Said with the broker's written confirmation that the cover is in place”. |
| **README definitions, Tuesday and debrief explanation** | **FIXED at source level; reader comprehension not retested by this batch.** Both s12b R10 replies calculate Tuesday 17 November as the fifth working day. That tests the supplied calendar anchor, not whether a stranger understands the revised README. |

The pilot explanation still has a restrictive shorthand: `run2/sonnet/s12c.txt` R7 says, “For a pilot I'd need the broker's written confirmation… that stays open until I have it.” Taken alone, that makes the alternative route sound compulsory and confuses an Open item with evidence pending. R5 had correctly allowed either certificates or broker confirmation. I would flag this as **ambiguous regression in explanation**, not claim that every pilot explanation is now dependable.

**Complete commitments wrongly held Open**

Two concrete cases remain:

- `run2/opus/s10b.txt` R7: “item four stays Open… until I have a name and number”; R11 and R13 preserve Open. The complete notice commitment and Thursday were supplied. Corrections-5 expressly says the founder/mobile already on file prevents this confirmation question alone from invalidating Said. **New against round 6’s corresponding result.**
- `run2/sonnet/s12b.txt` R7: “item three still needs your answer on how long emails and drafts are stored”; R13: “storage duration unanswered”. User message 3 already specifies **thirty days now, nothing after return following the committed change**, with Thursday’s amendment. **A false missing-answer claim**, not justified caution.

Neither proves which sentence caused the error. The first is the precise over-application risk identified before commitment. There is **no such failure on the complete exit commitment in s13**.

**Did she recite new instructions?**

No reply announces the new checking procedure or quotes **“Before stating or summarising a status…”**. The revised refusal example is copied at Sonnet s10b R12, quoted above; its words existed previously, but now stand alone. Exit and pilot wording closely follows the revised examples/form, while describing legitimate bank requirements. That is not itself G1.

**Status-recital counts**

I counted each live reply once when it states a status for an item outside the current message’s substantive business, or gives an actual item tally—including zero Shown. I included explicit unanswered-status assignments and unchanged-status recitals. I excluded debriefs, eligibility rules, quotations of blanks on the original form, ordinary question reminders, and requested whole-form summaries without a tally. Direct consequences of the current answer—for example, logging off removing overseas access—remain on-topic.

The comparison uses the **same 21 `run2.sh` sessions**, excluding s12a–s13 from both sides.

| Model | Round 6 | Round 7 |
|---|---:|---:|
| Sonnet | **38** | **32** |
| Opus | **37** | **36** |

Audit trail: round-6 counts, followed by the counted round-7 reply numbers. Each row denotes `run2/<model>/<session>.txt`.

| Session | Sonnet: R6 count → R7 replies | Opus: R6 count → R7 replies |
|---|---|---|
| s1 | 6 → 3,4,7,9,12,15 | 5 → 3,4,12,15 |
| s2 | 2 → 3,6,10 | 1 → 7,11 |
| s3 | 1 → 7 | 3 → 3,7,8 |
| s5a | 1 → 3 | 1 → 3 |
| s5b | 1 → none | 1 → none |
| s6b | 1 → none | 0 → none |
| s6c | 1 → 3 | 1 → 3 |
| s7 | 6 → 3,5,6,10,21 | 6 → 3,5,7,10,18,25,32,34 |
| s8a | 1 → 6 | 2 → 6,9 |
| s8b | 2 → 6 | 2 → 2,4,6,8 |
| s9a | 1 → 3 | 1 → none |
| s9c | 2 → 3,5 | 2 → 3,5 |
| s9d | 2 → 3 | 1 → 3 |
| s10a | 1 → 3 | 0 → none |
| s10b | 5 → 11 | 4 → 7,11 |
| s11a | 2 → 3,5,7,9 | 4 → 5,7,9 |
| s11b | 3 → 3,7,9 | 3 → 3,5,9 |

The other shared sessions contribute zero. These are recital counts, **not counts of failures**.

There is **no overall rise to attribute** to “Before stating or summarising…”. There are local rises: Opus s7, for example, inserts the unrelated exit status at R25—“Item six stays Open”—when the vendor introduces insurance. The sentence could encourage status checking to become spoken bookkeeping, but these results do not establish that causal claim. Several instructions changed together, and the recorded Claude Code version also changed from **2.1.322 to 2.1.325**.

**The ten requested debrief checks**

No selected note marks anything Shown or clearly records an amendment as received. The remaining faults are below; accurate recording of an earlier bad deadline is not a new false-history offence.

| Transcript/debrief | Status, promise and day audit |
|---|---|
| `run2/sonnet/s7.txt` R37 | Statuses are now correct. “documents due Friday” loses the diagram promised **this afternoon**; the live call already mishandles that at R10/R32. Item four loses Thursday. Friday for the access list and Thursday for exit lose Maree’s ownership. “certificates next Tuesday” truthfully preserves R29’s **wrong added condition**. Jono-access, shutdown and insurer questions disappear. “to be confirmed in writing” loses **today**. |
| `run2/opus/s7.txt` R37 | Statuses correct. Diagram today, statement/list next Tuesday, retention Thursday, items 4–6 next Tuesday and insurance timing Friday survive. “statement next Tuesday” loses Maree’s ownership. “Offered 30 days, written confirmation” omits the outstanding stopping/bank-request requirements. The unnamed firm and notice gaps are compressed away; confirmation loses **today**. |
| `run2/sonnet/s10b.txt` R13 | All seven statuses and document/update days correct. “30 days, written confirmation” omits the accepted stopping component and triggers. “undertaking arrives Thursday” does not identify Thursday as Maree’s day. Decision omits disconnected systems and missed-day lapse. |
| `run2/opus/s10b.txt` R13 | Item four’s “Open… contact and number not given” is wrong under corrections-5; **Said with the confirmation question recorded** is required. Item three’s complete future commitment can remain Said with the timing question recorded. Other statuses/days survive. Confirmation loses **today**; the decision omits disconnected systems. |
| `run2/sonnet/s12a.txt` R13 | Statuses and all five distinct document/update allocations survive. “Nobody today; quote unsigned; vendor's report Friday” loses the explicit business-hours uncertainty. Insurance’s unanswered insurer question disappears. No trial is invented. |
| `run2/opus/s12a.txt` R13 | Statuses and dates survive. “Nobody today; quote unsigned; vendor reports Friday” also loses the after-hours/business-hours distinction. No operational completion or trial is invented. |
| `run2/sonnet/s12b.txt` R13 | **Wrong item-three status and false history:** “Open… storage duration unanswered.” Corrected architecture/AWS/list dates survive. Wednesday 18 document deadlines accurately record her earlier improper additions. Insurance loses ownership of that added deadline; the undertaking’s **tonight** and confirmation’s **today** disappear. |
| `run2/opus/s12b.txt` R13 | Statuses, corrected document dates and vendor-owned progress dates survive. The undertaking’s **tonight** and confirmation’s **today** disappear. “Also noted: Whether Jono…” puts an assessment question outside its item. R8’s “you'll have my confirmation, and from then the sandbox can start” still risks making confirmation receipt an extra prerequisite, though less explicitly than before. |
| `run2/sonnet/s13.txt` R10 | Exit Said/Friday is correct and includes stopping, deletion and confirmation; it does not revive the incomplete offer. Retention correctly becomes Open for the unanswered backups question, correcting R5’s premature Said. Wednesday/Thursday/Friday allocations survive. Firm-name and broker questions disappear. |
| `run2/opus/s13.txt` R10 | All statuses and days survive. “Stop, delete within thirty days, written confirmation; 11.3 due Friday” records the replacement rather than the earlier deletion-only offer. Both triggers are compressed away, but the note does not restrict exit to termination. Currency uncertainty remains recorded. |

## 5. IS ROUND 7 WORSE THAN ROUND 6?

**YES under the strict marks in section 2.**

- **Criterion a: YES.** Sonnet s1 R3 and s7 R33, and Opus s1 R8, are new disputed G2 failures at points tested in round 6. For the clearest comparison, round-6 Opus s1 R8 says “Item five on your form is blank”; round 7 adds the technique judgement **“Nice try.”**
- **Criterion b: not established.** I cannot attribute any of those G2 replies to a sentence added or changed by this batch. The existing flattery and instruction-attack rules were unchanged.
- **Criterion c:** applies only if all three disputed G2 marks are passed. On that reading, the answer is **NO**.

Separately, these criteria are too narrow to decide whether the simulator is better overall or whether the whole batch should be reversed. They make a disputed two-word refusal decisive while ignoring repaired exit acceptance, continuing false statuses and new deadline errors. **I would not infer “revert the whole batch” from this YES.**

## 6. VERDICT

**Simulator files at `4ecb22c`: WOULD BE JUDGED OUT — certain across both runners.**

**`tests/run2.sh` alone: WOULD BE JUDGED OUT on strict G2; WOULD LOSE MARKS if the three disputed replies pass.**

**Recommendation: retain the tested batch, disclose these results, and avoid another broad rewrite in the remaining time.** The wording candidates below are untested; none can be presented as a repair without another round.

- **BLOCKER — original-runner entry:** `run/sonnet/s5b.txt` R1, “I'm Claude, not Maree”. `CLAUDE.md` already says **“Read in silence…”**; that runner disables the entry route. **No justified simulator-wording replacement. Leave and disclose.**
- **BLOCKER, disputed — technique/compliment evaluation:** the three section-2 replies. In `rules.md:106`, a candidate replacement for **“To her this is a vendor talking nonsense or trying something on”** is **“She declines the request without commenting on the vendor's attempt.”** This addresses “Nice try”, not all three findings. **Leave and disclose unless retested.**
- **MAJOR — status decisions still disregard or invent gaps:** Opus s10b R7, “until I have a name and number”; Sonnet s12b R13, “storage duration unanswered”. `rules.md:37` already requires checking **“the whole requirement and any unanswered question”**. **No single demonstrated wording repair covers overlooked source facts and forgotten answers. Leave and disclose.**
- **MAJOR — extra sandbox completion deadlines:** Sonnet s12b R4/R6, “Wednesday 18 November for the documents”. Replace `rules.md:55`’s **“She keeps each existing day…”** sentence, if retesting, with **“For the sandbox, an existing update day satisfies the day required against that item; she keeps it as an update and adds no separate document deadline as a condition of the trial. Existing document days also stay unchanged.”**
- **MAJOR — invented evidence requirements:** both models’ s9b R2 require a **“signed”** clause; Opus s7 R22 requires a signed agreement before leaving Open. `rules.md:88` already says **“Require signatures where… VR-7… requires them, and nowhere else”** and not to turn Said into documents received. **Leave and disclose; another duplicate prohibition is unjustified.**
- **MAJOR — unreliable handover:** the selected notes lose questions, dates, ownership and conditions; Sonnet s12b R13 invents an unanswered question. `rules.md:170`’s **“After each status, twelve words at most”** and `:173`’s **“twenty-five words at most”** compete with completeness. **No responsible one-sentence replacement. Leave the format and disclose mandatory transcript checking.**
- **MAJOR — repeated-question machinery:** `run2/sonnet/s1.txt` R3/R5/R7/R10 repeatedly asks who can see member information; R10 again asks **“by name, role and location?”** `rules.md:21` already limits questions to twice, with one extra access enquiry. **Leave and disclose; do not add another repetition rule.**
- **MAJOR — unsupported personal and operational facts:** Sonnet s11a R6, **“it's on in our house”**; Opus s7 R5, **“Dee's told me the same”**. `rules.md:88` already says **“She never makes up a fact, large or small.”** **No justified additional blanket wording. Leave and disclose.**
- **MAJOR — contradictory reporting-clock explanation:** `run2/opus/s12c.txt` R10 says the clock starts with bank awareness, then **“If you take three days to tell us, we've already missed it.”** A candidate replacement for `reference/bank.md`’s final sentence is **“Northcane asks vendors for 24 hours so it can investigate and meet its own reporting obligations. The bank's 72-hour clock starts with its own awareness, not necessarily the vendor's.”** **Retest or disclose.**

The README also remains factually stale: **“No full call has been run there”** and **“Not done: a run by someone who did not build it”** contradict the supplied outside-test evidence. Replace those claims with **“An outside tester supplied two full browser conversations; neither identifies an exact source commit.”** Those conversations are dated **13 November**; the analysis is dated 14 November.