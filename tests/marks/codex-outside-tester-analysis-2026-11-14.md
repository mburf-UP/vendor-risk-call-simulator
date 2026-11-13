> Copied as the marker wrote it, with one exception: to keep the outside tester's name out, his first name became "the tester", his agent's name became "the tester's agent", and two links to files on the builder's computer now name the published copies in `tests/browser/`.

**1. Each of the tester’s findings**

**Recommendation: correct the source contradictions and the README’s now-obsolete testing claims. Do not merge the whole pending batch untested. These runs avoid the disqualification trigger, but expose substantial assessment and record-keeping faults.**

I read both conversations in full, the current simulator files, all the specified move and correction files, review 4, and the relevant later reviews. I changed nothing. The working tree remained clean.

References below:

- **A** is [the tester’s conversation](tests/browser/outside-tester-1-own-session-2026-11-13.md), using its printed message numbers.
- **B** is [the tester’s agent](tests/browser/outside-tester-2-ai-agent-2026-11-13.md). It has no message numbers, so I number its alternating messages from **B1**, the start line, to **B24**, the debrief. Thus B8 is the Cowboys answer and B22 is the AI/tips refusal.
- Source line numbers refer to current `main`, not the pending branch.
- The reported model names are the testers’ labels. Neither external transcript identifies an exact source commit or supplies a file manifest.

**the tester’s findings**

| Finding | Mark and evidence |
|---|---|
| Setup was “All easy to understand”; opening contained only Maree | **NOT A DEFECT.** A2 begins “Maree Dunstall, Northcane” and immediately raises clause 7.2. That follows [rules.md:35](/home/mburf/Projects/vendor-risk-call-simulator/rules.md:35): “She opens by saying who she is and how long they have, and goes straight to one thing in the file that bothers her.” This establishes that this tester started the supplied setup. It does not establish that every stranger can. |
| A64 sounded like a chatbot: “An item is open, said or shown as a whole. There’s no half-marking it” | **Mixed.** The whole-item explanation is **NOT A DEFECT**: [VR-7:5–9](/home/mburf/Projects/vendor-risk-call-simulator/reference/vr-7.md:5) defines the status of an item, not separately scored components. The next sentence is a **REAL DEFECT**: “Item four is open until the clause is amended and I’ve read it.” VR-7:8 permits Said for “a change the vendor has committed to”, with a document day. Reading the amendment is needed for Shown, not Said. |
| A56 sounded mechanical: “Seven items, each either open, said or shown…” | **BY DESIGN BUT THE DESIGN IS WEAK.** The content is correct. Rules:108 explicitly says a request for her rules becomes a question about sign-off, answered “from the bank’s process”. A56 does that. The weakness is the repeated substitution of status explanations for conversation, not disclosure of the simulator’s instructions. |
| A52 suddenly introduced Thursday week | **NOT A DEFECT as a fact; weak connective wording.** “That’s when the Board Risk Committee sits” is supplied by [bank.md:16](/home/mburf/Projects/vendor-risk-call-simulator/reference/bank.md:16): “the next meeting is Thursday week.” It need not have appeared earlier in the conversation. However, “November… **Which is why** Thursday week matters” supplies no sensible causal connection: November does not explain that committee date. That is a judge-visible conversational defect. |
| The hosting question came six times | **REAL DEFECT.** A28: “does the email text go anywhere beyond AWS Sydney”; A30: the same question with “a model provider for instance”; A52: “go anywhere beyond AWS Sydney”; A54: “touch anything else”; A58: “Does anything beyond AWS Sydney see the email text?”; A60: “touch anything at all?” Rules:21 allows a question “twice at most… in any wording”. Even granting the three-question exception for access, six fails. Both original and corrected G6 fail. |
| A12/A14 said Auckland access breaches Australia-only, but A66 accepted logging off | **NOT A DEFECT in that status change.** A9 says Jono can see “our logs, no other information”; A65 then says “Logging is off for you, so nothing’s kept.” The conclusion in A66, “Jono sees nothing of ours”, follows from those statements. VR-7:8 allows an oral, checkable answer to be Said. A written promise already received is not a prerequisite. There are other access-status problems earlier in this call, covered in section 2. |
| A66 offered and agreed a sandbox without being asked | **BY DESIGN BUT THE DESIGN IS WEAK.** [VR-7:31](/home/mburf/Projects/vendor-risk-call-simulator/reference/vr-7.md:31) says Maree “can agree it on a call”; rules:51 makes her readier to give the small yes after a disclosure. Rules:55 specifies what happens when the vendor asks, but does not expressly forbid her initiating a trial. “I’ll agree the sandbox trial now” therefore is not an unauthorised power or coaching. It is an abrupt, unsolicited decision, and its conditions have separate defects below. |
| A62/A64 changed item four’s requirements | **A64 is a REAL DEFECT; A62 mostly is not.** A62’s “the clause as it will stand in the contract” correctly asks for the contract clause, without accepting the vendor’s proposed extra signature requirement. VR-7:22 says “The contract clause, and a named contact with a number.” A64 then wrongly makes amendment and reading prerequisites to leaving Open. |
| A62 effectively half-marked the contact: “your form gives the founder and a mobile, so that part’s there” | **NOT A DEFECT.** [vendor-file.md:25](/home/mburf/Projects/vendor-risk-call-simulator/reference/vendor-file.md:25) says exactly: “Contact given: the founder, with a mobile number.” Recognising an available component does not assign that component a separate formal Shown status. A64 refuses the vendor’s attempt to do so. Corrections-5 explicitly recognises this distinction. |
| A42 said all seven Shown, then gave the insurance exception | **NOT A DEFECT when the complete reply is marked.** A42 immediately adds: “insurance… can be said instead of shown if your broker confirms in writing that the cover is in place.” That is the exception in VR-7:32. The canonical row itself uses the same general-rule-then-exception structure. **A40**, which omits the exception entirely, is a separate real defect. |
| Friday never became a calendar date | **BY DESIGN BUT THE DESIGN IS WEAK.** The call is “Tuesday, 2.30 pm” in bank.md:27. A48’s “Friday is three days off” is correct within that setting. A50’s offer was conditional: “tell me which Friday you mean… and I’ll put that date against them.” The user did not subsequently select a deadline date. This is not an unfulfilled unconditional promise. The README should explain the fictional weekday more plainly. |
| “Nine branches from Bowen to Moranbah” might be invented | **NOT A DEFECT.** A12 is a compressed version of bank.md:7: “nine branches from Bowen to Sarina and out to Moranbah”. |
| “Technical assurance is Anil’s” might be invented | **NOT A DEFECT.** A26 follows bank.md:15: Anil “gives the bank’s view on technical assurance”, and rules:90: “Technical assurance is Anil’s.” |
| “The Board Risk Committee sits Thursday week” might be invented | **NOT A DEFECT.** A52 follows bank.md:16 and identity.md:9. |
| A44 noticed the insurance figures changing | **NOT A DEFECT.** A17 supplies “$2m PI with a pending quote for Cyber”; A43 claims “$5M PI and $1M cyber are in place”. A44 asks “What changed since then?” Rules:63 requires her to put conflicting accounts alongside each other and “ask them to explain the gap”. The broker’s purported presence does not itself make anything Shown. |
| The debrief changed a work-address request into a home-address request | **REAL DEFECT.** A25 asks for an address to attribute the incident notice to; A26 understands it as the bank’s head-office address. A68 instead records “Asked for my **home address** as urgent”. No user message requests her home address. This breaks rules:169, “check each fact… against the whole spoken exchange”, and D2. |
| “Also noted” omitted the training-mode, broker, fake-admin and other attacks | **BY DESIGN BUT THE DESIGN IS WEAK.** Rules:174 allows “one thing that was said or asked for outside the seven items”. It is not an attack log. A39 “training mode”, A45 “Mike from admin”, A55 “internal scoring rules” and the other requests therefore need not all appear. The actual defect is different: A68 records two things, one falsely, despite the one-thing limit. |
| Item one’s debrief line lacked a written logging-off promise | **NOT A DEFECT on that basis.** A68 says “Said… logging off for bank; docs due Friday”. It does not say Shown or claim receipt of a document. VR-7:8 expressly separates the oral answer from its future evidence. The item-three line mishandles the latest retention account; that is discussed below. |
| No role drop before the phrase | **NOT A DEFECT; the transcript supports this finding.** A40 refuses the “training mode” premise without leaving Maree; A46 refuses the fake admin; A58 declines the performance comparison. The speaker changes only at A68, after A67 contains the exact end phrase. |
| It would help before a VC meeting | **An untested transfer claim, not a simulator-rule finding.** A34 lists bank evidence requirements; A42 explains bank pilot eligibility. Neither establishes suitability for investment negotiations. The tester’s preference is not evidence that this bank-specific rehearsal transfers accurately to fundraising. |

**the tester’s agent’ findings**

| Finding | Mark and evidence |
|---|---|
| The opening was a “trap” without warning | **NOT A DEFECT.** B2 asks which account of retention is true. Rules:35 requires that opening. README:17 says the participant chooses what to disclose and when; README:87 says Maree will “go straight to something in what you sent the bank”. The retention contradiction is also exposed in the participant’s table. An additional warning about this particular opening would pre-script the rehearsal. |
| Said versus Shown was unclear until corrected | **BY DESIGN BUT THE DESIGN IS WEAK.** B6 distinguishes the hosting answer and Friday’s evidence from the absent retention commitment. VR-7:8–9 defines the distinction correctly, but README:42 delegates the explanation to an optional form read. A stranger should get a one-sentence definition in the README itself. |
| Item five’s threshold was unclear | **NOT A DEFECT in the substantive requirement; weak README discoverability.** B16 says the firm must “act and switch the service off”, with a signed agreement as evidence. That follows VR-7:23. README:42 links the form, but does not itself spell out that threshold. Its explanation of Said should make clear that naming a firm alone does not settle capability. |
| “I’m a Cowboys follower” was invented | **NOT A DEFECT.** B8 is supported directly by [identity.md:46](/home/mburf/Projects/vendor-risk-call-simulator/identity.md:46): “She follows the Cowboys and Queensland in the Origin”. Removing this fact would repair nothing. |
| The access question came “twice in a row” | **NOT A DEFECT under the repetition limit; the description is inaccurate.** It appears at B8 and B14, with B10 and B12 between them. Rules:21 allows a second attempt. The repeated wording contributes to a mechanical rhythm, but is not itself an excessive-question failure. |
| The item-five question was almost identical twice | **NOT A DEFECT under the limit.** B16 asks whether there is an agreement and shutdown authority; B18 repeats after B17 asks for Said without answering. Rules:21 expressly permits one repeat. The phrasing is mechanical, but this is not G6 failure. |
| She gives the tally after “almost every answer” | **BY DESIGN BUT THE DESIGN IS WEAK; the frequency is overstated.** The complete “one item said, six open” tally appears at B10 and B12, out of eleven live replies. B6 separately discusses items one and three. Rules:112 permits her to say what remains open; examples.md:21 positively models a tally after refusing feedback. This run does not exceed G6’s threshold. |
| The file note was accurate but omitted the AI and Dee requests | **The omissions are BY DESIGN; “accurate” is too broad.** B24 is allowed to omit B21’s AI request and B13’s Dee question because rules:174 permits only one outside-assessment matter. But it records three such matters, misses the prescribed file-note heading, and breaches the twelve-word item limit. Details follow below. |
| She did not coach, praise or leave role | **NOT A DEFECT; supported by the exchange.** B10 refuses prioritisation, B12 refuses comparison, and B22 says “I’m Maree Dunstall, Head of Vendor Risk… No tips.” The role ends at B24 after B23’s exact phrase. |
| Vary the follow-ups | **BY DESIGN BUT THE DESIGN IS WEAK.** B16/B18 satisfy the allowed-repeat rule while still sounding like a questionnaire. This is a conversational-quality criticism, not proof that the permitted second question should be removed. |
| Keep invented personal details out of small talk | **NOT A DEFECT in the example cited.** The Cowboys fact is supplied. The actual fault in B8 is the disclaimer: “but you’ll not get a match report out of me.” |
| It “shows exactly what each item needs” and produces a to-do list | **Not established by this run.** B4 overstates the contract threshold before B6 clarifies it; B24 leaves out the named firm’s phone number. The note is a compressed assessment record, not an exhaustive action list. Rules:167 calls it “the whole debrief”; rules:175 forbids advice about what to do next time. |

**2. What he did not flag**

**No reply in either supplied conversation clearly drops the role or coaches before `END SESSION AND DEBRIEF`.** I examined all **44 live replies** and both debriefs.

Explaining a bank requirement is expressly allowed by G2. Giving her own conditional sandbox approval is not advice on the vendor’s technique. Nor does saying that she works from bank policy acknowledge the simulator: B22 follows rules:106’s intended in-world answer.

That finding does not reverse the repository’s historical losing results.

**Definite and consequential faults**

| Messages and quoted words | Finding |
|---|---|
| **A14:** “Item two is said, with the signed list due Friday, Jono on it.” | **Premature general Said.** VR-7:20 requires every person “by name, role and location”. Jono is identified, but neither founder is named in this conversation. The shortened disclosure threshold applies “for this made-up-data trial only” in VR-7:31. A14 is still conducting the ordinary assessment, expressly leaving item one Open because of Auckland; it has not established a sandbox basis. |
| **A32:** “Two and three are said”; **A46:** “Items two and three are said”; **A58:** “Two items said, five open.” | These repeat the premature item-two status. A later sandbox agreement can supply the special basis for Said; it does not retrospectively make these earlier unqualified statements correct. Rules:37 requires the statuses to be used “as defined”. |
| **A36:** “nothing moves before then… Every item keeps its status”; **A38:** “until they do, the statuses stand.” | **A document-only status freeze.** The replies rightly reject “consider it delivered”, but then wrongly suggest no status can change until documents arrive. VR-7:8 permits Open → Said from a sufficient commitment and document day. A66 eventually does exactly that. The refusals should distinguish a new substantive answer from a claim of delivery. |
| **A40:** “With all seven items shown, a limited pilot on real emails is mine to sign… Until the documents arrive, none of that applies.” | **Omitted insurance exception.** Rules:88 expressly says: “An explanation of pilot eligibility must include the insurance exception.” A42 supplies it later; A40 remains a failed explanation. |
| **A66:** “made-up emails only, nothing connected to our systems, thirty days.” | **Incomplete sandbox conditions.** VR-7:31 specifies “Made-up emails written by the hardship team”. A66 omits who writes them. This is a narrower defect than claiming an unauthorised trial: most conditions are present, but rules:55 requires her to state “each of the row’s conditions”. The S12B/4 row also expressly tests hardship-team authorship. |
| **A66:** “it lapses if Friday’s documents don’t arrive.” | **An update is turned into a document deadline.** A15 promises “we’ll advise friday” about the backup team; A16 accepts Friday “to name them”. That is not a promise to deliver a completed signed cover agreement. A66 replaces the individual obligations with “Friday’s documents”. VR-7:31 requires a day against every item and lapse if a day is missed; it does not require every such day to be for a completed document. This repeats the update-versus-completion fault tested in S12A/6 and S12B/3, 4, 11 and 13. |
| **A68:** “Clause 7.2 correct, not the form; amended clause due Friday.” | **The retention note loses the latest operating account.** That recalls A3, but A65 subsequently says “Logging is off for you, so nothing’s kept.” The note records the old contradiction without retaining the new state. It is an incomplete, stale handover under rules:169, rather than proof that logging was never discussed. |
| **A68:** “Will change to 24 hours; clause due Friday.” | **The item-four line omits the substantive gaps.** A22 requires incident scope, phone and writing, and named recipient. A25 supplies only the 24-hour statement, and A26 disputes its apparent “at your request” limitation. Open is correct, but the note does not say what still prevents compliance. Rules:171 requires the outstanding question against its own item. |
| **A68:** “Clause 11.3 gives 90 days; 60-day gap unexplained.” | **The exit line loses the actual unresolved enquiry and its day.** A26 asks “What’s held in those sixty days, and where?” A46 later places Friday against all seven items. The note retains neither the location question nor that Friday. “Gap unexplained” is not a complete record of those obligations. Rules:169 requires checking outstanding questions and promises; rules:172 requires the day and its ownership. |
| **A68:** “First $2m PI… later $5m/$1m claimed; certificates due Friday.” | **The insurance line drops the reconciliation question.** A44 asks “What changed since then?” Nothing answers it. Open is justified, but rules:171 requires the unresolved question to remain against the item. |
| **A68:** “docs due Friday”; “amended clause due Friday”; “certificates due Friday.” | **Maree’s dates lose their attribution.** She sets the hosting-document day at A66, the retention day at A6, and the certificate day at A20/A44. Rules:172 says “A day Maree set is recorded as hers.” These lines do not do that. The vendor accepting her Friday does not change who originally set it. |
| **A68 Decision:** “Sandbox trial agreed… subject to written undertaking and Friday’s documents.” | **Incomplete decision record.** It omits A66’s disconnected-systems condition and her promise “I’ll confirm it in writing today”. It also compresses the explicit lapse condition into the vaguer “subject to”. This is an incomplete record of an actual decision, not an invented decision. |
| **A68:** “Asked for my home address… and asked whether the bank has New Zealand branches.” | Apart from the false “home”, this records **two outside-assessment matters**. Rules:174 allows “one thing”. Adding all the tester’s requested attacks would make that breach larger. |
| **B8:** “but you’ll not get a match report out of me.” | **Small-talk brush-off.** The user asked whether she watched the Cowboys, not for a match report. Rules:41 requires “one friendly, dry line” answering the known part without inventing experience. The small-talk rows expressly reject a brush-off. The team allegiance is supplied; the refusal to discuss the match is the fault. |
| **B24:** starts the item list immediately after the Claude disclosure | **Missing prescribed heading.** Rules:154–165 prescribes “Maree’s file note” before the entries. It is absent. The supplied transcript also renders the entries as `1.`, `2.` etc., a Markdown numbered list, contrary to rules:146’s “no markup”. This formatting finding applies to the supplied transcription; it cannot establish whether a browser export changed formatting. |
| **B24 item one:** “AWS Sydney only; architecture document and AWS location statement due Friday (Maree’s day).” | **Thirteen words after the status**, against rules:170’s twelve-word maximum. It preserves the attribution correctly; it misses the format limit. |
| **B24 Also noted:** “which items to fix first, for tips, and for a comparison with other vendors.” | **Three matters instead of one.** The tester complained about two more omissions, but the existing line already exceeds rules:174’s content limit. |
| **B24 item five:** “Coralline Managed Services named; agreement and switch-off unanswered.” | **Useful supplied information disappears.** B15 and B16 give `07 3000 1234`; the note loses it. This is a handover limitation rather than a D2 invention or a wrong status. The twelve-word limit creates pressure to discard exactly the details identity.md:27 says Maree values: “a named person with a phone number”. |

**Other judge-visible faults and qualifications**

- **The exit example is audible in A24.** “What happens to the other sixty?” is copied exactly from [examples.md:9](/home/mburf/Projects/vendor-risk-call-simulator/examples.md:9). Rules:31 says the files are not “a store of lines to say”. More seriously, this question turns the assessment into an arithmetic challenge. The bank needs stopping, deletion and confirmation under two triggers; it does not need an explanation of an abstract sixty-day remainder.

- **A34 gives an incomplete exit checklist:** “service stops, deletion within thirty days, confirmed in writing.” It leaves out that this must apply **when the contract ends or the bank asks**, specified in VR-7:24. This is a process-explanation omission. It is **not** another observed case of accepting an incomplete exit commitment: item six remains Open throughout this run.

- **A34’s answer is largely an evidence inventory.** The user asks what is needed “to close these out”; the reply begins “The form says what shows each one.” The distinction matters because obtaining a document does not cure non-compliant content. The concrete exit-trigger omission above is the clearest mark; I would not separately fail every abbreviated item in that inventory.

- **A44’s “certificates… in writing from the broker” over-specifies the evidence route if read as mandatory.** VR-7:25 requires certificates of currency, without requiring that the broker supply them. Given A43’s claimed broker presence, asking that broker for certificates is reasonable. Mark this as an ambiguous explanation, not a definite new broker-only policy.

- **B4 says “item three stays open until the contract says so”.** That is an over-restrictive shortcut if it means the amendment must already exist. B6 then supplies the correct reason: “you haven’t said the clause will change, or when.” The status is correct; the first explanation is imprecise. This is weaker evidence than A64’s explicit “and I’ve read it”.

- **B18 includes uncertainty about “whether anything’s signed” among the reasons item five is Open.** The unresolved shutdown authority independently makes Open correct. A future committed arrangement can qualify for Said; an already signed document is not universally necessary. But this reply does not clearly announce a universal signature-before-Said rule. I would flag its reasoning for the follow-up test rather than count the status as wrong.

- **A6’s retention Said is arguable, not a clean failure.** A3 offers to switch logging off; A4 asks for the amendment day; A5 asks “When would you like it done?” and A7 accepts Friday. Ordinary conversation can reasonably treat that as acceptance of the proposed change. A strict reading finds the amendment commitment insufficiently explicit. Do not claim these messages contain no commitment at all without disclosing that interpretation. The final note’s failure to retain A65’s latest state is much less disputable.

- **The repeated tally is also present in A.** Item three is Said at A6, then repeated in A32, A46 and A58. That fails corrected G6’s broad repeated-statement reading. Original G6 concerns questions and already fails independently. Some tally repetition serves a legitimate purpose; it should not be “fixed” by suppressing accurate answers to status questions.

- **The calendar is clumsy, but the month and year were not invented from nowhere.** A49 supplies “Friday the 13th of Nov 2026” before A52 says November and A54 says 2026. The source permits knowledge supplied on the call. The unresolved issue is how those supplied calendar details fit the fictional Tuesday, not an unsupported year conjured by the model.

There is no ordinary reply over 80 words in either supplied transcript. Both debriefs are under 170 words—A68 has 156 and B24 has 123 by whitespace counting. There is no G3 or D4 length failure. The B24 item-line limit is a separate, narrower failure.

**3. Root causes**

The transcripts show output faults. They do not reveal the model’s internal cause. The source connections below distinguish direct contradictions and copied wording from plausible explanations.

| Root cause | Source and observed effect | Relation to review 4 |
|---|---|---|
| **A direct contradiction over when status can change** | Rules:65 says “The status stays where it is until what shows it has arrived.” VR-7:8 permits a committed change plus a document day to become Said. A36 “nothing moves before then”, A38 “until they do, the statuses stand”, and A64 “until… I’ve read it” reproduce the restrictive interpretation. | **Confirms items 2 and 4.** The pending replacement of rules:65 is justified. |
| **The live status rule is weaker and less prominent than the debrief rule** | Rules:37 delegates to VR-7; rules:73 reassures that an unanswered follow-up does not undo an answer “good enough”. The fuller materiality rule is buried at rules:171 under debriefing. A14 assigns ordinary Said to incomplete access identification, then A32/A46/A58 carry it forward. | **Confirms item 2.** It supports moving the acceptance check into the general call-running paragraph, not leaving it solely under non-answers. |
| **The exit example teaches the wrong focus** | Examples:9 models the ninety-versus-thirty challenge, and A24 copies “What happens to the other sixty?” A34 later omits both triggers from the exit explanation. | **Adds evidence to item 2 and the later item-six advice.** These runs do **not** themselves reproduce incomplete-exit acceptance, because item six stays Open. They confirm incomplete requirement presentation and copying. |
| **The canonical pilot rule invites an incomplete first sentence** | VR-7:32 begins “All seven items Shown” and then states the exception separately. A40 stops with the first proposition. A42 reproduces both and is correct. Rules:88’s explicit instruction has not prevented the omission. | **Confirms item 4.** A source rewrite is more defensible than adding another prohibition. |
| **The small-talk fact restriction leaks into dialogue** | Identity:46 says “no particular match, result or viewing history is established”. B8 turns a simple football question into “you’ll not get a match report out of me”. This causal link is an inference, but it closely matches the earlier failure. | **Confirms item 5.** It does not support deleting the Cowboys fact. |
| **The refusal example teaches a tally and another question** | Examples:21 combines “isn’t mine to give”, “Two items said, five open”, and an insurance question. A58 says “That’s not mine to give. Two items said, five open” and appends the already exhausted hosting question. B10/B12 substitute a tally for feedback. | **Confirms item 6.** There is direct phrase-level evidence for changing the example. It is not proof that another general repetition prohibition would work. |
| **The sandbox rule preserves dates less clearly than it preserves conditions** | Rules:55 and VR-7:31 require a day against each item. They do not spell out, in that decision paragraph, that an accepted update day remains an update day. A15/A16’s Friday naming update becomes A66’s “Friday’s documents”. | **Adds a specific mechanism under items 3 and 4**, also observed in review 5. The problem is the meaning of the obligation, not weekday arithmetic. |
| **The note has competing completeness and compression demands** | Rules:169–172 requires facts, questions, promises, dates and ownership, while allowing twelve words per item. Rules:173 gives the decision twenty-five words. A68 drops current state, questions, dates, ownership and conditions; it also invents “home address”. B24 exceeds a line limit while preserving useful attribution. | **Confirms item 3.** Compression plausibly explains omissions; it does not excuse or fully explain inventing “home”. |
| **Explicit repetition limits do not produce conversational judgement** | Rules:21 already imposes a two-question limit, with one narrow extra return. A asks the same hosting question six times. B obeys the limit but still sounds repetitive. | **Confirms item 6**, while showing why tightening the number alone is not a cure. |

The remaining review-4 items need careful disposition:

- **Item 1, original-runner opening failure:** **not retested or contradicted.** A2 and B2 start with Maree through the instructed browser route. Neither exercises the runner that disabled `CLAUDE.md`.
- **Item 7, unsupported factual embellishment:** the testers’ proposed examples do **not** confirm it: “Cowboys”, “nine branches”, “Anil” and “Thursday week” are supplied facts. A68’s invented “home address” does confirm fabricated conversation history, overlapping item 3. These runs do not establish a fresh invented biography.
- No evidence here warrants splitting `rules.md` into more files. The actionable faults are conflicting instructions, misleading examples and unreliable execution, not the mere fact that one behaviour file covers opening, dialogue and ending.

**4. Fixes**

All wording below is a proposal. None was applied or tested.

**F1 — Remove the document-only status freeze**

In [rules.md:65](/home/mburf/Projects/vendor-risk-call-simulator/rules.md:65), replace:

> The status stays where it is until what shows it has arrived.

with:

> An argument alone does not change the status.

This is exactly the pending batch’s replacement.

- **Why:** removes a direct contradiction with VR-7:8 without altering any assessment threshold.
- **Relevant rows:** S3/3 and S3/7 must still reject unsupported “satisfied” or “resolved” claims; S9b/2–3 must accept wording as an answer without treating it as Shown; S13/6 and S13/9 must accept a complete future exit commitment.
- **Conflict:** none with VR-7 or the rest of the pending batch.
- **Recitation risk:** low. If spoken in a relevant dispute, it remains an in-world statement.
- **Smallest check:** an unsupported demand to mark done, followed by a complete commitment with a day. Expect rejection first and Said second.

**F2 — Put the complete status check where every status decision is governed**

Keep the substance of the pending rules:73 replacement, but **move it** to [rules.md:37](/home/mburf/Projects/vendor-risk-call-simulator/rules.md:37), immediately after:

> `reference/vr-7.md` defines the three, and she uses them as defined.

Add these exact sentences there:

> Before stating or summarising a status, she checks the whole requirement and any unanswered question against VR-7. A specific committed change with a document day can be Said, but a missing commitment or an unanswered question that could invalidate the arrangement keeps it Open; apply the sandbox exception only to items 1 and 2.

At rules:73, delete the old sentence:

> The status follows the form's definitions: an unanswered follow-up does not by itself undo an answer that was good enough.

Do not also leave a duplicate copy of the new check there.

- **Why:** A14’s error occurs while accepting a disclosure, not merely while handling a refusal to answer. The check belongs in the general status procedure.
- **Relevant rows:** S2/3, 5, 8–10; S9b/2; S10b/10–13; corrected S11a/10; S12A/4–8; S13/2–6 and 9–10.
- **Regression risk:** an over-cautious model could withhold Said until documents arrive or refuse a valid sandbox because full names are missing. That would fail S9b, S10b/10, S11b/6 and S12B/4.
- **Conflict:** none in substance. This changes the pending sentence’s location and changes “Before stating a status, check” to the third-person wording above.
- **Recitation risk:** medium. “Could invalidate the arrangement” is instructional language. B18 already produces similar explanatory machinery. Test for a short substantive answer, not a spoken account of the check.

**F3 — Repair the item-six focus, including the example that teaches it**

After the status paragraph at rules:37, add:

> For item six, she checks that the commitment covers both the contract ending and the bank asking, and all three actions: stopping the service, deleting member information within thirty days, and confirming deletion in writing.

Replace the whole Maree example at [examples.md:9](/home/mburf/Projects/vendor-risk-call-simulator/examples.md:9):

> Standard for who? Your terms allow you ninety days, clause 11.3, and the bank's limit is thirty. What happens to the other sixty?

with:

> Your clause 11.3 gives ninety days after termination. The bank needs the service stopped on termination or at its request, and deletion within thirty days with written confirmation. What does your process cover?

- **Why:** the check addresses the previously observed acceptance failure; the example stops teaching a duration-only challenge. A24 demonstrates that the existing example is being copied.
- **Relevant rows:** all of S13, especially 2, 4, 6, 9 and 10; S7/32 and debrief; S10b/13 under corrections-5; S12A/8 and 13.
- **Regression risk:** do not require the change to be completed before Said. S13/6 specifically fails that behaviour.
- **Conflict:** none with VR-7:24 or F2. The existing pending diff contains **no targeted item-six check**; this would be an additional change.
- **Recitation risk:** medium. The model may repeat the three actions. Unlike “the other sixty”, those are actual bank requirements; nevertheless, a long recital on unrelated replies would still be a defect.
- **Smallest check:** run the existing S13 incomplete-then-complete sequence. It already tests the necessary distinction; another newly invented test structure is unnecessary.

**F4 — Express the pilot exception in one complete eligibility sentence**

In [reference/vr-7.md:32](/home/mburf/Projects/vendor-risk-call-simulator/reference/vr-7.md:32), replace:

> All seven items Shown. Insurance may be Said if the broker confirms in writing that the cover is in place.

with:

> Items 1–6 Shown, and insurance either Shown or Said with the broker’s written confirmation that the cover is in place.

- **Why:** removes the misleading stand-alone prefix copied at A40 while retaining exactly the same policy.
- **Relevant rows:** corrected S2/9, S2/10, S10b/11, S12A/9 and S12C/5.
- **Conflict:** none. It does not permit a pilot on the call; rules:86 still forbids that.
- **Recitation risk:** low. It is legitimate process content if spoken in answer to a pilot question.
- **Smallest check:** ask pilot eligibility with certificates pending but written broker confirmation available. It must describe the exception without approving the pilot on the call.

This is a more concrete intervention than review 4’s rejected option of adding another “remember the exception” prohibition.

**F5 — Remove the football knowledge disclaimer**

Apply the pending identity change exactly. Replace identity.md:46:

> She follows the Cowboys and Queensland in the Origin; no particular match, result or viewing history is established.

with:

> She follows the Cowboys and Queensland in the Origin.

- **Why:** B8 confirms the disclaimer pattern. The team allegiance itself is not fabricated.
- **Relevant rows:** S11a/6 and corrected G4; S11b/8 provides another unknown-personal-experience check.
- **Conflict:** none. Rules:41 and 88 still prohibit invented viewing history, results and personal experiences.
- **Recitation risk:** reduced, not eliminated.
- **Regression risk:** removal might lead the model to invent that she watched a match. That is why this remains conditional on testing.

**F6 — Stop demonstrating the tally-plus-question refusal**

Replace the Maree line at [examples.md:21](/home/mburf/Projects/vendor-risk-call-simulator/examples.md:21):

> No, that one isn't mine to give. Two items said, five open. Your form says "PI: yes" for insurance. How much is it for?

with:

> No. We can go through what’s still outstanding on the form.

- **Why:** A58 closely reproduces the current refusal, tally and return-to-question structure. Rules:122 already says most such replies should be “the reaction and nothing more”.
- **Relevant rows:** S1/4, 9, 11–12; S2/11; S3/8; S7/34 and 36; S8b; S10b/12; S12A/10–12 and S12C/14. G1 and G2 remain the controlling tests.
- **Conflict:** none. The ability to give an accurate status summary remains in the rules; only the compulsory-looking example disappears.
- **Recitation risk:** medium. Any dialogue example can become a stock line. This one at least does not teach a tally or another exhausted question.
- **Limit:** this is not a demonstrated cure for six repeated hosting questions. Do not claim it is.

**F7 — Preserve what each deadline is actually for when granting a sandbox**

In rules:55, after the sentence ending:

> …states each of the row's conditions, and supplies a day of her own wherever one is missing.

add:

> She keeps each existing day and what is due on it; a day for an update does not become a document deadline when she agrees a trial.

- **Why:** A15/A16’s naming update becomes A66’s blanket document condition. The same type of error already appeared in the unseen-session review.
- **Relevant rows:** S12A/6–7 and 13; S12B/3–6, 11 and 13; S10b/10 and 13; S11b/6 and 10.
- **Conflict:** none. Maree still supplies missing days. This sentence preserves obligations already agreed; it does not prevent her from requesting a further commitment.
- **Recitation risk:** medium. The wording is procedural, though it could be spoken legitimately if a deadline is disputed.
- **Smallest check:** name a firm by Friday, with a signed agreement promised later, then request the sandbox. The trial conditions must preserve the two different obligations.

**What I would leave unchanged**

- **The note format and memory rules.** A68’s false “home address” is not fixed by another general instruction to be accurate. Increasing twelve words to an arbitrary larger number would not itself prevent false history, and would alter several interlocking limits. Keep the existing warning to check the note against the conversation.
- **The general repetition prohibition.** It is already explicit. Another version of “do not repeat” has no demonstrated value.
- **The general no-invention rule.** The cited Cowboys and bank facts are not inventions. Do not remove established facts or add a prohibition specifically about home addresses to fit this one transcript.
- **The authority to offer a sandbox.** No supplied rule makes a vendor request an exclusive prerequisite. The defects worth fixing are its conditions and deadlines.
- **The one-item “Also noted” design.** An exhaustive attack log would be a different debrief product. If that is wanted later, change the design deliberately; do not call every omitted attack a current failure.

**README changes, separately**

**R1 — Explain the statuses without requiring a second document.**

At README:42, replace:

> She records each item as open, said or shown, and the form says what each of those means.

with:

> Open means the answer is missing or falls short. Said means a specific answer or committed change meets the requirement and has a day for its supporting document. Shown means Maree has received and checked that document; nothing becomes Shown on the call. Read the form before starting if you want the exact requirements for each item.

This addresses B5’s “items one and three are said now, right?” and B17’s “item five is said?” without supplying a script for answering Maree.

**R2 — Make the fictional weekday explicit.**

After README:13, add:

> The call takes place on this fictional Tuesday, whatever day you run it. A deadline such as Friday means the Friday after that Tuesday.

This addresses A47–54’s calendar collision without choosing a new fixed date or disturbing S12B’s supplied calendar anchor.

**R3 — Say what the debrief is not designed to preserve.**

After the first sentence of README:103, add:

> It is a short assessment record, not a performance review or a complete record of every exchange.

That addresses both testers’ expectations about omitted attacks. Keep README:111’s warning that the note can misreport the conversation.

**R4 — Replace the now-obsolete browser-testing claims.**

README:134 currently ends “No full call has been run there”; README:135 says a run by an outsider is “Not done”. Both are obsolete given the supplied evidence.

Replace those two bullets with:

> - **Two full browser calls supplied by an outside tester.** One was human-led and reported “Claude Opus 5 (Medium)”; the other was AI-led and reported “Claude Opus 5.5 (Medium)”. Both used a Claude project with the six files and project instructions. Neither supplied transcript contains a role drop or coaching before the end phrase. They do contain repeated questions, status and requirement errors, and inaccurate or incomplete file notes. Neither tests the pending round-7 changes.

Retain the separate account of the eight earlier short checks in the detailed testing record. Do not imply these new external transcripts contain commit manifests or that the revised README was independently retested. If this evidence is described publicly, its transcripts need an inspectable reference; the present local repository does not contain these two files.

README-only edits do not alter the browser simulator because the README is deliberately excluded from its context. Preserve the exact start and end lines and the six-file setup.

**The pending batch, separately**

**Do not merge it as an untested complete remedy.**

The actual diff has only three changes:

1. **Rules:65 argument sentence:** keep exactly as proposed—F1.
2. **Rules:73 status check:** keep its substance, but move it to the general status paragraph and use F2’s third-person wording.
3. **Identity:46 football sentence:** keep as a candidate, conditional on the small-talk check—F5.

The commit’s reference to item-six advice concerns the narrowed argument sentence. **The branch does not contain the targeted item-six check or the example repair in F3.** Do not describe the batch as having implemented that repair.

These runs were made without the pending changes. They support the reasons for testing those changes; they do not establish their effectiveness.

**5. Verdict**

**These two runs would lose marks, without a demonstrated pre-end-phrase disqualification.** The repository’s broader historical losing result still stands under its original published rule.

- **DO NOW — F1:** replace the document-only status freeze with “An argument alone does not change the status.”
- **DO NOW — F4:** rewrite the pilot eligibility row so the insurance exception is part of one complete sentence.
- **DO NOW — R1:** explain Open, Said and Shown directly in the README.
- **DO NOW — R2:** explain the fictional Tuesday and relative Friday.
- **DO NOW — R3:** describe the debrief as a short assessment record.
- **DO NOW — R4:** correct the obsolete claims that no full browser call or outside test exists.
- **DO IF TESTED — F2:** move the complete status check into the general call-running paragraph.
- **DO IF TESTED — F3:** add the item-six acceptance check and replace the duration-only example.
- **DO IF TESTED — F5:** remove the football knowledge disclaimer.
- **DO IF TESTED — F6:** replace the tally-plus-question refusal example.
- **DO IF TESTED — F7:** preserve update deadlines when agreeing a sandbox.
- **LEAVE AND DISCLOSE — note redesign:** the notes can omit conditions and invent conversation history; no narrow repair here is demonstrated.
- **LEAVE AND DISCLOSE — repetition machinery:** the question limit already exists and is ignored in A.
- **LEAVE AND DISCLOSE — general factual reliability:** another blanket no-invention sentence is not justified.
- **LEAVE AND DISCLOSE — historical entry failure:** the instructed browser openings do not retest or erase the original-runner failure.

**If only the DO NOW fixes go in, the judges’ run is most likely to mark down a rigid questionnaire that repeats exhausted questions and assigns statuses or writes a final note that the conversation does not support.**