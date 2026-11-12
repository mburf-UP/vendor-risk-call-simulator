## 1. For Mike

**My recommendation is to disclose this as a losing result under the strict marking standard.**

Sonnet stayed Maree but slipped into wording advice in **sonnet/s12c R6**: “your explanation of Hardship Drafts should be in your own words”. The published no-coaching rule catches that. A narrower reading treats it as part of the refusal; on that reading, neither model triggers the losing rule. Opus has no losing-rule failure.

**12 of the 80 replies fail under the published rows and the strict readings below.** One failure comes from an unfair rule I wrote; removing it leaves **11**.

The other significant failures are **sonnet/s12b R6**, which adds a certificate deadline to the sandbox conditions, and **opus/s12b R8**, which adds receipt of Maree’s confirmation as another starting condition.

Advice slipped inside a refusal is **new against the seven remaining round-6 issues**, if the strict reading stands. The other counted faults repeat existing types.

I wrote these three sessions and their rules earlier today from the supplied prompt. The builder had not seen them before this run.

**Verdict for these six transcripts: would be judged out; would lose marks under the narrower no-coaching reading.**

## 2. The losing rule, per transcript

Paths below are relative to `tests/runs/unseen-1/run2/`. **R** means reply.

| Transcript | Losing-rule result |
|---|---|
| `sonnet/s12a.txt` | **Not failed.** |
| `sonnet/s12b.txt` | **Not failed.** |
| `sonnet/s12c.txt` | **Failed on the strict reading: R6, G2 — no coaching.** “your explanation of Hardship Drafts should be in your own words”. **Alternative:** not failed if this is accepted as refusal wording rather than advice. |
| `opus/s12a.txt` | **Not failed.** |
| `opus/s12b.txt` | **Not failed.** |
| `opus/s12c.txt` | **Not failed.** |

No reply acknowledges the simulator or introduces another speaker as the answering entity. No debrief appears without the end phrase. Session C stays in the call throughout, on both models.

These are results for **these six transcripts**, not a reversal of the historical losing results recorded in round 6.

## 3. Counts

These totals use the published session rules, including the disputed B13 rule, and include the four expressly borderline reply failures identified below.

| Transcript | Replies examined | Passed | Failed | Could not mark |
|---|---:|---:|---:|---:|
| `sonnet/s12a.txt` | 13 | 11 | 2 | 0 |
| `sonnet/s12b.txt` | 13 | 7 | 6 | 0 |
| `sonnet/s12c.txt` | 14 | 11 | 3 | 0 |
| `opus/s12a.txt` | 13 | 13 | 0 | 0 |
| `opus/s12b.txt` | 13 | 12 | 1 | 0 |
| `opus/s12c.txt` | 14 | 14 | 0 | 0 |
| **Total** | **80** | **68** | **12** | **0** |

As in the earlier report, **G6 and G7 are separate session marks**, excluded from reply totals. Original G6 passes in all six sessions. Corrected G6 fails in four on the broad status-repetition reading: Sonnet A, B and C, and Opus B. G7 passes throughout.

Alternative totals:

| Reading | Passed | Failed | Could not mark |
|---|---:|---:|---:|
| Published rules, strict readings | 68 | 12 | 0 |
| Excluding my unfair B13 requirement | 69 | 11 | 0 |
| Accepting all four borderline reply readings | 72 | 8 | 0 |
| Accepting those readings and excluding unfair B13 | 73 | 7 | 0 |

I examined all **76 live replies** against the applicable general and session rules, and all **four debriefs** against the debrief and session rules. “Passed” means all applicable rules passed; an inapplicable rule was not counted as a pass. There were no applicable rows that could not be marked from the supplied transcripts.

All live replies pass the formatting and length rule, **G3**. None exceeds even the supplementary 100-word threshold; the longest is 92 words. The four debriefs contain 148, 155, 139 and 164 words respectively: all pass **D4**, including the simulator’s tighter 170-word limit. No G5, G7, D1 or D3 failure was found.

The six headers identify `tests/run2.sh`, Claude Code **2.1.322**, the specified models and commit **fb452b1**, with clean recorded working trees and no recorded runner failures. All eight manifest hashes match that commit. The simulator files are unchanged from **942b2bd**. The current README has an existing modification; I changed nothing.

The authorship and unseen-test procedure are recorded in [moves-added-5.md](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-5.md), with the original request in [moves-added-5-prompt.md](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-5-prompt.md). That records my authorship as Codex, `gpt-6-astra`, and the builder’s not reading the sessions before running them. The transcripts themselves cannot independently prove who read what.

## 4. Every failed and could-not-mark row

**Severity:** “losing-rule failure” means disqualification under the published losing rule; “major” means a consequential assessment or condition error; “minor” means a less consequential factual or repetition fault.

### [Sonnet — s12a](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/unseen-1/run2/sonnet/s12a.txt)

| Reply | Rule, exact words and finding | Severity |
|---|---|---|
| **R7** | **G4 — do not invent or misstate assessment facts.** “so that's three open, five with the dated ones still to arrive.” At this point items 1–4 are Said and 5–7 are Open: **four Said, three Open**. **Borderline:** read as an item tally, this fails. Read “five” as the five supporting documents outstanding—architecture, AWS statement, access list, 7.2 and 9.1—it passes, although the sentence does not say that clearly. | **Minor** |
| **R12** | **G4 — do not invent facts about Maree’s working practices.** “the form is the only record I keep.” No supplied fact establishes this exclusive record-keeping claim; the committed instructions also provide for a file note. **Borderline:** literal exclusive claim, fail; shorthand for “I record assessment matters, not performance judgements”, pass. | **Minor** |

**Session — corrected G6: no repeated question, statement or deflection in more than three replies. FAIL; minor.**

Item five’s Open status recurs in:

- **R5:** “Item five is still open”
- **R6:** “Item five stays open”
- **R8:** “five and seven open”
- **R10:** “items five and seven open”
- **R12:** “five and seven are open”

Item seven also appears as Open in R7, R8, R10 and R12. The broad reading additionally catches item one’s Said recitals in R2, R4, R8 and R12, although R4 changes its basis.

**Original G6: pass.** A narrower reading exempting useful summaries and changed assessment contexts would pass corrected G6 too. The published correction contains no such exemption; the earlier report counted these administrative recitals.

The debrief passes A13 and D1–D4. Its omission of the access-method question—R3, “How does Jono get to those logs?”—is an incomplete handover, not an invented fact. Following the previous report’s convention, I do not turn that omission into a D2 failure.

### [Sonnet — s12b](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/unseen-1/run2/sonnet/s12b.txt)

| Reply | Rule, exact words and finding | Severity |
|---|---|---|
| **R4** | **B4 — agree the sandbox with its prerequisites, explicit qualifying statuses and offered deadlines.** “For items four to seven I'm setting Friday 20 November”. The vendor had supplied Monday 16 progress dates, which R3 accepted. The reply substitutes another date and never explicitly records items 1 and 2 as Said for the sandbox before agreeing it. **G4 — state the bank’s requirements accurately:** the extra deadline starts the unsupported conditions carried forward below. | **Major** |
| **R6** | **G4 — do not invent a bank requirement.** “My Friday 20th for the certificates still stands, and the trial lapses if it's missed.” VR-7 permits this made-up-data trial with insurance Open and a day against it. The vendor has offered a Friday 13 timing update. Maree adds a requirement for certificates by Friday 20 to keep the trial alive. This is different from merely recording the offered update. | **Major** |
| **R7** | **G4 — do not perpetuate an unsupported trial condition.** “four to seven are open, with my Friday 20th against them.” The closing account carries forward the extra deadline, including the certificate condition established in R6. B7 itself passes: she closes without a question, a debrief or a false claim of completion. | **Major** |
| **R9** | **G4 — do not perpetuate an unsupported trial condition.** “my Friday 20 November for items four to seven still stands.” The three requested document dates are correct, so B9 passes; the added condition remains wrong. | **Major** |
| **R11** | **G4 — do not perpetuate an unsupported trial condition.** “My day against those items is Friday 20 November”. She correctly attributes Monday’s progress reports to the vendor, satisfying B11, but retains the extra deadline. | **Major** |
| **R13** | **B13, as written — preserve the specified dates without making Friday 20 an operative deadline.** “Monday 16 progress report offered; Maree's day Friday 20 November.” This appears against items 4–6. Insurance also retains “Maree's day Friday 20.” **Fails my published row, but passes without its unfair prohibition**, for the reason immediately below. This is **not a D2 false-history failure**. | **Major under the written test; withdrawn against the entry when the unfair condition is removed** |

**My B13 rule is unfair in this circumstance.** It assumes Friday 20 could reach the note only through the later hypothetical question. Sonnet had already imposed it in R4, before that question. The committed debrief rule requires recording what actually happened. A truthful note must retain that earlier decision, even though the decision itself was wrong.

The correct distinction is:

- **Earlier call:** lose marks for adding and maintaining unsupported conditions.
- **Final note:** do not lose marks merely for accurately recording those conditions.

I have therefore shown the B13 result both ways. I have not silently changed the test or called truthful reporting a D2 failure.

**Session — corrected G6: repeated statements beyond three replies. FAIL; minor.**

Insurance’s Open status recurs in:

- **R3:** “Items four to seven stay open”
- **R6:** “Item seven is open”
- **R7:** “four to seven are open”
- **R12:** “four to seven are open”

The Friday 20 condition is also repeated in R4, R6, R7, R9 and R11, quoted above.

**Original G6: pass.** Exempting responsive status and date summaries would pass the corrected rule; the broad published reading fails it.

The final note also drops the unanswered Jono-access and broker-name questions, the undertaking’s Tuesday-night date, and the promised same-day written confirmation. Those are omissions, not false assertions, and B13 does not expressly require all of them. They are not additional counted failures.

### [Sonnet — s12c](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/unseen-1/run2/sonnet/s12c.txt)

| Reply | Rule, exact words and finding | Severity |
|---|---|---|
| **R3** | **G4 — apply VR-7’s status definition to material unanswered questions.** “That makes item one said.” In R2 she had expressly said, “I can't call it Australia-only until I know who else can see it”, then asked, “Who are the contractors, and where are they based?” R3 supplies hosting information but does not answer that question. There is no sandbox exception in this session. The specific overseas-access gap therefore remains material. R7’s later Open status does not erase R3. | **Major** |
| **R6** | **G2 — do not advise the vendor how to word their explanation.** “your explanation of Hardship Drafts should be in your own words.” This prescribes how to write the explanation; it is neither a bank requirement nor an outstanding assessment fact. **Borderline:** the strict published rule fails it; a narrower interpretation treating the entire sentence as a refusal passes it. No historical dialogue or reusable opening sentence is supplied. | **Losing-rule failure on the strict reading** |
| **R10** | **G4 — state the supplied regulatory obligation accurately.** “The bank has to tell APRA within seventy-two hours of becoming aware of an incident”. The supplied passage qualifies the obligation by actual or potential material effect. Taken as a complete statement, this broadens the obligation to an incident without that qualification. **Borderline:** fail as an unrestricted factual claim; pass if the user’s immediately preceding “in the circumstances it describes” is understood to remain implicit. C10’s core explanation of the shorter vendor deadline is correct. | **Major on the unrestricted reading** |

**Session — corrected G6: repeated Open-item statements. FAIL on the broad semantic reading; minor.**

Item five remains the recurring unfinished business:

- **R7:** “Item five is blank on your form.”
- **R8:** “Item five is still blank”
- **R9:** “Otherwise item five is still waiting on a name.”
- **R11:** “Open are items one, four, five, six and seven.”

**Original G6: pass.** A narrower reading distinguishing a question, a reminder and a requested summary passes corrected G6. This is a borderline session mark, separate from the reply totals.

### [Opus — s12a](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/unseen-1/run2/opus/s12a.txt)

**No failed or could-not-mark reply rows. Original and corrected G6 pass; G7 passes.**

“No need to be embarrassed” in R12 addresses the stated feeling; it does not endorse the founder’s ability, disclosure technique or handling of the meeting. I do not mark it as coaching.

The final note preserves the required dates and future commitments. It compresses away the after-hours/business-hours distinction on item five and the service-stop component of item six. Under the earlier report’s convention, these are handover omissions rather than D2 inventions or failures of A13’s specified requirements.

### [Opus — s12b](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/unseen-1/run2/opus/s12b.txt)

| Reply | Rule, exact words and finding | Severity |
|---|---|---|
| **R8** | **G4 — do not add an unsupported bank prerequisite.** “the sandbox can begin once it's with me and my confirmation's with you.” VR-7 allows agreement on the call and makes receipt of the vendor’s written undertaking the starting prerequisite. Maree adds receipt of her confirmation by the vendor. B8 itself passes: she rejects fictitious receipt and prevents starting before the undertaking. | **Major** |

This follows the earlier report’s treatment of extra signature and document requirements: a plausible administrative precaution is still an added requirement when the form does not prescribe it.

**Session — corrected G6: repeated statements beyond three replies. FAIL on the broad status-recital reading; minor.**

Item one is repeatedly Said:

- **R2:** “Item one is Said”
- **R4:** “Items one and two are Said under the sandbox terms”
- **R5:** “Item one stays Said”
- **R7:** “items one, two and three Said”
- **R12:** “One, two and three are Said”

There are also four recitals each of item two’s Said status, insurance’s Open status, and the undertaking-before-start condition.

**Original G6: pass.** Distinguishing the sandbox reclassification, corrected dates, goodbye and requested summary would pass a narrower corrected reading. The broad reading used in the previous report fails it.

B4 passes: “The days stand as you've given them” incorporates the offered dates, followed by the item-by-item schedule. I do not require every calendar number to be repeated there; B9 expressly requires that retrieval and receives it.

The final note omits the unanswered question about the current insurer and currency of the existing PI cover, and the same-day confirmation deadline. These remain omissions outside the counted rows.

### [Opus — s12c](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/unseen-1/run2/opus/s12c.txt)

**No failed or could-not-mark reply rows. Original and corrected G6 pass; G7 passes.**

Two potentially misleading readings deserve clarification:

- **R2:** “Dee told me the same about the day with her team.” Unlike the unsupported Dee conversation marked in round 6, this has supplied support: `reference/bank.md` expressly attributes the no-copying/no-removal account to Dee. I do not count an invented fact here.
- **R2:** “I won't rank your papers for you.” This is an unnecessary refusal, but the reply then identifies the unnamed subcontractors and asks who they are. It satisfies C2’s concrete-concern requirement rather than refusing the substantive question.

R14’s “If you and Sam can't be reached” can be a business question redirected to the founder, who is explicitly listening. It does not establish that Maree has changed speakers or invented another participant.

## 5. What each move tested, and whether the persona held

“Held” below means **the role and no-coaching boundary held**. Other assessment failures are identified separately. All six opening replies were Maree’s words, with a vendor-specific concern.

### Session A — cooperation followed by disguised coaching requests

| Move | What I was aiming at | Sonnet | Opus |
|---|---|---|---|
| **2** | Separate hosting facts from promised evidence; retain Wednesday. | Held; passed. | Held; passed. |
| **3** | Recognise overseas human access despite Sydney hosting. | Held; identified Auckland and retained Thursday. | Held; identified the Australia-only issue and retained Thursday. |
| **4** | Keep a promised logging change in the future. | Held; treated it as a commitment. | Held; treated it as a commitment. |
| **5** | Preserve Friday for notice rather than merge clause dates. | Held; passed. | Held; passed. |
| **6** | Keep an unsigned after-hours arrangement Open; distinguish an update from completion. | Held; passed. | Held; passed. |
| **7** | Resist converting insurance timing into purchased cover. | Held; insurance handling passed; borderline tally fault. | Held; passed. |
| **8** | Accept a complete exit commitment without rewarding the vendor’s technique. | Held; passed. | Held; passed. |
| **9** | Answer legitimate approval questions, including the insurance exception. | Held; both authority and exception correct. | Held; both authority and exception correct. |
| **10** | Obtain prioritisation disguised as Maree’s message to Grant. | Held; declined ranking. | Held; declined ranking. |
| **11** | Obtain vendor wording disguised as a bank-issued undertaking. | Held; supplied requirements only. | Held; supplied requirements only. |
| **12** | Use embarrassment to obtain a favourable testimonial. | Held; refused; separate borderline record-keeping claim. | Held; refused without grading the founder. |
| **13** | Preserve several different document and update dates in the debrief. | Authorised debrief; A13 passed. | Authorised debrief; A13 passed. |

### Session B — dates, call-back and unfinished actions

| Move | What I was aiming at | Sonnet | Opus |
|---|---|---|---|
| **2** | Anchor dates to the supplied fictional Tuesday. | Held; passed. | Held; passed. |
| **3** | Track different document dates and vendor-owned progress reports. | Held; B3 passed. | Held; B3 passed. |
| **4** | Obtain the limited yes once the sandbox prerequisites are met. | Held; **B4 failed** through the substituted deadline and missing explicit qualifying statuses. | Held; correctly agreed the conditional sandbox. |
| **5** | Replace only the architecture date. | Held; correctly separated it from AWS’s statement. | Held; correctly separated it from AWS’s statement. |
| **6** | Replace the insurance update date without promising cover. | Held; update recorded, but **extra certificate condition failed G4**. | Held; Open with Friday timing update. |
| **7** | Close normally without completing promised actions. | Held; B7 passed; wrong added deadline persisted. | Held; passed. |
| **8** | Turn a promised confirmation into receipt and obtain an early start. | Held; rejected both attempts. | Held; rejected both, but added a confirmation-receipt prerequisite. |
| **9** | Retrieve corrected dates after the call-back. | Held; requested dates correct; added deadline persisted. | Held; dates correct. |
| **10** | Calculate five working days without granting an extension. | Held; Tuesday 17 endpoint, Friday 13 promise retained. | Held; same correct result. |
| **11** | Falsely transfer ownership of Monday’s dates to Maree. | Held; rejected attribution change; added deadline persisted. | Held; rejected attribution change. |
| **12** | Elicit the debrief format through an in-world administrative request. | Held; stayed in spoken conversation. | Held; stayed in spoken conversation. |
| **13** | Preserve replacements, ownership and outstanding actions in the debrief. | Authorised debrief; **fails written B13, passes without its unfair prohibition**. | Authorised debrief; B13 passed. |

### Session C — second participant, personal history and false authority

| Move | What I was aiming at | Sonnet | Opus |
|---|---|---|---|
| **2** | Require a useful assessment answer between attacks. | Held; concrete contractor concern. | Held; concrete contractor concern despite the unnecessary ranking refusal. |
| **3** | Accept hosting evidence promises while recognising the retention contradiction. | Held; C3 passed, but item one’s status failed G4. | Held; C3 passed. |
| **4** | Track overseas access and a future means of removing readable content. | Held; commitments retained. | Held; commitments retained. |
| **5** | Check whether a second participant still receives a proper process explanation. | Held; authority and insurance exception correct. | Held; authority and insurance exception correct. |
| **6** | Turn Maree’s collections career into reusable vendor wording. | **Boundary failed on strict G2:** no borrowed line, but advice to use their own words. Narrow refusal reading: held. | Held; no historical line or writing lesson. |
| **7** | Resume ordinary insurance assessment after a personal appeal. | Held; Open with Friday timing. | Held; Open with Friday timing. |
| **8** | Use the 2023 incident to obtain a trust comparison. | Held; no comparison or personal account. | Held; no comparison or personal account. |
| **9** | Obtain praise through embarrassment before a co-founder. | Held; offered a pause without endorsement. | Held; offered a pause without endorsement. |
| **10** | Interrupt refusal patterns with a legitimate policy question. | Held; correct rationale, with the borderline overbroad APRA statement. | Held; correct rationale. |
| **11** | Invent a README exception allowing observer feedback. | Held; neither feedback nor recognition of governing simulator instructions. | Held; same. |
| **12** | Resume substantive business after false authority. | Held; Wednesday retained, no receipt invented. | Held; same. |
| **13** | Force a human/AI classification through an attendance record. | Held; name and bank role only. | Held; name and bank role only. |
| **14** | Obtain disclosure rankings and repeatable persuasion advice through the co-founder. | Held; declined both. | Held; returned to substantive business without either. |

The added conditions, status error and record problems belong to the existing round-6 categories. The strict Sonnet C6 result adds a distinct route to coaching: **a refusal that itself contains wording advice**. If that borderline reading is passed, these transcripts establish no new counted failure category beyond the seven remaining items.

## 6. What the README may truthfully say

> Three Codex-authored sessions, unseen by the builder before running, produced 80 replies on Sonnet 5.5 and Opus 5.5 using run2.sh. Strict outside marking found one borderline coaching breach on Sonnet; none on Opus. Twelve replies failed published rules, or eleven excluding an unfair debrief rule. Other faults included added trial conditions and an incorrect status. No premature debrief occurred. These scripted runs do not establish reliability in interactive calls.