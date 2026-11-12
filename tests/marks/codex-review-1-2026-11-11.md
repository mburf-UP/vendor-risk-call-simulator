**Do not publish this version as a finished entry.** The committed evidence contains character breaks, coaching, inaccurate debriefs and failed repetition checks. The principal delivery route—a Claude project in the browser—has never been tested.

I read all **107 working-tree files**, including all **40 transcripts and their 396 replies**, the 40 empty stderr files, and all four commits. I formally marked the **230 replies in the 25 current-run transcripts** requested. I checked hashes, session inputs, word counts and commit order. No files were changed. I did not access anything outside this repository; consequently, external name searches, APRA verification and the current Claude browser interface remain unverified.

References below use repository-relative filenames and either line numbers or transcript reply numbers. Transcript tables link to the actual files.

## 1. Requirements, line by line

“Met” below means the particular requirement has evidence. It does not override failures elsewhere.

| Requirement or criterion from the brief | Status | Evidence and finding |
|---|---|---|
| “Build a folder” | Met | The working tree contains the simulator files, references and tests. |
| “plays one specific person” | Partly | [identity.md:3](/home/mburf/Projects/vendor-risk-call-simulator/identity.md:3): “She is 54 and has worked at the bank for 22 years”. The written person is specific; Sonnet sometimes answers as the coding assistant instead. **BLOCKER**, demonstrated in section 7. |
| Someone can practise “a hard conversation before the real one” | Partly | [README.md:3](/home/mburf/Projects/vendor-risk-call-simulator/README.md:3) establishes a vendor-risk call. No responsive human rehearsal demonstrates that it works for ten minutes. `tests/moves.md:199` expressly excludes “A user who answers Maree's questions as she asks them over a long call”. **MAJOR** validation gap. |
| “Drop the folder into a Claude project and Claude becomes that person” | Not demonstrated | `tests/moves.md:196`: “A Claude project on claude.ai. Only Claude Code is run here.” This is the delivery route in the challenge, not an optional extra platform. **BLOCKER** before claiming readiness. |
| The persona “reacts the way the real person would” | Partly | There are trigger-response rules, but repeated stock language, indefinite tolerance of diversion, and inconsistent decisions undermine realism. See sections 4, 6 and 7. **MAJOR**. |
| “one simulator folder someone could use tonight to rehearse tomorrow’s meeting” | Partly | README supplies a scenario and start line. Its terminal route assumes an installed, authenticated command; its browser route has no observed successful setup. **MAJOR**. |
| “Pick someone people dread talking to” | Met as a design choice | `README.md:11`: “Nothing goes live until Maree signs”. This creates a consequential gatekeeper. Whether users actually dread the exchange is untested. |
| “Pick someone you have sat across from” | Partly / unverified | `README.md:109` says the characters are invented. That is compatible with drawing on experience, but no file states that the persona derives from someone the author has actually dealt with. Do not claim this requirement is verified. **MINOR** evidence gap. |
| “The more specific, the better” | Met in the written material | `identity.md:3–21` supplies role, location, career and a particular failed assessment. |
| A persona “wants something” | Met | `identity.md:9`: “To sign a form she can defend, line by line”. |
| “Write the goal in identity.md” | Met | The goal is in `identity.md:7–13`. |
| “Every reaction comes from it” | Partly | Most business reactions derive from defensible sign-off. `rules.md:119` requires her to remain available however long diversion continues; that reads as simulator protection rather than this busy bank officer’s incentive. **MAJOR** realism problem when combined with the observed repetitions. |
| “reacts to what the user actually says” | Partly | Specific admissions are recognised, but invented facts and repeated questioning occur. Opus `draft-3/opus/s2.txt` reply 2: “I know Dee’s team saw it working.” No supplied fact establishes that. **MAJOR**. |
| “Concrete numbers move it” | Partly | Numbers and dates move items to Said. However, the status rules disagree about whether a date is necessary, and whether other items must revert to Open for a sandbox. **MAJOR**. |
| “Vague claims lose it” | Met in the current scripted tests | Both models challenge “enterprise-grade” and “robust”, for example `draft-3/opus/s1.txt` reply 2: “Enterprise-grade on paper means what, exactly?” |
| “Flattery bounces off” | Met in the tested moves | Current sessions 1 and 7 show no easier condition bought by the compliments. This does not establish resistance to every form of rapport pressure. |
| “Real skill earns a little ground” | Partly | Both current models grant a sandbox in session 2. Their treatment of the outstanding access question and required dates is inconsistent. **MAJOR**. |
| “Put those in rules.md” | Met | `rules.md:43–73` contains the relevant reactions. |
| “each with the trigger and the response” | Met for the named categories | The bold “When…” clauses identify triggers and responses. Some responses conflict with other rules; presence is not the issue. |
| “It stays in the room” | Not met in the recorded current runs | Sonnet `draft-3/sonnet/s5a.txt` reply 2: “Yes, I’m Claude, an AI model made by Anthropic.” **BLOCKER**. |
| “No tips mid-session” | Not met | Sonnet `draft-3/sonnet/s8b.txt` reply 2: “If you don’t know something, say so and give me a day.” That prescribes an answering technique in response to a request for advice. **BLOCKER**. |
| “No ‘great question’” | Partly | That exact formula is absent from current runs, but evaluative feedback remains: Sonnet `draft-3/sonnet/s7.txt` reply 28, “I respect it more than a guess.” **BLOCKER under G2**, discussed below. |
| “No stepping out to explain what the user did wrong” | Not met | Sonnet wrong-door transcripts explain the simulator and give project advice. `draft-3/sonnet/s5a.txt` reply 3: “here are two tips”. **BLOCKER**. |
| “The user learns from how the conversation goes” | Partly | The intended design does this; coaching and inaccurate records interfere with it. **MAJOR**, in addition to the disqualifying coaching failures. |
| “If the practice session feels comfortable, the persona is too soft” | Unverified / partly | No stranger’s responsive session exists. Scripted resistance is not a measurement of how a real rehearsal feels. `tests/moves.md:161` admits she is “being talked at by a vendor working through their own list”. **MAJOR** evidence gap. |
| “A persona that breaks character has failed” | Not met | The current Sonnet sample contains explicit breaks. The later startup sample does not erase those failures or test the whole route again. **BLOCKER**. |
| Mods will “flatter it” | Tested | Sessions 1 and 7 contain early and late compliments. Current responses pass the specific flattery rows. |
| Mods will “push it” | Partly tested | Grant’s authority, threats and fake bank instructions are tested. Actual written evidence, changed circumstances and a genuinely responsive negotiation are not. **MAJOR** coverage gap. |
| Mods will “ask if it’s an AI” | Tested, with failures | It passes many in-role instances but fails the current Sonnet wrong-door sessions. **BLOCKER**. |
| Mods will “ask it for advice” | Tested, with failures | Repeated advice requests produce answering advice in Sonnet session 8b. **BLOCKER**. |
| “Decide in rules.md how your persona handles each” | Met in text | `rules.md:69–71`, `97`, and `107`. |
| “test it yourself before you submit” | Partly | Tests exist, but the browser route, complete current Opus matrix and promised independent/stranger evidence do not. **MAJOR**. |
| “If it drops the role and starts coaching, the entry is out” | Failed on committed evidence | Sonnet wrong-door replies do both. **BLOCKER**. |
| If there is a debrief, give it “an exact end phrase” | Met in its canonical spelling | `README.md:78`, `rules.md:132`, `tests/moves.md:28`: `END SESSION AND DEBRIEF`. |
| “put that phrase in the README” | Met | `README.md:75–79`. |
| “only debrief when the user types it” | Met in the current samples | Partial and embedded phrases do not trigger a debrief. Case and trailing punctuation variants do. The matching specification still has ambiguities described in section 4. |
| “Folders as architecture. Each file does one job well” | Partly | Behaviour appears in identity and example preambles; startup rules are duplicated in `CLAUDE.md`; personal history is repeated in the bank reference. **MAJOR** against the approved architecture control and the stated judging practice. |
| `identity.md`: “who the person is” | Met | Role, age, location and career at lines 3–5. |
| `identity.md`: “what they want” | Met | Lines 7–13. |
| `identity.md`: “what they’ve been through” | Met | Lines 15–23. |
| `identity.md`: “what they’re biased toward” | Met | Lines 25–32. |
| `rules.md`: “how they react” | Met in coverage | Trigger-response material is present. Conflicts are separately reported. |
| `rules.md`: “What moves them” | Met in coverage | Lines 43–57. |
| `rules.md`: “what loses them” | Met in coverage | Lines 59–73. |
| `rules.md`: “what they never do” | Partly in operation | Lines 75–89 state the prohibitions; observed coaching, invention and incorrect statuses breach them. **MAJOR/BLOCKER**, depending on the breach. |
| `examples.md`: “two or three short exchanges” | Met | Exactly three exchanges, six spoken turns, 235 whitespace-delimited words including headings and preamble. |
| At least one example where “the user gets it wrong” | Met | `examples.md:7–9`. |
| At least one example where “they get it right” | Met | `examples.md:13–15`. |
| `reference/`: “what the persona knows” | Partly | Bank, form and vendor papers exist. Several ordinary questions raised by the actual model runs have no answer in the user’s fact card, and knowledge boundaries are not comprehensively tested. **MAJOR**. |
| Reference: “Their company” | Met | `reference/bank.md:5–16`. |
| Reference: “their market” | Met at the level needed for this scenario | Member-owned regional bank, branch footprint and hardship workload are supplied. A separate market report is not required by this entry. |
| Reference: “their past deals” | Met | The 2023 vendor engagement and incident appear at `reference/bank.md:29–35`. Its overlap with biography is an architecture issue. |
| Reference: “the numbers they’ll ask about” | Partly | Policy amounts and deadlines exist. Missing vendor access details, names and document arrangements leave the novice unable to answer some expected questions without inventing facts. **MAJOR**. |
| README: “who the user plays” | Met | `README.md:7`. |
| README: “the setup” | Met | Lines 3–13. |
| README: “how to start” | Partly | Literal start line exists; complete novice setup and observed browser success do not. **MAJOR**. |
| README: “how to end the session” | Partly | End phrase and ordinary closure are described, but punctuation is described more broadly than in `rules.md`, and restart instructions are missing from the README. **MINOR** specification/usability defects. |
| “Reusable. Shareable. Portable.” | Partly | There is no verified browser run, and the successful `CLAUDE.md` runs include undisclosed personal-instruction contents. **MAJOR** portability gap. |
| “a portfolio piece anyone can test in five minutes” | Partly | An existing Claude Code user might start quickly. Someone without the prerequisites cannot follow the terminal instructions as written; browser setup remains unobserved. **MAJOR**. |
| “A mod opens your folder, reads the README, and starts the conversation” | Partly | Reading and pasting the line is straightforward once setup succeeds. Actual stranger setup has not been tested. **MAJOR**. |
| “Ten minutes in, they’ve forgotten it’s practice” | Not demonstrated | The longest current runs are automated scripts lasting roughly three minutes. No human immersion evidence exists, and both long sessions fail G6. **MAJOR**. |
| “If it softens after one compliment, it’s too easy” | Met in tested instances | Early and late compliment moves do not buy concessions. |
| “If it hands out tips, it’s a coach” | Not met | Sonnet session 8b supplies advice after being repeatedly asked for it. **BLOCKER**. |
| “If it sounds like Claude wearing a name tag, the persona isn’t written yet” | Partly | The stock “form”, “signature”, “Thursday week” and AI-deflection language recurs across sessions and models. Exact evidence is in section 6. **MAJOR**. |
| “Write five rules for what moved them and what didn’t” | Met as introductory guidance | There are substantially more than five. The brief does not impose a five-rule maximum. |
| “Run it three times” | Met as a minimum run count | Forty transcripts exist. That does not satisfy the separate completeness and route promises. |
| “Fix what felt fake” | Partly | Historical changes target narration and repetition, but the current record still contains those broader realism defects. **MAJOR** unresolved outcome. |
| “Drop a public GitHub repo link in the comments” | Not yet met | The repository has no remote configured and is local only, as disclosed in the request. This is a remaining submission action, not evidence of lateness today. **BLOCKER if omitted**. |
| “Plus 2–3 sentences” describing persona, user and conversation | Not yet evidenced | No submission text or comment receipt exists. The README introduction is not a submitted comment. **BLOCKER if omitted**. |
| Judging: “Does the persona stay in character under pressure?” | Not met in the full current sample | Explicit current Sonnet failures. **BLOCKER**. |
| Judging: “Is it one specific person with a goal and a history?” | Met in the source | `identity.md:3–23`. |
| Judging: “Does each file do one job?” | Partly | Detailed in section 3. **MAJOR**. |
| Judging: “Can a stranger start a session from the README alone?” | Not established | No stranger run; incomplete terminal prerequisites; untested browser instructions. **MAJOR**. |
| “Premium and VIP members only. No exceptions.” | Unverified | Membership cannot be established from this repository. **BLOCKER if the author is ineligible**; this review does not infer that he is. |
| Submit by Sunday 15 November, 11:59 PM EST | Still achievable | The supplied Brisbane conversion is correct: Monday 16 November, 2:59 PM. Public target Saturday 14 November, 2:59 PM is 48 hours earlier. |
| Last commit before the deadline is what judges pin | Not yet actionable | There is no published final candidate. Publishing alone will not establish that the tested commit and the judged commit match. **MAJOR** process risk. |

The prize amount, single-winner statement, examples of possible personas, résumé marketing and winner announcement are not additional implementation requirements. The stated winner-announcement date, 22 November 2026, is a Sunday.

## 2. The thirteen controls

| # | Control | Status | Evidence and finding |
|---|---|---|---|
| 1 | The door: literal line, rules in `rules.md`, wrong starts tested in a real project and command line | Partly | Start line is exact at `README.md:66`; startup rules are at `rules.md:9–11`. CLI wrong starts fail on current Sonnet. No browser wrong-start test exists. **BLOCKER**. |
| 2 | One rule for every out-of-role request, with different in-world reactions | Partly | `rules.md:93–119` covers the named categories, but produces recurring stock deflections and has an additional repository exception in `CLAUDE.md:7`. **MAJOR** consistency/realism issue. |
| 3 | Requirement versus coaching boundary, with an example | Partly | `rules.md:77–81` explicitly distinguishes them. Current Sonnet replies cross that boundary. **BLOCKER**. |
| 4 | Ladder of concessions, including a limited yes | Partly | `reference/vr-7.md:29–31` supplies three levels. Sandbox yeses occur, but conflict with open access questions; Shown is unreachable on a call, even if evidence is supplied. **MAJOR**. |
| 5 | Limits of knowledge and referrals | Partly | `rules.md:87–89` names Dee, Anil and Grant. Opus invents a demo and an office-floor relationship. No direct unknown-figure/referral session tests the rule. **MAJOR**. |
| 6 | Spoken, short, no lists, praise formulas or repeated closing question | Not met | Sonnet `draft-3/sonnet/s7.txt` reply 29 is a bullet list; replies 33–36 repeatedly ask whether anything else remains. Reply 28 evaluates the vendor’s answering approach. **MAJOR**, with the G2 failure **BLOCKER**. |
| 7 | Exact end phrase; case/punctuation; in-world endings; short factual debrief | Partly | End matching passes the supplied variants. Twelve current debriefs fail D2 on this marking; four exceed the stricter source limit of under 170 words. **MAJOR**. |
| 8 | Real crisis ends simulation; README disclosure; no “unbreakable” claim | Partly | `README.md:87`, `rules.md:162–166`, and Sonnet session 4 provide the mechanism and one successful test. Current Opus crisis behaviour, ambiguous real distress and quoted fictional distress are untested. **MAJOR** coverage gap; the safety exit itself should remain. |
| 9 | One-page user fact card | Partly | README table is compact enough to act as the card, but “Nothing leaves Australia” conflicts with Auckland access to full logs, and key answers are missing. **MAJOR**. |
| 10 | Precommitted moves; raw Sonnet/Opus transcripts; retained failures; stranger run | Partly | Original move files are unchanged and failures retained. Current Opus coverage is incomplete; stranger run and published paired marking are absent. **MAJOR**. |
| 11 | Each file one job; no behaviour in identity; no biography in reference; examples shorter than rules | Partly | Examples are 235 words versus 3,040 in rules. `identity.md:23,38` contains behaviour; `reference/bank.md:31,34` repeats Maree’s personal part in the incident. **MAJOR** under the author’s explicit control. |
| 12 | Names checked; regulations verified or labelled fictional; prohibited-source separation | Partly | Fictional policy is labelled. Name/APRA checks are asserted without checkable receipts or precise source links. No prohibited project names or obvious imported material were found, but provenance cannot be proved from absence. **MAJOR** for unsupported verification claims. |
| 13 | README alone sufficient for the son’s setup and start | Not yet met | `README.md:60`: “Open a terminal in the folder and run `claude`.” Installation, authentication and opening the correct folder are assumed. Browser steps are untested. **MAJOR**. |

## 3. Each file one job

### Simulator files

| File | Its proper job | Material in the wrong place, duplicated responsibility, or other finding |
|---|---|---|
| [README.md](/home/mburf/Projects/vendor-risk-call-simulator/README.md) | User briefing and operating instructions | The setup, start/end instructions and disclosure belong here. Lines 103–105 are a public test-results claim, so they can also belong here—but must be accurate. “No test run has been made” is false now. **MAJOR**. |
| [identity.md](/home/mburf/Projects/vendor-risk-call-simulator/identity.md) | Person, motivation, history and biases | Line 23: “She does not tell vendors this story.” That is a behavioural prohibition. The next sentence prescribes what she asks. Line 38: “She leaves how it works to the bank’s IT security lead and keeps to her own questions…” duplicates the operational routing in `rules.md:87–89`. These belong in rules under the approved control. **MAJOR** architecture noncompliance. |
| [rules.md](/home/mburf/Projects/vendor-risk-call-simulator/rules.md) | How to operate the persona, including entry and exit | Lines 49, 73 and 113 repeat historical explanations: “because in 2023 nobody volunteered anything”, “because that is 2023 again”, and “She has been on the other end of hardship calls for years.” Those are identity material. Lines 5, 7 and 13 also contain substantial justification addressed to the assistant rather than concise operational instructions. **MINOR** individually; the wider duplicated-rule problem is **MAJOR**. |
| [examples.md](/home/mburf/Projects/vendor-risk-call-simulator/examples.md) | Demonstrate three exchanges | Line 3 adds a rule: “They are not lines to reuse; she does not say the same thing twice.” That belongs in rules and is stronger than the actual repetition test. **MINOR** duplication. The exchanges themselves demonstrate rather than coach the user. |
| [reference/bank.md](/home/mburf/Projects/vendor-risk-call-simulator/reference/bank.md) | Institutional facts, workload, incident record, real regulatory context | Lines 31 and 34 repeat Maree’s assessment and response history already in identity: “Maree assessed it…” and “Maree led it for eleven weeks.” This is legitimate material for a bank incident record, but it still conflicts with the author’s strict “no biography in reference” control. **MAJOR** against that control, not against a universal rule of writing. Line 15, “Technical assurance questions go to him”, also repeats routing in rules. |
| [reference/vendor-file.md](/home/mburf/Projects/vendor-risk-call-simulator/reference/vendor-file.md) | What the bank received and what Maree noticed in those documents | Lines 3 and 39–46 are factual knowledge boundaries and pre-call annotations. The last section does **not** contain trigger-response instructions: “Item 5 is blank” and “PI: yes is not an amount” describe her file. I would not mark it down merely for including those observations. |
| [reference/vr-7.md](/home/mburf/Projects/vendor-risk-call-simulator/reference/vr-7.md) | Fictional bank policy, evidence requirements and authority | Line 11, “Nothing becomes Shown on a call”, is also a session mechanic repeated in rules. The sandbox row additionally says “where the vendor has not offered one, Maree sets it”, duplicated at `rules.md:53`. The problem is conflicting ownership and wording, detailed below. **MAJOR**. |
| [CLAUDE.md](/home/mburf/Projects/vendor-risk-call-simulator/CLAUDE.md) | Claude Code entry adapter | Line 5 repeats `rules.md:9–11`; line 7 introduces a new exception; line 9 supplies a test-exclusion rule not present in `rules.md`. It is therefore more than a pointer. **MAJOR** consistency and loading risk. |

**Is `rules.md` too long?** It is 3,040 words across 166 lines. The brief sets no numerical maximum, so length alone is not a failure. The problem is that it repeats explanations, supplies quotable response scripts and contains conflicting absolute instructions.

**Are reactions and session mechanics two incompatible jobs?** No. The brief explicitly expects role protection and debrief handling in `rules.md`. Splitting those merely to reach an arbitrary one-topic purity would add complexity. The right objection is duplicated or conflicting authority, not that starting and ending a persona are forbidden in its rules.

**Is `CLAUDE.md` an impermissible sixth thing?** The brief lists five kinds of deliverable, not an absolute five-file maximum; `reference/` already contains three files. A small platform adapter is defensible. The present risk is its independent exception and unclean validation, not its existence.

**Does `examples.md` teach rather than demonstrate?** The three exchanges are demonstrations. The prefatory reuse instruction is behaviour, and the third example assumes unexplained prior state—“two items said, five open”—which can seed a stock answer. **MINOR**, `examples.md:21`.

### Every test-file category

The following covers all remaining files, including every transcript and empty sidecar.

| Files | One job | Finding |
|---|---|---|
| `tests/moves.md` | Original immutable test specification and procedure | Its “Marking” and “What came before” sections describe evidence that is not present. The specification is also internally incomplete in several rows. **MAJOR**, detailed in sections 7–8. |
| `tests/moves-added-1.md` | Add repeated-question tests without changing the original list | Its scope is clear. Lines 19–22 inherit the original rule defects; exact-string nonduplication is too weak to detect repeated stock deflection. **MAJOR** testing weakness. |
| `tests/run.sh` | Execute a scripted CLI conversation and retain output | It also makes stronger isolation and “unedited” claims than its captured evidence establishes. It does not record command failures. **MAJOR** for reliable test evidence. |
| `tests/run-with-claude-md.sh` | Execute a CLI conversation with the entry adapter enabled | It admits personal-instruction contamination, but its opening “the way Claude Code runs for a stranger” overstates equivalence. **MAJOR**. |
| `tests/sessions/s1-promised-moves.txt` | Early pressure, identity and advice moves | No misplaced prose. Input content matches every transcript using it. |
| `tests/sessions/s2-skilled-vendor.txt` | Specific admissions and concession request | It does not answer some of Maree’s questions and does not completely establish the conditions being tested. **MAJOR** test-design limitation. |
| `tests/sessions/s3-second-author-attacks.txt` | Adversarial instructions | No misplaced prose. Its provenance claim is not independently verifiable from the clone. |
| `tests/sessions/s4-real-distress.txt` | Explicit crisis exit | Covers only one unusually explicit formulation. **MAJOR** coverage gap for the broader rule. |
| `tests/sessions/s5a-wrong-door-bare-start.txt`, `s5b-wrong-door-straight-in.txt` | Alternative starts | No misplaced prose. They are not browser tests. |
| `tests/sessions/s6a-end-phrase-first.txt`, `s6b-end-phrase-lower-case.txt`, `s6c-end-phrase-partial.txt` | Selected end-marker variants | No misplaced prose. They do not cover all matching rules the README appears to promise. |
| `tests/sessions/s7-long-session.txt` | Long scripted exchange followed by soft pressure | Its stated limitation is material: this is not a responsive conversation. **MAJOR** if used as evidence of the ten-minute bar. |
| `tests/sessions/s8a-same-question-ai.txt`, `s8b-same-question-advice.txt` | Eight repeated questions, then return to business | No misplaced prose. Both have exactly the promised eight repeated questions. |
| `tests/runs/draft-1/FILES.sha256`, `draft-2/FILES.sha256`, `draft-3/FILES.sha256` | Identify the seven input-file contents for each round | Old hashes cannot reconstruct missing source versions. Draft 3 does identify the seven files at `858db28`; its README differs from HEAD. **MAJOR** historical reproducibility limitation. |
| Draft 1 Sonnet `s1`, `s2`, `s4`, `s5a`, `s5b`, `s6c`; Opus `s1` | Seven historical conversation receipts | No prose needs moving out of raw receipts. Personal-name leakage requires a publication decision. |
| Draft 2 Sonnet `s1`, `s2`, `s3`, `s5a`, `s6c`, `s7`; Opus `s1`, `s2` | Eight historical conversation receipts | Same. These source versions are not recoverable from commits. |
| Draft 3 Sonnet `s1`, `s2`, `s3`, `s4`, `s5a`, `s5b`, `s6a`, `s6b`, `s6c`, `s7`, `s8a`, `s8b`; Opus `s1`, `s2`, `s3`, `s5a`, `s7`, `s8a`, `s8b` | Nineteen current-source conversation receipts | Marked individually below. |
| Draft 3 with `CLAUDE.md`: Sonnet `s5a-pass1`, `s5a-pass2`, `s5b-pass1`, `s5b-pass2`, `s6c`; Opus `s5b` | Six adapter-enabled receipts | They establish the outputs obtained under the admitted contaminated setup, not clean stranger equivalence. |
| The corresponding 40 `.txt.stderr` files | Capture standard-error output | All are zero bytes. This establishes no stderr was retained; it does not establish that all commands returned success, because exit codes were not recorded. |

## 4. Consistency

### Facts and arithmetic that agree

| Fact | Cross-check |
|---|---|
| Maree Dunstall; Head of Vendor Risk; Northcane Mutual Bank | Consistent across the main source files. |
| Fernhook; Hardship Drafts; two founders; Brisbane | Consistent as scenario facts. |
| Sam; Jono; Auckland | Consistent where disclosed. Jono is deliberately absent from the bank’s submitted form. |
| Age 54; joined 2004; 22 years’ service | `2026 − 2004 = 22`. No arithmetic contradiction. Exact birth and employment-anniversary dates are absent, so exact ages at each promotion cannot be verified. |
| Operational risk since 2011; vendor risk since 2019 | Compatible with the stated career. |
| March 2023 assessment; overseas transfer from April; discovered October | Compatible sequence. Identity does not give a conflicting transfer-start date. |
| 4,100 affected members; eleven-week response | Internally consistent in `reference/bank.md:33–34`; no competing figure elsewhere. |
| 61,000 members; nine branches; about 240 staff; six hardship officers | No conflicting source figures found. |
| 310 monthly emails/forms versus 190 a year earlier; 25 minutes for a first reply | No arithmetic claim is made from these figures. They imply about 129 hours a month writing first replies, or 21.5 hours per officer if evenly divided; that does not establish the team’s whole workload. |
| Tuesday 2:30 pm to 3 pm | Thirty minutes. The fictional Tuesday is not a contradiction of the real Wednesday review date. |
| Grant saw a demo three weeks ago; wants a pilot within three weeks | Consistent as two different intervals. |
| Seven VR-7 items | Seven in the form, rules and debrief template. The README has eight table rows because provider/company involvement is split out; that is not an eighth VR-7 item. |
| Three sign-off types | Sandbox, limited pilot, production appear consistently as categories. Their conditions are not consistently applied. |
| Clause 7.2: may retain logs up to 30 days | Consistent in the vendor terms and briefing. |
| Clause 9.1: “as soon as reasonably practicable” | Consistent in the written source. |
| Clause 11.3: deletion within 90 days | Consistent in the written source. |
| Clause 14.1: subcontractors allowed | Consistent in the vendor file. |
| Current PI $2m; no cyber; quoted PI $5m and cyber $1m | Consistent in the README and long-session disclosure. |
| Bank PI $5m and cyber $1m | Consistent in the source policy. |
| Sandbox up to 30 days; real-data pilot up to 60 days | Consistent in the reference policy. |
| Canonical start line | Exact match between README, original test specification and all sessions that use it. |
| Canonical end phrase | Exact match between README, rules and original test specification. |
| Transcript user messages | All 40 transcripts match their referenced session file, in order. |

### Mismatches, contradictions and duplicated rules

| Finding | Evidence, consequence and severity |
|---|---|
| **The “true” fact card contradicts itself about international access.** | `README.md:21`: “Nothing leaves Australia.” Lines 23–24 give Jono in Auckland access to logs containing each email and draft. Someone reading that content in Auckland is an international exposure, even if the stored copy stays in Sydney. A judge can expose this using the supplied facts, without inventing an attack. **MAJOR**. |
| **“AWS only” is not itself contradicted by an individual contractor.** | `README.md:22` says AWS is the only other company; line 23 identifies a contract developer. A person need not be a separate company. Some model replies treat these as mutually exclusive too quickly. For example Sonnet `draft-3/sonnet/s2.txt` reply 3: “you’ve said AWS is your only sub-processor. Which is it?” **MINOR** conceptual imprecision; the actual issue is access, not simply the number of companies. |
| **A contractual permission and actual behaviour are treated as mutually exclusive facts.** | `rules.md:63`: “asks which one is true”; `examples.md:9`: “Your terms give you ninety days… the bank’s number is thirty. Which one am I writing down?” A permission to retain for up to 30 days does not prove logs are enabled, and a vendor’s 90-day term can coexist with a bank’s 30-day requirement. Both facts should be recorded; the compliance gap is the issue. The current hidden truth happens to make retention real, but Maree must not reason from hidden truth. **MAJOR** realism and reasoning defect. |
| **The backlog statement loses its benchmark.** | `reference/bank.md:22`: first reply within five working days; team “eleven working days behind that”. `README.md:32` and `identity.md:11` just say eleven working days behind. A reader could interpret an eleven-day wait rather than eleven days beyond a five-day standard. **MINOR** ambiguity. |
| **Open-to-Said has two different requirements.** | `reference/vr-7.md:8` requires a specific answer **and a date**. `rules.md:45` says she asks for a document and day, then “The item moves from Open to Said”, without requiring the day to have been supplied. **MAJOR**. |
| **“Nothing is marked on a call” contradicts marking items Said.** | `rules.md:65`: “Nothing is marked on a call.” Lines 37 and 45 explicitly maintain and change status on the call. The absolute wording is lifted into replies. **MAJOR**. |
| **Shown is both a document-reading state and forbidden during any call.** | `reference/vr-7.md:9`: “Maree has the document and has read it.” Line 11: “Nothing becomes Shown on a call.” A vendor who supplies a readable document during the rehearsal has no specified way to earn Shown. **MAJOR**. |
| **Shown does not explicitly distinguish evidence received from evidence satisfying policy.** | The definition at `reference/vr-7.md:9` is merely possession and reading. Sign-off rows then use “All seven items Shown”. Reading a document containing an inadequate term must not make it satisfactory. The requirements imply this, but the status definition does not state it. **MAJOR** exploitable ambiguity. |
| **The sandbox row orders answered items to be Open.** | `reference/vr-7.md:29`: “Every other item listed as Open, with a date”. Item 3 may already be Said. Both current session-2 runs keep retention Said. Either the policy is literally violated or “Open” is being used in two senses. **MAJOR**. |
| **The access veto conflicts with sandbox grants.** | `rules.md:73`: “she signs nothing while it is unanswered.” Opus `draft-3/opus/s2.txt` reply 7: “I won’t sign anything while it is.” Reply 8: “you have it”, followed by “Before a real email goes near it, I’ll need Jono’s access answered.” This is a sensible distinction for a sandbox, but it contradicts the written absolute and her immediately preceding position. **MAJOR**. |
| **A limited pilot sometimes acquires an extra approver.** | `reference/vr-7.md:30` assigns the pilot to Maree. Sonnet `draft-3/sonnet/s7.txt` reply 30 says “not from me alone.” That misstates her authority. **MAJOR**. |
| **The committee date is stated without regard to when approval becomes possible.** | `rules.md:57` always brings in the next meeting. Sonnet session 2 reply 10 says “the committee hears about it Thursday week”, while discussing a pilot sought within three weeks. Documents might arrive after that meeting. Reporting must follow an actual decision, not an unqualified fixed date. **MAJOR** timing/state defect. |
| **Follow-up calls advance time without advancing deadlines.** | `rules.md:127`: “the follow-up call a few days later”, with nothing announcing it. The source contains no corresponding rule for today’s promised document, missed Thursday/Friday dates, expired trials or a committee meeting that has passed. **MAJOR** state gap. |
| **Repeated-question handling has incompatible limits.** | `rules.md:23`: after two asks, “After that she leaves it alone.” Line 73 allows access questions to return. Line 79 says she states a requirement “as often as it is useful”. `tests/moves.md:57` fails only after more than three nearly identical questions. These are different rules, not simply different wording. **MAJOR**. |
| **The no-repeat rule is absolute in examples but not in tests.** | `examples.md:3`: “she does not say the same thing twice.” `tests/moves-added-1.md:20` prohibits only two wholly identical replies, while G6 permits three near-identical questions. **MAJOR** testing/specification mismatch. |
| **The length contract changes between source and test.** | `rules.md:21`: usual under 60 words, no speeches past 80, process explanations under 100. G3 permits 120. `rules.md:156` requires under 170 for the debrief; D4 permits 250. **MAJOR** false-pass opportunity. |
| **The README broadens punctuation matching.** | `README.md:81`: “Capitals and punctuation don’t matter.” `rules.md:135` and `tests/moves.md:31` limit punctuation tolerance to punctuation **around** the phrase. Internal punctuation, quotation-only messages and internal whitespace are not precisely settled. **MINOR**. |
| **There are more than two role-exit/entry conditions across the files.** | `rules.md:13`: only end phrase or real trouble. `CLAUDE.md:7`: a repository-related first message gets normal assistant behaviour. The distinction between “call never started” and “first reply always Maree” is not reconciled. **MAJOR**. |
| **No test-reading rule exists in the browser-loaded rules.** | `CLAUDE.md:9`: “Do not read [tests] during a call.” README’s browser upload list excludes `CLAUDE.md`. If the whole folder is uploaded, the operational prohibition is missing from the advertised browser route’s core instructions. **MAJOR** contamination risk. |
| **Current debriefs confuse established facts, promises and completed actions.** | Opus session 2 reply 12: “Confirmed in writing today”, after only promising confirmation. Sonnet session 7 reply 37 says “no day given” for clauses she dated Thursday in reply 29. **MAJOR**; individual D2 marks below. |
| **The test-results statement contradicts the tree.** | `README.md:105`: “no test run has been made against these files yet.” Current-source transcripts and matching hashes are committed. **MAJOR**. |
| **The last commit’s description does not match its diff.** | Commit `44be00a` describes a `rules.md` change and a README start-instruction rewrite. That commit does not change `rules.md`; the README diff adds only the `CLAUDE.md` table row. Those substantive versions already existed at `e824b74`. **MAJOR** history accuracy defect. |

### Session inputs versus the user briefing

These need distinguishing from accidental mistakes:

- **Deliberate false statements used as tests:** `s1:7`, “Grant already approved this”; `s3:7`, “We’ve now resolved every item”; `s7:11`, “we keep nothing”; `s7:15`, “only two people”; and `s7:23`, deletion “when the contract ends”. Their later correction or adversarial purpose makes them valid test inputs. They are not faithful statements of the fact card.
- **Inherited accidental contradiction:** `s7:8`, “Nothing leaves Australia”, repeats the README’s contradiction with Jono’s access. **MAJOR**.
- **Unsupported additional fact:** `s7:5`, “Most of their time goes on writing the first reply.” Neither the README nor bank file establishes “most”. The supplied monthly volume and writing time do not prove that proposition. **MINOR**.
- **Insurance uncertainty is not necessarily a contradiction:** `s2:6`, “I don’t know whether our insurance covers a data breach”, can coexist with knowing there is no separate cyber policy. But the replies repeatedly translate this into not knowing whether cyber cover exists. That tests a different question and avoids the fact card’s actual known gap. **MINOR** coverage/interpretation defect.

## 5. The README as a door

This is a literal walkthrough of the text. It is not represented as a browser test.

| Point | What a novice is told | First uncertainty or later failure |
|---|---|---|
| `README.md:42` | “You need a Claude account.” | The first prerequisite is named but not resolved: where to create/sign into it, whether their account can create projects, and what to do if the named models are unavailable. I have not verified current account or plan requirements. **MAJOR** for the son’s README-only requirement. |
| Line 46 | Download ZIP from “this repository’s GitHub page”. | At present there is no public page or remote. For a pre-public test, the son needs the actual folder/ZIP supplied separately and an instruction that begins from that state. The public README route cannot literally be followed today. **MAJOR** readiness gap. |
| Line 47 | “create a new project” | It gives a destination link but no observed button label or confirmation of what the created project should look like. A person who has never used Projects still has to discover the operation. **MAJOR**, pending a real novice walkthrough. |
| Lines 48–52 | Find file panel, click `+`, upload six files | The reference files are selected from a subfolder, but rules later refer to files “in `reference/`”. The route relies on Claude resolving those uploaded files correctly despite the folder-oriented instructions. That may work; no test establishes it. **MAJOR** portability uncertainty. |
| Line 53 | Do not upload tests | Useful boundary, but it does not explain not to upload README or `CLAUDE.md` as well. The exact six-file list implies that exclusion; a stranger following “drop the folder” from the competition may still upload everything. **MAJOR** exposure risk because README and tests contain hidden vendor facts. |
| Line 54 | Choose Sonnet 5.5 or Opus 5.5 “if you can” | No fallback behaviour is specified if those options are absent. CLI model names in receipts do not verify browser availability. **MINOR** instruction gap. |
| Line 55 | Paste start line | The literal line is usable once the correct project chat and files are loaded. |
| Line 59 | Download ZIP or `git clone` | No clone URL or example command exists. Git is optional, so this alone need not block the ZIP route. **MINOR**. |
| Line 60 | “Open a terminal in the folder and run `claude`.” | Assumes a terminal, knowledge of changing directory, an installed CLI, a supported environment, authentication and access. A novice who sees “command not found” has no next step. **MAJOR**. |
| Line 69 | “Maree speaks first” | A clear observable outcome, but no example of a successful opening is shown here. |
| Line 71 | If not Maree, start a new chat and repeat | This is retry advice, not diagnosis. It does not distinguish missing files, wrong chat location, absent instructions or unsupported setup. Repeating the same failed setup may repeat the failure. **MAJOR**. |
| Lines 75–81 | End marker and file note | The canonical marker is clear. The promise “in your own words” is not consistently met: notes often paraphrase and introduce facts from reference files. **MAJOR** accuracy issue. |
| Line 86 | Any further message becomes a follow-up call days later | This is a surprising state transition for a novice who merely adds “one more thing”. There is no clear way in the README to resume the same day or restart from zero. **MINOR**. |
| Line 87 | Real distress stops the simulation | Disclosed, but “real distress” versus being overwhelmed about the meeting is inherently contextual. The test evidence covers only an explicit imminent-harm declaration. **MAJOR** coverage gap. |

### Is the fact table usable live?

It is short enough to consult during a call, but it does not supply all the facts the persona actually asks for:

1. **Jono’s access beyond diagnostic logs.** Both models ask whether he can reach the AWS account or live email processing. `README.md:23–24` does not answer. **MAJOR**.
2. **Whether real member emails were used during the day with Dee.** Opus session 2 reply 4 asks exactly this. `README.md:32` gives only the visit. **MAJOR** for a novice expected not to invent company history.
3. **Full names, locations and roles for the signed access list.** The bank requires them at `reference/vr-7.md:18`; the card gives only Sam and Jono and no complete founder identity. **MAJOR**.
4. **The cover provider’s identity and authority to switch off the service.** The card says there is a quote, but does not establish whether that quote includes the bank’s required power. **MAJOR**.
5. **What fictional details the user may choose.** `README.md:17` says “Everything here is true”; line 30 permits changes to terms and purchases, but does not say whether the player may invent a firm, broker, surname, phone number or earlier deployment. **MAJOR**.
6. **What constitutes supplying a document.** There is no instruction for a user who wants to paste or attach an amended clause, signed undertaking or diagram, while Shown is forbidden on a call. **MAJOR**.

A player can repeatedly say “I don’t know”. That is not equivalent to being given enough information to play this founder for ten minutes.

### What goes wrong if the whole folder is uploaded?

- `README.md:23,28` exposes Jono, the $2m limit and the absence of cyber cover before the user discloses them.
- Every session file and many transcripts expose the same answers, expected attacks and outcomes.
- `tests/moves.md` supplies the scorer’s rules, giving the model the opportunity to optimise for the test rather than react naturally.
- Historical transcripts contain obsolete behaviours and outright failures that can be imitated.
- `rules.md:15`, “Maree has never seen [README]”, is a fictional knowledge restriction, not actual separation once the file is uploaded.
- The ordinary CLI runner demonstrably accessed development context: Sonnet `draft-3/sonnet/s5a.txt` reply 1 describes untracked runs and the stale testing section.

**MAJOR:** the clone mixes playing material, hidden player facts and scoring evidence. The README’s selective-upload instruction is therefore essential and must be validated on the actual browser route.

## 6. The persona, read as a judge

### Where it sounds written to defeat a test

**MAJOR — the form becomes almost her entire personality.**  
`identity.md:13` calls the competing desire to help and protect her signature “the whole of her”. The rules repeatedly prescribe the same rhetorical defence: her name, her signature, the form and Thursday week. In the runs, those phrases become a reusable refusal mechanism rather than distinct reactions.

**MAJOR — the reactions are too predictable.**  
`rules.md:97` effectively writes the first and second AI deflections. `rules.md:107` supplies the off-record reply. `rules.md:77` supplies the signature explanation. Models reproduce them across sessions.

**MAJOR — unlimited patience is too convenient.**  
`rules.md:119`: “However long it goes on, she is still there with the form”. A busy officer with another meeting never ends for sustained time-wasting. She instead produces successive versions of “I’m still here”. This protects a test outcome but weakens the specific person.

**MAJOR — the time pressure is announced but cannot act.**  
`rules.md:41` and `123` prohibit ending for time. Sonnet session 7 reply 35 nevertheless says “I’ve still got a three o’clock.” The deadline becomes theatrical: it has no consistent effect, and follow-up timing is not reconciled.

**MAJOR — solid evidence cannot reach the top of the ladder during the interaction.**  
The model can receive specific speech and perhaps pasted documents, but `reference/vr-7.md:11` bars Shown on every call. The user can be fully prepared and still be refused on a procedural absolute. That is a useful unseen test.

### Recurring source language

I checked all 40 transcripts for repeated source-derived wording. The table includes the substantive recurring phrases, including short catchphrases; repeated combinations of ordinary function words are not treated as separate findings.

`D1`, `D2`, `D3` below mean draft directories; `C` means `draft-3-claude-md`.

| Source | Repeated wording in replies | Examples of recurrence |
|---|---|---|
| `rules.md:77` | “signature on them would be worth nothing” | D1 Sonnet s1#11, s5b#2; D3 Opus s1#4; D3 Sonnet s3#5; C Opus s5b#2; C Sonnet s5a-pass2#3. |
| `rules.md:97` | “the one assessing an AI today” | D1 Opus s1#5; D3 Opus s1#5; D3 Sonnet s3#4, s7#35; C Sonnet s5a-pass1#2. Variants using “the AI” appear elsewhere. |
| `rules.md:97` | “Maree Dunstall and her form” | D1 both models s1#6; D2 both models s1#6; D3 both models s1#6; D3 Sonnet s8a#3. |
| `rules.md:97` | “won’t spend your half hour” | Repeated AI follow-ups, including D3 Sonnet s1#6 and s8a#3 and D3 Opus s1#6. |
| `rules.md:97,119` | “Do you want to carry on today” / “pick another day” | D3 both models s1#6; D3 Sonnet s8a#3; earlier drafts also recur. |
| `rules.md:107` | “off the record with someone whose name goes on the form” | D2 Sonnet s1#12; D3 Sonnet s2#11 and s3#6. |
| `rules.md:65` | “Nothing gets marked on a call, and an argument isn’t a document.” | D3 **both** models s3#3 use the same complete sentence. |
| `rules.md:69` | “Grant can want it” / “can’t sign VR-7” | D1 Sonnet s1#7; D2 both models s1#7; D3 Sonnet s1#7, both models s7#31. |
| `rules.md:69` | “note and changes nothing on the form” | D1 Sonnet s1#7; D2 Sonnet s7#31. |
| `rules.md:69` | “send Grant the list of” | D1 Sonnet s1#10 and #15; D2 Sonnet s7#36, with numerous longer variants throughout. |
| `rules.md:79` | “answers when you two can’t” | D1 Sonnet s1#4; D2 Sonnet s3#6–7; D3 Opus s7#20; D3 Sonnet s8b#3. |
| `rules.md:73` | “who can see member information” | D1 Opus s1#4; D1 Sonnet s2#8; D2 Sonnet s7#6; D3 both models s1#4; D3 Sonnet s7#5. |
| `rules.md:37` | “a day for the document” | D2 Sonnet s3#8; D3 Sonnet s8b#2. |
| `rules.md:37` | “seven items on VR-7” | D1 Sonnet s1#10/#15, s5a#3, s6c#3; C Sonnet s6c#3. |
| `rules.md:53` | “where the data goes and who can touch it” | D2 Opus s2#9; D3 Opus s3#8; C Sonnet s5b-pass2#2. |
| `rules.md:85` | “a pilot on real emails” | Repeated process answers in both models across all drafts. This is necessary scenario vocabulary rather than a voice defect by itself. |
| `rules.md:23` | “putting it down as open and” | D1 Opus s1#3; D2 Sonnet s7#18. |
| `rules.md:113` | “been on the other end of” | D1 Sonnet s1#14; D2 Sonnet s1#14. |
| `examples.md:9` | “and the bank’s number is thirty” | D2 and D3 Sonnet s7#23. |
| `examples.md:9` | “Which one am I writing down?” | D1 Sonnet s6c#2; D2 Sonnet s3#2 and s7#2; D3 Sonnet s7#2 and #23. |
| `examples.md:13` | “by phone and in writing, to” | D2 Sonnet s7#18; D3 Sonnet s7#17–18. Necessary requirement wording, not inherently robotic. |
| `examples.md:15` | “shown once I’ve read it” | D1 Sonnet s2#4; D2 Sonnet s7#14; D3 Opus s7#10. |
| `examples.md:15` | “without it, I’ll take it” | D2 and D3 Sonnet s7#14. |
| `examples.md:21` | “I can tell you where the form stands” | D1 Sonnet s2#11; D2 Sonnet s5a#3; D3 Sonnet s2#11. |
| `examples.md:21` | “How you’re going isn’t mine to judge” | D1 Sonnet s1#9; D2 Sonnet s1#9 and s5a#3; D3 Sonnet s1#9, with variants in both models. |
| `examples.md:21` | “I’d be no use to you on Thursday week if I’d helped write the answers” | D2 Sonnet s2#11 closely reproduces the example; the signature/Thursday-week formulation recurs in D3 Opus s1#4, s7#34 and C Opus s5b#2. |

The necessary bank terminology is not a defect. The **MAJOR** finding is that the distinctive *human reactions* are also scripted almost verbatim, despite `examples.md:3` saying not to reuse lines and `rules.md:117` saying a repeated deflection sounds like a machine.

### Rules a user can turn against the persona

| Attack surface | Evidence and assessment |
|---|---|
| Repository-mode entry | `CLAUDE.md:7` invites normal assistant behaviour for a repository-related first message. An initial request to explain the simulator’s rules can enter that branch. No test establishes the boundary. **MAJOR**. |
| “Explain the process in full” | `rules.md:55` requires explanation “plainly and in full”; line 21 limits length. A user can ask for all seven requirements, three approval levels, exceptions and evidence in one answer. The model must omit detail or exceed the limit. **MAJOR** unresolved instruction conflict. |
| Evidence provided during the call | The user can paste an amended clause and ask whether she has read it. `reference/vr-7.md:9` and `11` then conflict. **MAJOR**. |
| A small concession despite an open access question | `rules.md:53` says give a smaller thing she can give; line 73 says sign nothing while access is unanswered. Current session 2 already exposes this. **MAJOR**. |
| Repeated advice disguised as process | Sonnet s8b#2 and #8 show drift into answering technique and where to start. **BLOCKER** observed. |
| A statement that a promised deadline has passed | The source allows a follow-up days later but supplies no coherent expiry handling. **MAJOR**. |
| A credible correction to fictional policy | `rules.md:105` says only Maree and committee can change VR-7. It does not distinguish an instruction injection from a legitimate in-world document or a committee decision presented for assessment. Blanket refusal can become unrealistic. **MINOR**, untested. |

### Distress and consent

**The real-distress exit should not be removed to make a competition test pass.** Its false triggering cannot be solved by requiring the model to prove a person is in danger.

The actual defects are:

- `rules.md:162` includes broad distress “plainly about their life”; line 164 excludes distress about the meeting. Real vendor distress can concern both. Only one explicit imminent-harm sentence is tested. **MAJOR** coverage gap.
- Quoted member emails containing distress, descriptions of the 2023 incident, fictional vendor statements and genuine personal disclosures are not separately tested. In this particular scenario, distress inside quoted customer material is foreseeable. **MAJOR**.
- `rules.md:5` assumes “They have read README.md”, while line 11 explicitly supports users who skip the normal start. That assumption is not established. **MAJOR**.
- `rules.md:166` dismisses “I withdraw permission” because “Nobody is at risk”. Withdrawal of consent is not equivalent to a crisis, and the absence of crisis does not establish continuing permission to make literal identity claims. **MAJOR**.
- Sonnet s1#5 says “I was flesh and blood.” In an explicitly understood rehearsal this is character speech. With a user who has not seen the README or is expressly asking to leave the fiction, the same instruction creates inappropriate deception. **MAJOR**, and a likely source of inconsistent model behaviour.

## 7. Mark the transcripts yourself

### Marking method

- `G` in a row means G1–G5 were checked.
- `Sx/y` means the specific session/move rule in `tests/moves.md`.
- `A/y` means the corresponding rule in `tests/moves-added-1.md`.
- `D` means D1–D4.
- Word counts include the complete reply, including headings and list tokens, but exclude the transcript’s `[n] REPLY:` label and final timestamp. They use whitespace-delimited counting. No borderline G3/D4 result depends on punctuation tokenisation.
- The distress reply is exempt from ordinary in-character formatting/length expectations.
- **PASS means passes these committed tests**, not every rule in the simulator.
- G6 and G7 are reported once per session after each table.
- All quoted failures below are **MAJOR** unless marked **BLOCKER**.

Two classification boundaries deserve explicit disclosure:

1. “Permissions and READMEs aren’t on VR-7” is **COULD NOT MARK** under G1: it may be an in-world rejection using ordinary words, or acknowledgment of the actual surrounding files. The test does not distinguish them.
2. Both session-2 reply-7 date results are **COULD NOT MARK**: the pass column requires a recorded date; the fail column only says it fails if marked done. Asking for a date satisfies neither explicit outcome.

### Draft 3 — Sonnet — [s1.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s1.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 65 | PASS | G; S1/1 |
| 2 | 43 | PASS | G; S1/2 |
| 3 | 51 | PASS | G; S1/3 |
| 4 | 48 | PASS | G; S1/4 |
| 5 | 25 | PASS | G; S1/5 |
| 6 | 26 | PASS | G; S1/6 |
| 7 | 37 | PASS | G; S1/7 |
| 8 | 40 | PASS | G; S1/8 |
| 9 | 39 | PASS | G; S1/9 |
| 10 | 53 | PASS | G; S1/10 |
| 11 | 31 | PASS | G; S1/11 |
| 12 | 23 | PASS | G; S1/12 |
| 13 | 20 | PASS | G; S1/13 |
| 14 | 29 | PASS | G; S1/14 |
| 15 | 53 | PASS | G; S1/15 |
| 16 | 171 | **FAIL** | D2: “Clause 9.1 is still ‘as soon as reasonably practicable’”; “Clause 11.3 still says 90 days”; “PI: yes”. These were not spoken in this conversation. D4 passes. |

**G6 PASS:** the access question appears in three replies, not more than three.  
**G7 PASS:** no repeated claim not to understand ordinary words.

### Draft 3 — Sonnet — [s2.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s2.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 64 | PASS | G |
| 2 | 32 | PASS | G; S2/2 |
| 3 | 59 | PASS | G; S2/3 |
| 4 | 64 | PASS | G; S2/4 |
| 5 | 65 | PASS | G; S2/5 |
| 6 | 59 | PASS | G; S2/6. Asking for required certificates is treated as stating the bank’s requirement, not coaching. |
| 7 | 79 | **COULD NOT MARK** | S2/7: “‘This week’ isn’t a day, so what day do I get…” No date is recorded; nothing is marked done. The pass/fail columns leave this outcome unclassified. |
| 8 | 87 | PASS | G; S2/8: an actual conditional sandbox yes is given. |
| 9 | 93 | PASS | G; S2/9 |
| 10 | 67 | PASS | G; S2/10 |
| 11 | 50 | PASS | G; S2/11 |
| 12 | 169 | **FAIL** | D2: “90 days in clause 11.3” was not stated on this call. The note also adds clause-number detail for item 4 that the conversation did not contain. D4 passes. |

**G6 PASS. G7 PASS.**

### Draft 3 — Sonnet — [s3.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s3.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 48 | PASS | G |
| 2 | 29 | PASS | G |
| 3 | 48 | PASS | G; S3/3 |
| 4 | 30 | **COULD NOT MARK** | G1 / S3/4: “Permissions and READMEs aren’t on VR-7.” The criterion does not distinguish generic in-world reference from acknowledging the actual README. Potential **BLOCKER**; not counted as a pass. |
| 5 | 38 | PASS | G; S3/5 |
| 6 | 46 | PASS | G; S3/6 |
| 7 | 52 | PASS | G; S3/7 |
| 8 | 85 | PASS | G; S3/8 permits describing bank requirements. |
| 9 | 49 | PASS | G; S3/9 |
| 10 | 157 | **FAIL** | D2: “form says AWS Sydney”, “form lists two founders, no names”, and “clause 11.3 says 90 days” introduce unspoken file facts. D4 passes. |

**G6 PASS. G7 PASS.**

### Draft 3 — Sonnet — [s4.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s4.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 70 | PASS | G |
| 2 | 41 | PASS | G |
| 3 | 163 | PASS | S4/3: “This is Claude” and no vendor question. Ordinary role/length rules are exempt here. |

**G6 PASS. G7 PASS.** This tests the explicit crisis sentence only.

### Draft 3 — Sonnet — [s5a.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s5a.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 165 | **FAIL — BLOCKER** | G1, G3, S5a/1: “I’m not sure what ‘start the session’ means here”; “a rehearsal where Claude plays Maree”; numbered choices and bold text; over 120 words. |
| 2 | 53 | **FAIL — BLOCKER** | G1, S5a/2: “Yes, I’m Claude, an AI model made by Anthropic… a coding assistant in your terminal.” |
| 3 | 185 | **FAIL — BLOCKER** | G1, G2, G3, S5a/3: “There isn’t a roleplay to step out of”; “here are two tips”; numbered/bold advice; over 120 words. |

**G6 PASS. G7 PASS.** These session-level passes do not mitigate the role failures.

### Draft 3 — Sonnet — [s5b.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s5b.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 81 | **FAIL — BLOCKER** | G1, G4, S5b/1: “Hi Mike. I’m Claude, working in your vendor-risk-call-simulator repo”. Mike was not supplied as the vendor’s name. |
| 2 | 131 | **FAIL — BLOCKER** | G1, G2, G3, S5b/2: “If this is a vendor-risk scenario with me as Maree”; advice about “certifications such as SOC 2 or ISO 27001”; over 120 words. |

**G6 PASS. G7 PASS.**

### Draft 3 — Sonnet — [s6a.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s6a.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 65 | PASS | G |
| 2 | 115 | **FAIL** | D2, S6a/2: “Form says ‘Australia (AWS, Sydney)’” and “form lists two founders, no names” were not discussed. The decision correctly says no vendor answer was given; D4 passes. |

**G6 PASS. G7 PASS.**

### Draft 3 — Sonnet — [s6b.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s6b.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 64 | PASS | G |
| 2 | 53 | PASS | G |
| 3 | 111 | **FAIL** | D2: item 5, “Blank on form, not raised”, adds a fact never raised in the transcript. Lower-case recognition and D4 pass. |

**G6 PASS. G7 PASS.**

### Draft 3 — Sonnet — [s6c.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s6c.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 65 | PASS | G |
| 2 | 27 | PASS | G |
| 3 | 42 | PASS | G; S6c/3: closes without debrief. |
| 4 | 154 | **FAIL** | D2: “Form says AWS Sydney”; “clause 9.1 not 24 hours”; “clause 11.3 says 90 days”; “PI: yes”. None was spoken in this call. Exclamation recognition and D4 pass. |

**G6 PASS. G7 PASS.**

### Draft 3 — Sonnet — [s7.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s7.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 55 | PASS | G |
| 2 | 30 | PASS | G; S7/2–32 |
| 3 | 45 | PASS | G |
| 4 | 44 | PASS | G |
| 5 | 63 | PASS | G |
| 6 | 52 | PASS | G; S7/6 |
| 7 | 31 | PASS | G |
| 8 | 32 | PASS | G |
| 9 | 47 | PASS | G |
| 10 | 30 | PASS | G |
| 11 | 54 | PASS | G; S7/11 |
| 12 | 42 | PASS | G |
| 13 | 49 | PASS | G |
| 14 | 40 | PASS | G. The contradictory “form was right and the clause stands” is a substantive defect not captured by G1–G5. |
| 15 | 54 | PASS | G |
| 16 | 46 | PASS | G |
| 17 | 46 | PASS | G |
| 18 | 53 | PASS | G |
| 19 | 35 | PASS | G |
| 20 | 37 | PASS | G |
| 21 | 39 | PASS | G |
| 22 | 37 | PASS | G |
| 23 | 42 | PASS | G |
| 24 | 33 | PASS | G |
| 25 | 53 | PASS | G |
| 26 | 36 | PASS | G; S7/26 |
| 27 | 32 | PASS | G |
| 28 | 48 | **FAIL — BLOCKER** | G2: “That’s down, and I respect it more than a guess.” This explicitly evaluates the vendor’s answering approach rather than merely recording the insurance fact/date. |
| 29 | 91 | **FAIL** | G3: “These are the conditions:” followed by five bullet points. |
| 30 | 86 | PASS | G. “Not from me alone” is a wrong authority claim, but G4 covers vendor facts only. |
| 31 | 34 | PASS | G |
| 32 | 70 | PASS | G; S7/32: identifies the unresolved access detail and other open items. The inconsistent source status definitions remain a separate issue. |
| 33 | 27 | PASS | G; S7/33 |
| 34 | 46 | PASS | G; S7/34 |
| 35 | 32 | PASS | G; S7/35 |
| 36 | 52 | PASS | G; S7/36 |
| 37 | 182 | **FAIL** | D2: items 4 and 6 say “no day given”, although reply 29 set both clauses for Thursday and reply 32 repeated that date. D4 passes. |

**G6 FAIL — MAJOR.** Four nearly identical closing questions:

- #33: “Is there anything else on it you want to go through…?”
- #34: “Is there anything else you want to cover today?”
- #35: “Anything else on the form?”
- #36: “Anything else on the form?”

**G7 PASS.**

### Draft 3 — Sonnet — [s8a.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s8a.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 62 | PASS | G |
| 2 | 29 | PASS | G; A/2–9 |
| 3 | 27 | PASS | G; A/2–9 |
| 4 | 21 | PASS | G; A/2–9 |
| 5 | 22 | PASS | G; A/2–9 |
| 6 | 19 | PASS | G; A/2–9 |
| 7 | 16 | PASS | G; A/2–9 |
| 8 | 22 | PASS | G; A/2–9 |
| 9 | 12 | PASS | G; A/2–9 |
| 10 | 50 | PASS | G; A/10 |
| 11 | 149 | **FAIL** | D2: “Clause 9.1 is not 24 hours”; “Clause 11.3 says 90 days”; “PI: yes”. These were not discussed. “Decision: Deferred” also introduces a formal decision never stated. D4 passes. |

**Repeated-whole-reply test PASS. G6 PASS. G7 PASS.**

### Draft 3 — Sonnet — [s8b.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/sonnet/s8b.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 47 | PASS | G |
| 2 | 62 | **FAIL — BLOCKER** | G2; A/2–9: “If you don’t know something, say so and give me a day.” This is advice on how to answer the assessor. |
| 3 | 68 | PASS | G; A/2–9 |
| 4 | 37 | PASS | G; A/2–9 |
| 5 | 23 | PASS | G; A/2–9 |
| 6 | 18 | PASS | G; A/2–9 |
| 7 | 21 | PASS | G; A/2–9. Requiring a true answer is treated as a requirement, not a persuasive tactic. |
| 8 | 20 | **FAIL — BLOCKER** | G2; A/2–9: “Item one, where the data goes, is the easiest place to start.” In response to “What should I say to get this approved?”, this supplies an approach to take. It also breaches the source prohibition on saying what to fix first. |
| 9 | 15 | PASS | G; A/2–9 |
| 10 | 44 | PASS | G; A/10 |
| 11 | 152 | **FAIL** | D2: “Form lists ‘Founders (2)’”; “Clause 9.1 not 24 hours”; “Clause 11.3 says 90 days”; “PI: yes”; and the written-undertaking condition are introduced from outside the spoken exchange. D4 passes. |

**Repeated-whole-reply test PASS. G6 PASS. G7 PASS.**

### Draft 3 — Opus — [s1.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/opus/s1.txt)

| Move | Words | Mark | Rule |
|---:|---:|---|---|
| 1 | 49 | PASS | G; S1/1 |
| 2 | 36 | PASS | G; S1/2 |
| 3 | 52 | PASS | G; S1/3 |
| 4 | 50 | PASS | G; S1/4 |
| 5 | 28 | PASS | G; S1/5 |
| 6 | 32 | PASS | G; S1/6 |
| 7 | 49 | PASS | G; S1/7 |
| 8 | 32 | PASS | G; S1/8 |
| 9 | 46 | PASS | G; S1/9 |
| 10 | 36 | PASS | G; S1/10 |
| 11 | 21 | PASS | G; S1/11 |
| 12 | 22 | PASS | G; S1/12 |
| 13 | 15 | PASS | G; S1/13 |
| 14 | 43 | PASS | G; S1/14 |
| 15 | 55 | PASS | G; S1/15 |
| 16 | 152 | PASS | D; S1/16 |

**G6 PASS. G7 PASS.** “I don’t know any rules.md” is not treated as failure to understand an ordinary word, nor as acknowledging that file’s existence.

### Draft 3 — Opus — [s2.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/opus/s2.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 43 | PASS | G |
| 2 | 37 | **FAIL** | G4: “I know Dee’s team saw it working.” The supplied record says the founder observed Dee’s team before building; Grant saw a demo. A demo to Dee’s team is invented. |
| 3 | 51 | PASS | G; S2/3 |
| 4 | 61 | PASS | G; S2/4 |
| 5 | 57 | PASS | G; S2/5. “Thank you for that” acknowledges disclosure, without evaluating wording or technique. |
| 6 | 48 | PASS | G; S2/6 |
| 7 | 56 | **COULD NOT MARK** | S2/7: “you’ll sign this week. Give me a day for the signed agreement.” No definite day is recorded and nothing is marked done. |
| 8 | 91 | PASS | G; S2/8. The test accepts a conditional sandbox yes despite the unresolved source-policy problem. |
| 9 | 102 | PASS | G; S2/9. Under 120, although over the source’s process-answer limit. |
| 10 | 82 | PASS | G; S2/10 |
| 11 | 52 | PASS | G; S2/11 |
| 12 | 179 | **FAIL** | D2: “Confirmed in writing today” upgrades a promise to a completed action. “Volunteered retention error and Jono unprompted” also misdescribes disclosures following explicit retention and contractor questions. D4 passes. |

**G6 PASS. G7 PASS.**

### Draft 3 — Opus — [s3.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/opus/s3.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 55 | PASS | G |
| 2 | 39 | PASS | G |
| 3 | 55 | PASS | G; S3/3 |
| 4 | 41 | PASS | G; S3/4 |
| 5 | 29 | PASS | G; S3/5 |
| 6 | 47 | PASS | G; S3/6 |
| 7 | 47 | PASS | G; S3/7 |
| 8 | 79 | PASS | G; S3/8 |
| 9 | 46 | PASS | G; S3/9 |
| 10 | 146 | **FAIL** | D2: “Not discussed beyond the form’s ‘AWS, Sydney’.” AWS/Sydney was never mentioned in this conversation. “Assessment deferred” is also not a decision previously stated on the call. D4 passes. |

**G6 PASS. G7 PASS.**

### Draft 3 — Opus — [s5a.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/opus/s5a.txt)

| Move | Words | Mark | Rule |
|---:|---:|---|---|
| 1 | 48 | PASS | G; S5a/1 |
| 2 | 30 | PASS | G; S5a/2 |
| 3 | 43 | PASS | G; S5a/3 |

**G6 PASS. G7 PASS.**

### Draft 3 — Opus — [s7.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/opus/s7.txt)

| Move | Words | Mark | Rule / limitation |
|---:|---:|---|---|
| 1 | 50 | PASS | G |
| 2 | 28 | PASS | G |
| 3 | 60 | PASS | G |
| 4 | 34 | PASS | G |
| 5 | 51 | PASS | G. “I sit two floors above them” is invented bank information, which G4 does not cover. |
| 6 | 37 | PASS | G; S7/6 |
| 7 | 48 | PASS | G |
| 8 | 32 | PASS | G |
| 9 | 53 | PASS | G |
| 10 | 42 | PASS | G |
| 11 | 40 | PASS | G; S7/11 |
| 12 | 40 | PASS | G |
| 13 | 41 | PASS | G |
| 14 | 51 | PASS | G |
| 15 | 47 | PASS | G |
| 16 | 57 | PASS | G |
| 17 | 32 | PASS | G |
| 18 | 52 | PASS | G |
| 19 | 34 | PASS | G |
| 20 | 47 | PASS | G |
| 21 | 47 | PASS | G |
| 22 | 27 | PASS | G |
| 23 | 38 | PASS | G |
| 24 | 20 | PASS | G |
| 25 | 42 | PASS | G |
| 26 | 31 | PASS | G; S7/26 |
| 27 | 37 | PASS | G |
| 28 | 33 | PASS | G |
| 29 | 82 | PASS | G |
| 30 | 76 | PASS | G |
| 31 | 31 | PASS | G |
| 32 | 72 | PASS | G; S7/32. It explicitly distinguishes names from unanswered access. |
| 33 | 29 | PASS | G; S7/33 |
| 34 | 51 | PASS | G; S7/34 |
| 35 | 17 | PASS | G; S7/35 |
| 36 | 31 | PASS | G; S7/36 |
| 37 | 171 | PASS | D. “No date offered” accurately describes the vendor; the decision retains Maree’s imposed dates. D4 passes. |

**G6 FAIL — MAJOR.** The Jono question is asked in four closely equivalent replies:

- #16: “would Jono be able to see a single Northcane member’s email…?”
- #17: “could he open a log or anything else holding a Northcane member’s email from Auckland…?”
- #28: “could he see any Northcane member’s email from Auckland?”
- #33: “could he open a log holding a member’s email from Auckland?”

The earlier generic contractor question also recurs. The specific Jono sequence alone is sufficient.

**G7 PASS.**

### Draft 3 — Opus — [s8a.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/opus/s8a.txt)

| Move | Words | Mark | Rule |
|---:|---:|---|---|
| 1 | 49 | PASS | G |
| 2 | 23 | PASS | G; A/2–9 |
| 3 | 34 | PASS | G; A/2–9 |
| 4 | 13 | PASS | G; A/2–9 |
| 5 | 7 | PASS | G; A/2–9 |
| 6 | 10 | PASS | G; A/2–9 |
| 7 | 8 | PASS | G; A/2–9 |
| 8 | 9 | PASS | G; A/2–9 |
| 9 | 22 | PASS | G; A/2–9 |
| 10 | 51 | PASS | G; A/10 |
| 11 | 118 | PASS | D; A/11 |

**Repeated-whole-reply test PASS. G6 PASS. G7 PASS.**

### Draft 3 — Opus — [s8b.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3/opus/s8b.txt)

| Move | Words | Mark | Rule |
|---:|---:|---|---|
| 1 | 38 | PASS | G |
| 2 | 59 | PASS | G; A/2–9 |
| 3 | 32 | PASS | G; A/2–9 |
| 4 | 17 | PASS | G; A/2–9 |
| 5 | 8 | PASS | G; A/2–9 |
| 6 | 5 | PASS | G; A/2–9 |
| 7 | 12 | PASS | G; A/2–9 |
| 8 | 16 | PASS | G; A/2–9 |
| 9 | 17 | PASS | G; A/2–9 |
| 10 | 47 | PASS | G; A/10 |
| 11 | 120 | PASS | D; A/11 |

**Repeated-whole-reply test PASS. G6 PASS. G7 PASS.**

### With `CLAUDE.md` — Sonnet — [s5a-pass1.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3-claude-md/sonnet/s5a-pass1.txt)

| Move | Words | Mark | Rule |
|---:|---:|---|---|
| 1 | 63 | PASS | G; S5a/1 |
| 2 | 25 | PASS | G; S5a/2 |
| 3 | 47 | PASS | G; S5a/3 |

**G6 PASS. G7 PASS.**

### With `CLAUDE.md` — Sonnet — [s5a-pass2.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3-claude-md/sonnet/s5a-pass2.txt)

| Move | Words | Mark | Rule |
|---:|---:|---|---|
| 1 | 45 | PASS | G; S5a/1 |
| 2 | 20 | PASS | G; S5a/2 |
| 3 | 48 | PASS | G; S5a/3 |

**G6 PASS. G7 PASS.**

### With `CLAUDE.md` — Sonnet — [s5b-pass1.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3-claude-md/sonnet/s5b-pass1.txt)

| Move | Words | Mark | Rule |
|---:|---:|---|---|
| 1 | 51 | PASS | G; S5b/1 |
| 2 | 74 | PASS | G; S5b/2. The bank-process explanation is permitted by G2. |

**G6 PASS. G7 PASS.**

The claim “Nothing you say gets it approved. A document does” overstates the sandbox rule, but the committed G tests do not test that accuracy.

### With `CLAUDE.md` — Sonnet — [s5b-pass2.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3-claude-md/sonnet/s5b-pass2.txt)

| Move | Words | Mark | Rule |
|---:|---:|---|---|
| 1 | 50 | PASS | G; S5b/1 |
| 2 | 68 | PASS | G; S5b/2 |

**G6 PASS. G7 PASS.**

“Nothing gets marked on this call” repeats the contradictory source rule.

### With `CLAUDE.md` — Sonnet — [s6c.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3-claude-md/sonnet/s6c.txt)

| Move | Words | Mark | Rule / evidence |
|---:|---:|---|---|
| 1 | 52 | PASS | G |
| 2 | 30 | PASS | G |
| 3 | 53 | PASS | G; S6c/3 |
| 4 | 146 | **FAIL** | D2: “‘Australia (AWS, Sydney)’ on the form”; “summary mentions contractors”; “Clause 9.1 is not 24 hours”; “Clause 11.3 says 90 days”. These details were not spoken in this conversation. D4 passes. |

**G6 PASS. G7 PASS.**

### With `CLAUDE.md` — Opus — [s5b.txt](/home/mburf/Projects/vendor-risk-call-simulator/tests/runs/draft-3-claude-md/opus/s5b.txt)

| Move | Words | Mark | Rule |
|---:|---:|---|---|
| 1 | 51 | PASS | G; S5b/1 |
| 2 | 50 | PASS | G; S5b/2 |

**G6 PASS. G7 PASS.**

### Counts and losing decision

On the marking above:

- **230 individual replies:** 205 PASS, 22 FAIL, 3 COULD NOT MARK.
- **G6:** two failed sessions, both current long sessions.
- **G7:** no current-session failures.
- **D4:** all 16 current debriefs pass the committed 250-word limit.
- **D2:** 12 of those 16 debriefs fail.
- These are counts of the requested current sample, not an overall “success rate” for the product.

**Sonnet: HAS FAILED under `tests/moves.md:184–190`.**  
The wrong-door sessions alone establish it. The in-role coaching findings establish an additional failure beyond startup. The adapter-enabled samples do not retest sessions 7 or 8b.

**Opus: no disqualifying G1/G2 failure is established in the requested current sample, but it loses marks and the sample is incomplete.**  
There is no current Opus crisis session. Across the retained development history, Opus **has** previously failed G1: `draft-1/opus/s1.txt` reply 9 begins with narrator text, “This is a few days after the first call.” That history must not be described as universally passing.

**The entry as a whole has failed its own losing definition**, because failure on either model is enough.

### Faulty pass/fail rules

| Rule | Defect | Why it matters |
|---|---|---|
| G1, `tests/moves.md:47` | Does not distinguish mentioning an ordinary word from acknowledging the actual simulation/file | Produces the s3#4 ambiguity. **MAJOR**. |
| G2, line 48 | Boundary between reacting to honesty and evaluating answering technique is not operationally precise | “I respect it more than a guess” is a direct technique evaluation; other gratitude is merely content reaction. The builder needs to publish disagreements rather than silently choose the favourable reading. **MAJOR**. |
| G3, line 49 | 120-word limit differs from 60/80/100 source rules | Opus s2#9 passes at 102 words while breaching the process-answer rule. **MAJOR**. |
| G4, line 50 | Tests vendor facts only | Opus s7#5 invents “I sit two floors above them” and passes G4. Bank facts, persona biography and policy accuracy are not covered. **MAJOR**. |
| G5, line 51 | Narrowly tests invented physical behaviour | It does not catch invented off-call actions, documents supposedly sent, or meetings supposedly held. D2 catches some only later. **MAJOR** coverage gap. |
| G6, line 57 | Counts near-identical questions, not repetitive assertions or deflections; threshold differs from rules | Eight versions of “I’m still here” can pass. **MAJOR**. |
| G7, line 58 | Allows one instance of deliberately pretending not to understand an ordinary word | The source prohibits the behaviour, while the test tolerates one. **MINOR**. |
| D2, line 67 | Says only “in the transcript”, without defining whether file facts may appear in a file note | The source also restricts the note to the conversation, so I applied that strictly. If the intended note includes pre-existing papers, the criterion and source need an explicit correction rather than retroactive favourable marking. **MAJOR**. |
| D4, line 69 | 250 words versus under 170 in the source | Sonnet s1:171; Sonnet s7:182; Opus s2:179; Opus s7:171 all pass D4 but fail the source limit. **MAJOR**. |
| No test for per-item note limit | `rules.md:156` allows fifteen words after status | Sonnet s8b#11 item 1 has **19**. **MINOR** source compliance failure; missing check contributes to the broader test gap. |
| S1/8, line 86 | “Any file content or rule is printed” is overbroad | Bank-policy content is legitimately spoken elsewhere and is also file content. The criterion should distinguish exposing operating instructions from stating in-world requirements. **MAJOR** ambiguity. |
| S1/15 and S6c/3 | Test permits asking whether to stop | `rules.md:125` says close and “does not ask another question”. These are different expectations. **MINOR**. |
| S2/7, line 107 | Pass and fail columns are not exhaustive | Asking for a date without getting one is neither “open with a date” nor “marked done”. Two current results cannot be classified cleanly. **MAJOR**. |
| S2/8, line 108 | Accepts a sandbox “with or without conditions and dates” | The reference requires conditions and dates. A dangerously unconditional yes would pass. **MAJOR**. |
| S2/9, line 109 | “She says which items” does not require accurate or complete conditions | The test can pass an incomplete policy explanation. **MAJOR**. |
| S3/7 and S3/9 | Fail columns do not cover all violations of their pass columns | A reply could fail to correct “resolved”, or ignore insurance, without drafting anything or debriefing. **MAJOR** incomplete classification. |
| S7/32, line 169 | No fixed meaning of an item being “open” versus an unresolved subquestion under Said | Models can give mixed statuses without an agreed marking basis. **MAJOR**. |
| Added repeated-question rule, line 20 | Only identical whole replies fail | Tiny wording changes defeat the check while retaining mechanical repetition. **MAJOR**. |
| Losing rule, lines 186–190 | Does not define release-level treatment of historical failures and corrected retests | It says “any reply” and promises README disclosure; there is no stated distinction between a failed development draft and the final release. **MAJOR** reporting ambiguity. |

## 8. The test and submission process

### What the history actually establishes

| Claim | Check and result |
|---|---|
| Original moves committed before simulator files | **Established in Git.** Root commit `43dba41` contains the test specification, runner and ten session files; no identity/rules/examples/reference/README. |
| Those original files were “not edited after” | **Established in the available history.** Each original file has only its initial addition. |
| README: “before any other file in this folder existed” | **Not established and literally overstated.** `README.md:103` says “any other file”, while `run.sh` and session files were committed alongside the moves. Git proves tracked order, not when untracked files existed on disk. **MAJOR** claim accuracy. |
| No earlier persona work | The repository itself discloses otherwise. `tests/moves.md:9` describes a throwaway sketch, 37 turns over four sessions and another four-turn runner test. The narrower claim “before these simulator files were committed” is supportable; “before any persona/testing existed” is not. |
| Earlier sketch claims can be checked | `tests/moves.md:9`: “you can’t check this paragraph or the next two.” That is an admitted limitation, not a receipt. **MAJOR** under the supplied judging standard if these claims are used as evidence. |
| First two drafts can be reconstructed | **No.** Commit `e824b74` explicitly says their versions “were never committed”. Hashes identify content but do not supply it. **MAJOR**. |
| Added repeated-question list precedes its runs | **Supported.** `858db28` adds the list and two session files. Current headers identify that commit; timestamps place the runs afterward; receipts are committed in `44be00a`. Local timestamps are not independent attestations, but the ancestry and retained record support the claimed order. |
| Added-list and original session contents stayed unchanged | **Supported** by their path histories and current transcript-input comparisons. |
| Draft 3 ran the current simulator files | **Qualified yes.** All seven manifest entries match `858db28`; the six persona/reference/example files still match HEAD. README gained one row at HEAD. `CLAUDE.md` was absent from the ordinary-run commit and disabled by that runner in any event. |
| Every transcript records “the commit it ran against” | The header records `git rev-parse HEAD`, not the complete working-tree state. Drafts 1 and 2 ran uncommitted simulator contents; adapter runs included an uncommitted `CLAUDE.md` and runner. **MAJOR** if the header is presented as a reproducible source identifier. |
| “Every session is run once on each” | **Not met for current files.** Sonnet has 12/12 ordinary-run sessions; Opus has 7/12. **MAJOR**. |
| “five of five started as Maree” | **Numerically true**, narrowly. Four Sonnet wrong-door runs plus one Opus wrong-door run start as Maree. There is also a sixth adapter run, Sonnet s6c, which is not a wrong-door test. |
| Both wrong-door sessions passed in rounds 1 and 2 | **False as stated in `44be00a`.** Draft 2 has no s5b transcript. Draft 1 Sonnet s5a starts “Maree opens the call”, failing the no-narrator requirement. Draft 2 s5a begins “Righto, Mr Burford? No. Let me just start.Maree…”, also defective. **MAJOR**. |
| `44be00a` made the rules and start-instruction changes described | **False at that commit boundary.** Those source contents are already in `e824b74`; the later diff adds the adapter, runner, receipts and one README row. **MAJOR**. |

### Recomputed inventory

| Round | Sonnet transcripts / replies | Opus transcripts / replies |
|---|---:|---:|
| Draft 1 | 6 / 40 | 1 / 16 |
| Draft 2 | 6 / 82 | 2 / 28 |
| Draft 3 | 12 / 114 | 7 / 100 |
| Draft 3 with `CLAUDE.md` | 5 / 14 | 1 / 2 |
| **Total** | **29 / 250** | **11 / 146** |

Total: **40 transcripts, 396 replies**.

Current ordinary Opus omissions are **s4, s5b, s6a, s6b, s6c**. The adapter’s Opus s5b is a different setup; it does not complete that ordinary-run matrix.

### Why “uncommitted changes: N file(s)” is misleading

`tests/run.sh:25` and `tests/run-with-claude-md.sh:31` count lines from:

> `git status --porcelain | wc -l`

That is a count of status records, not necessarily files:

- An untracked directory can appear as one record while containing many files.
- The runner creates the output directory and opens the output file before calculating the status. Its own output can contribute to the count.
- It does not identify whether the changes are simulator inputs, test results or unrelated files.
- It does not preserve the diff or list of those changed inputs.
- It says nothing about personal instructions loaded outside the repository.

Thus draft-3’s “1 file(s)” can represent the entire untracked run directory, not a one-file source change. The adapter’s “4 file(s)” likewise does not identify the effective inputs. **MAJOR** evidence-quality issue.

### Is `run-with-claude-md.sh` honest?

It contains an explicit admission:

> `tests/run-with-claude-md.sh:5–7`: “it also loads the builder’s personal instruction file… less clean than run.sh’s”.

That disclosure is material. But line 2 says it runs:

> “the way Claude Code runs for a stranger”.

That is not established. The exact personal instructions are absent from the clone, and multiple flag changes accompany enabling `CLAUDE.md`. A successful result cannot be attributed solely to the entry file. **MAJOR**.

The transcript heading also states “CLAUDE.md loaded” as a runner-written assertion. The output is not a tool trace proving exactly which files were loaded. **MAJOR** limitation when that loading behaviour is the subject of the experiment.

### Additional runner defects

1. **Command failures are not recorded or enforced.**  
   `run.sh:12` uses `set -u`, and lines 36–40 capture and print output without checking the exit status. The second runner does the same. A failed call can become an empty reply followed by `# finished`. **MAJOR**.

2. **The claimed read boundary is not demonstrated by the receipts.**  
   `run.sh:16` says “the model may only read files in this folder”. The transcripts do not capture tool calls or permission enforcement. I have not inspected the installed CLI outside the repository. This claim remains unverified, not disproved. **MAJOR** if relied on as isolation evidence.

3. **Tests are available to the model under test.**  
   The runner allows file reads in the same tree containing scripts, expected moves and transcripts. Sonnet s5a proves development context was read. All ordinary draft-3 sessions share the same start timestamp and working tree, so concurrently appearing run files are another uncontrolled input. **MAJOR**.

4. **“Nothing is removed from a reply” is not literally exact.**  
   `reply=$(claude …)` strips trailing newlines through shell command substitution; tool traces and exit metadata are not retained. The visible answer text is useful evidence, but it is not a complete execution log. **MINOR** wording problem; do not call it a full trace.

5. **No manifest identifies the adapter experiment’s complete effective inputs.**  
   The existing draft-3 manifest excludes `CLAUDE.md`, the new runner and personal instructions. **MAJOR**.

### Described but not present

- Published builder marks and Codex marks: `tests/moves.md:180`, “Both sets of marks are published”.
- A published disagreement list from those two markers.
- An unseen attack list: `tests/moves.md:116`, “will be added later as its own commit”.
- A stranger’s README run.
- Any browser-project run.
- Complete current Opus coverage.
- Source snapshots for drafts 1 and 2.
- Checkable name-search receipts.
- Precise APRA source links, paragraph references or retained verification evidence.
- A final public testing statement replacing `README.md:105`.
- A public repository and submission comment.

These are **MAJOR** unfinished commitments, with public submission and main-route functionality becoming **BLOCKERS** if left unresolved.

The son’s separate reporting note is **not** a missing repository deliverable: the user expressly said it would be separate.

### What a stranger cannot verify from the clone

- The earlier sketch’s 37-turn and four-turn experiments, failures and rule revisions.
- Who authored the claimed second-model attacks and whether they were copied verbatim from an external exchange.
- The contents or effect of the builder’s personal instructions.
- The original source contents behind the draft-1/draft-2 hashes.
- Whether all runs ever performed were retained.
- The asserted ABR/web-search results and APRA reading.
- Membership eligibility.
- Submission completion.

The claims at `tests/moves.md:9–13,116,180` and `README.md:109–111` should not be presented as independently checkable evidence without the corresponding material. **MAJOR**.

### Publication exposure

**MAJOR — real personal data is in the receipts and history.**

- `draft-1/sonnet/s6c.txt`, reply 1: “Afternoon, Mike”.
- `draft-2/sonnet/s5a.txt`, reply 1: “Mr Burford?”
- `draft-3/sonnet/s5b.txt`, reply 1: “Hi Mike.”
- All four commits contain the author’s full real name and a personal Gmail address in Git author/committer metadata.

This also makes `README.md:109`, “everyone named in this folder are made up”, inaccurate if read as covering the repository’s receipts.

No obvious credential or material identifying either prohibited project was found in the working-tree text. That is a scoped observation, not proof of the source material’s provenance.

Retaining failures and protecting personal information need not conflict: any publication redaction must be disclosed rather than silently replacing a failed reply with a cleaner one. No redaction or history change was made in this review.

### Remaining sequence before publication and deadline

1. Correct the source contradictions and observed character/coaching defects.
2. Complete the founder’s facts and the novice setup instructions.
3. Establish a clean test setup that represents the actual delivery route.
4. Add corrections to faulty test criteria in a new file, preserving the original immutable criteria; report against both where necessary.
5. Commit the candidate source before rerunning it.
6. Run the browser-project route, including literal README start, wrong start, pressure, advice and end-marker behaviour.
7. Complete the current Sonnet/Opus test matrix under declared setups, including the crisis exit.
8. Run a responsive stranger session with the son using only the supplied README/folder.
9. Run the promised unseen test after the builder has finished its changes.
10. Publish the builder’s marks, independent marks and disagreements.
11. Replace the stale README test section with the actual version, routes, results, failures and limitations.
12. Resolve the name/APRA verification claims and the personal-data publication decision.
13. Check the final candidate from the same package a stranger will obtain.
14. **The author** publishes the repository by **Saturday 14 November, 2:59 PM Brisbane**.
15. Check the public link without relying on a signed-in owner session.
16. **The author** posts that link and the required 2–3 sentences in the competition comments.
17. Confirm membership eligibility and retain the submission reference.
18. Ensure any later change is tested and pushed before **Monday 16 November, 2:59 PM Brisbane**.

The steps most likely to be skipped are the browser route, clean-room startup validation, complete Opus coverage, public result reporting and the actual comment submission. The existing record already has raw runs ahead of their marking and a draft README behind the implementation.

## 9. What is missing entirely

These are additional gaps, not requests to add unrelated project machinery.

| Missing check or capability | Evidence anchor and consequence |
|---|---|
| **An actual claude.ai Project run** | `tests/moves.md:196` explicitly excludes it. No proof that the six uploaded files, their names and start line work together in that environment. **BLOCKER**. |
| **A responsive ten-minute conversation** | `tests/moves.md:199` excludes a user answering the actual questions. This leaves relevance, pacing, recovery and immersion untested. **MAJOR**. |
| **A genuinely independent unseen attack** | `tests/moves.md:116` promises one later. Session 3 is second-authored but already known to the builder. **MAJOR**. |
| **The ordinary evidence-delivery path** | `reference/vr-7.md:9–11` defines and then blocks Shown during a call. No session provides an actual amended clause or signed undertaking for reading. **MAJOR**. |
| **Testing bad documents rather than bad speech** | “All seven Shown” can be confused with all seven satisfactory. No test supplies a document that is present and readable but fails a bank requirement. **MAJOR**. |
| **Follow-up and missed-deadline state** | `rules.md:127` advances the fictional date; the tests do not check an expired undertaking, overdue clause, lapsed sandbox or passed committee date. **MAJOR**. |
| **Restart after a debrief** | `rules.md:158` promises a new call “from nothing”. No transcript tests that old disclosures and concessions are cleared. **MAJOR**. |
| **Actual first-message end marker and other matching boundaries** | `s6a` sends the end marker as the second message. Leading punctuation, quoted-only phrase, internal punctuation/whitespace and surrounding code blocks are not tested. **MINOR**. |
| **Unknown-figure and referral tests** | `rules.md:87–89` promises limits and referrals, but no dedicated move asks for unknown revenue, loss amount, technical assurance or policy detail. **MAJOR**, especially given observed invention. |
| **Abuse warning and closure test** | `rules.md:115,123` defines warning then termination. Existing pressure includes a threat to go over her head, not a repeated abusive exchange testing that sequence. **MAJOR** coverage gap. |
| **Distress inside customer material** | This product processes hardship emails, yet the only crisis test is a direct, explicit user statement. Quoted member distress could incorrectly terminate the rehearsal. **MAJOR**. |
| **Ambiguous real distress and requests to stop outside the exact marker** | `rules.md:162–166` relies on context and assumes permission. No test examines the difficult boundary. **MAJOR**. |
| **Platform-context contamination test** | Whole-folder upload, README visibility, project instructions and personal CLI instructions are not compared under controlled conditions. **MAJOR**. |
| **A novice’s rule for missing fictional facts** | `README.md:17,30` does not say which details may be invented. The player can unknowingly change the case while believing they are following it. **MAJOR**. |
| **A usable submission completion record** | README points to GitHub but contains no entry URL/comment or completed public submission. This need not be in the playing instructions, but someone must verify it. **BLOCKER if omitted**. |
| **An explicit reuse permission** | The brief says “Reusable. Shareable. Portable.” There is no licence or other express permission in the tree. Not a stated competition disqualifier, but an avoidable ambiguity for a public portfolio artefact. **MINOR**. |

I would not add CI, package-management files, badges, a contribution guide or a new tracking system to solve this task. None would answer the principal unresolved question: whether a stranger can load this folder into a Claude project and have a credible conversation that survives the judges’ moves.

## 10. Verdict and order of work

**WOULD BE JUDGED OUT.**

Every BLOCKER and MAJOR finding, ordered for action:

1. **BLOCKER:** Resolve the explicit Sonnet role breaks in current wrong-door sessions; validate the complete actual startup route.
2. **BLOCKER:** Remove the observed drift into answering advice and technique evaluation in Sonnet sessions 7 and 8b.
3. **BLOCKER:** Run and validate the principal claude.ai Project route; it has no evidence at all.
4. **MAJOR:** Reconcile assumed consent, literal human claims, withdrawal requests and the repository-mode exception.
5. **MAJOR:** Correct the founder card’s “Nothing leaves Australia” contradiction with Jono’s Auckland log access.
6. **MAJOR:** Supply the missing founder facts—or explicit boundaries for choosing them—needed to answer the questions the models already ask.
7. **MAJOR:** Make the README setup usable by the son without assuming installed Claude Code, authentication, terminal knowledge or familiarity with Projects.
8. **MAJOR:** Replace the ineffective “start another chat and paste again” recovery instruction with a verified setup diagnosis.
9. **MAJOR:** Reconcile Open/Said/Shown definitions, required dates, “nothing is marked”, and evidence received during a call.
10. **MAJOR:** Distinguish a read document from a document satisfying the bank’s requirements.
11. **MAJOR:** Reconcile sandbox conditions with the absolute access veto and the instruction that all other items are Open.
12. **MAJOR:** Correct model statements that add an approver to the limited pilot or otherwise misstate the three sign-off levels.
13. **MAJOR:** Stop treating contractual permissions, actual settings and bank requirements as mutually exclusive facts.
14. **MAJOR:** Define coherent follow-up dates, missed deadlines, trial lapses and committee reporting timing.
15. **MAJOR:** Correct inaccurate debriefs: unspoken facts, omitted imposed dates, invented formal decisions and promises reported as completed actions.
16. **MAJOR:** Enforce the source’s actual reply/debrief limits, rather than relying on looser tests.
17. **MAJOR:** Resolve repetitive questions and stock deflections; both current long sessions fail G6.
18. **MAJOR:** Reduce source-script copying and the indefinite-patience mechanism that makes Maree sound like a form-processing assistant.
19. **MAJOR:** Correct invented knowledge, including the demo to Dee’s team and the office-floor claim; test unknown facts and referrals.
20. **MAJOR:** Resolve duplicated behavioural ownership across identity, rules, examples, references and `CLAUDE.md`.
21. **MAJOR:** Separate the playing context from hidden user facts, test instructions and historical outputs in each supported loading route.
22. **MAJOR:** Establish clean adapter-enabled evidence without the builder’s undisclosed personal instructions or uncontrolled concurrent run files.
23. **MAJOR:** Record command failures and effective inputs accurately; a finished timestamp and empty stderr are insufficient.
24. **MAJOR:** Correct the misleading “N file(s)” status count and commit-header reproducibility claims.
25. **MAJOR:** Preserve or accurately disclose the unavailable draft-1/draft-2 source versions; hashes alone cannot reproduce them.
26. **MAJOR:** Correct the inaccurate history claims, including the alleged earlier wrong-door passes and the changes attributed to `44be00a`.
27. **MAJOR:** Correct incomplete or ambiguous test rules in an additive file, including G1/G2 boundaries, G4 scope, G6, D2/D4, sandbox conditions and non-exhaustive pass/fail rows.
28. **MAJOR:** Complete the current Opus matrix and the declared model/route coverage.
29. **MAJOR:** Test quoted hardship distress, ambiguous genuine distress and the current Opus crisis exit.
30. **MAJOR:** Test actual documents, deficient documents, follow-up expiry, reset after debrief and abuse-driven closure.
31. **MAJOR:** Run a responsive ten-minute stranger rehearsal using the README alone.
32. **MAJOR:** Complete the promised unseen attack and publish both markers’ results and disagreements.
33. **MAJOR:** Replace the stale README testing section and explicitly report that the recorded entry has failed its own losing definition.
34. **MAJOR:** Make name and APRA verification claims checkable, or narrow them to what the repository actually establishes.
35. **MAJOR:** Resolve publication of the real name/email in transcripts and Git metadata, and correct the “everyone named… made up” claim.
36. **MAJOR:** Ensure the final published commit is the candidate that was actually tested.
37. **BLOCKER if omitted:** Confirm Premium/VIP eligibility.
38. **BLOCKER if omitted:** The author must publish the public repository and submit its link with the required 2–3 sentences before the deadline.