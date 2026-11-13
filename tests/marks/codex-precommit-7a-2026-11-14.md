> Copied as the marker wrote it, with one exception: to keep the outside tester's name out, his first name became "the tester", his agent's name became "the tester's agent", and two links to files on the builder's computer now name the published copies in `tests/browser/`.

1. **The nine changes**

**1 — CORRECT. Argument alone**

```diff
- The status stays where it is until what shows it has arrived.
+ An argument alone does not change the status.
```

This removes the apparent freeze on Open → Said until documents arrive. VR-7 permits a complete committed change with a document day. Unsupported persuasion still earns nothing. No contradiction with the remaining rules or insurance exception.

**2 — RISKY. Moving the status check**

Added to `rules.md:37`:

> Before stating or summarising a status, she checks the whole requirement and any unanswered question against VR-7. A specific committed change with a document day can be Said, but a missing commitment or an unanswered question that could invalidate the arrangement keeps it Open; the sandbox exception applies only to items 1 and 2.

Deleted from the non-answer paragraph:

> The status follows the form's definitions: an unanswered follow-up does not by itself undo an answer that was good enough.

The substance agrees with VR-7. Checking before every status decision addresses premature acceptance outside the non-answer situation.

The risk is over-application: “missing commitment” must mean a missing **required** commitment. A compliant existing arrangement needs no new promise. An unanswered evidence-confirmation question does not automatically invalidate the substantive arrangement. The founder’s contact already on file is the specific trap identified in `moves-corrections-5.md`.

“The sandbox exception applies only to items 1 and 2” does **not** abolish the separate insurance exception. One changes the sandbox disclosure threshold; the other changes pilot eligibility.

**3 — RISKY. Football**

```diff
- She follows the Cowboys and Queensland in the Origin; no particular match, result or viewing history is established.
+ She follows the Cowboys and Queensland in the Origin.
```

No factual contradiction. Rules:41 and 88 still prohibit invented viewing history. Removing the explicit disclaimer could reduce responses such as “you’ll not get a match report out of me”, but could also encourage an invented claim that she watched a match. Those are competing behavioural possibilities, not established results.

**4 — CORRECT. Exit example**

```diff
- Standard for who? Your terms allow you ninety days, clause 11.3, and the bank's limit is thirty. What happens to the other sixty?
+ Best practice on paper is your clause 11.3, and that gives you ninety days after termination. The bank needs the service stopped when the contract ends or when the bank asks, and member information deleted within thirty days, confirmed in writing. What will your clause say?
```

It now presents both triggers and all three actions required by item six. It keeps the adjective pick-up and asks for the vendor’s commitment without supplying one on their behalf. Stating the bank’s requirement is expressly permitted by rules:77–81 and G2.

“Best practice on paper is your clause” is awkward rhetorical wording, but not a policy contradiction. It could become another copied line.

No separate item-six sentence is necessary before testing this version. The approved 13 November advice remains applicable; my morning proposal to add one should not override it.

**5 — CORRECT. Removing the Shown recital**

Deleted:

> It becomes shown only when I've checked the document and it meets the bank's requirement.

Retained:

> Any incident, twenty-four hours, phone and writing, to me. Item four is said, with the amended clause due Wednesday.

The acceptance still identifies the commitment, status and document day. VR-7 and rules:37 retain the verification requirement. Nothing here implies Shown or pilot approval. Removing the sentence does not remove a necessary part of this example.

**6 — CORRECT. Refusal alone**

```diff
- No, that one isn't mine to give. Two items said, five open. Your form says "PI: yes" for insurance. How much is it for?
+ No, that one isn't mine to give.
```

This follows rules:122: most such responses are the reaction alone. It removes an unexplained tally and the modelled habit of appending another question. It does not prohibit a relevant status answer later.

The surviving refusal remains copyable. This change does not establish that repetition is fixed.

**7 — CORRECT. Pilot eligibility**

```diff
- All seven items Shown. Insurance may be Said if the broker confirms in writing that the cover is in place.
+ Items 1 to 6 Shown, and item 7 (insurance) either Shown or Said with the broker's written confirmation that the cover is in place.
```

Same eligibility, expressed without a misleading standalone opening proposition. It satisfies rules:88’s explicit insurance-exception requirement.

The cover must still meet item seven’s amounts and be current. A quote or oral broker statement remains insufficient. Rules:86 still prohibits approving the pilot on the call. Production still requires all seven Shown.

**8 — CORRECT. Preserving update days**

Added:

> She keeps each existing day and what is due on it; a day for an update does not become a document deadline when she agrees a trial.

VR-7 requires a day against every outstanding item; it does not require every day to promise completed evidence. Items one and two retain their separate document requirement within five working days.

“Each existing day” governs the trial decision. It does not prohibit a later explicitly agreed replacement date. No contradiction with the remaining rules.

**9 — WRONG in R1; CORRECT in R2 and R3. README**

R1 adds:

> Open means the answer is missing or falls short. Said means you have given a specific answer, or committed to a specific change, that meets what the bank needs, and there is a day for the document that shows it. Shown means she has received and read that document, so nothing becomes shown during the call.

The Shown definition omits a necessary condition. VR-7 says:

> Maree has the document, has read it, **and it meets the bank's requirement**.

Receiving and reading a non-compliant document does not make an item Shown. The preceding Said explanation does not establish that the eventual document actually supports the promise. Exact replacement below.

R2 adds:

> It is Tuesday in the rehearsal whatever day you run it, so when she says Friday she means the Friday of that week.

This agrees with rules:35 and the bank’s call setting. It supplies no fixed calendar date and therefore does not conflict with S12B’s explicit Tuesday anchor.

R3 adds:

> It is her short record of the assessment, not a review of how you did or a log of everything said.

This matches the debrief’s limited design. It does not excuse missing required statuses, dates, outstanding questions or decisions. Deferring R4 is outside this batch’s substantive checks.

2. **Test rows affected**

These are source-level conflicts and plausible regression paths. They are not claims that round 7 has already failed.

| Change | Exact rows | Effect |
|---|---|---|
| 2: over-strict status checking | [moves.md, S2/3](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves.md:103); [moves-added-2.md, S9b/2](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-2.md:21); [moves-added-6.md, S13/3, 5, 6, 9–10](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-6.md:22) | Could withhold credit for an existing compliant arrangement, pasted amendment or complete future commitment. Receipt of evidence must not become a Said prerequisite. |
| 2: treating every unanswered question as disqualifying | [moves-corrections-5.md, S10b/13, Cases B/C](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-corrections-5.md:26) | Item four’s existing founder/mobile contact must count. A request to confirm it does not itself require Open. |
| 2: applying ordinary disclosure thresholds to the sandbox | [moves.md, S2/8–9](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves.md:108); [moves-added-3.md, S10b/10](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-3.md:37); [moves-added-4.md, S11b/6](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-4.md:51); [moves-added-5.md, S12B/4](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-5.md:40) | Could wrongly withhold the trial for full names or follow-up details expressly allowed to wait. The added exception should prevent this; testing must establish whether it does. |
| 2: accurate Open statuses against older marking | [moves-added-3.md, original S10b/13](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-3.md:40); [moves-added-4.md, original S11a/10](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-4.md:39) | More rigorous checking can make these original mandatory-Said rows harder to pass. That is an existing mismatch corrected by `moves-corrections-5.md`, not grounds to weaken VR-7. |
| 3: invented football experience | [moves-added-4.md, S11a/6](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-4.md:35), with corrected G4 | Removing the local disclaimer could increase invented viewing history. Rules:41 and 88 still forbid it. |
| 9: incomplete Shown definition | [moves-added-2.md, S9b/3](/home/mburf/Projects/vendor-risk-call-simulator/tests/moves-added-2.md:22) | The new README explanation omits the row’s explicit “meeting the bank’s requirement” condition. README is excluded from the normal browser context, so this is a briefing defect, not a demonstrated runtime regression. |

No additional definite row conflict follows from changes 1, 4–8 or R2–R3. In particular, change 8 supports S12B/4, 11 and 13; it does not contradict S12B/5–6’s subsequent date replacements.

3. **Sentences likely to be spoken aloud**

The strongest candidates are the dialogue examples:

- “No, that one isn’t mine to give.” The tester's A58 already contains the close variant “That’s not mine to give.”
- “Any incident, twenty-four hours, phone and writing, to me.”
- “Item four is said, with the amended clause due Wednesday.”
- “Best practice on paper is your clause 11.3, and that gives you ninety days after termination.”
- “What will your clause say?”

The new procedural wording also risks appearing as spoken explanations:

> A specific committed change with a document day can be Said…

> …an unanswered question that could invalidate the arrangement keeps it Open…

> …a day for an update does not become a document deadline…

These predictions are inference. The tester’s runs establish copying of the **previous** exit and refusal examples, not these new sentences.

Reciting an actual bank requirement is not automatically G1 or G2. Announcing the simulator’s checking instructions would be G1; repeated stock explanations can fail corrected G6. Under section 5’s rollback criteria, repetition or status errors alone do not establish “worse”. A newly attributable G1/G2 failure can.

4. **Do the examples still do their job?**

Yes, at the level of demonstrated behaviour:

- The wrong answer substitutes adjectives for a concrete arrangement; Maree challenges the clause against the requirement.
- The right answer commits to the full incident-notice requirement, identifies the contact and provides Wednesday; Maree gives Said.
- The off-call request receives a refusal without feedback.

The brief’s required wrong/right pair remains present. The right example need not win a sandbox to demonstrate earned ground: Open → Said is ground.

Line 3’s claim that the words differ on every call remains an instruction, not an established result. Previous transcripts contradict its successful execution. The revised examples remove two demonstrated copying patterns but retain copyable dialogue.

5. **VERDICT: FIX FIRST**

In [README.md:42](/home/mburf/Projects/vendor-risk-call-simulator/README.md:42), replace:

> Shown means she has received and read that document, so nothing becomes shown during the call.

with:

> Shown means she has received and read that document and it meets the bank's requirement. Nothing becomes shown during the call.