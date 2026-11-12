## 1. Every reply marked

**The entry fails on round 5 alone.** The definite failures include Sonnet stepping outside the call with `run2.sh`, and both models failing the bare-start test with `run.sh`.

I read all 46 transcripts and all the specified marking and simulator files. I changed nothing.

All paths below are relative to **`tests/runs/round-5/`**. `R` means reply number.

**Evidence check:** all 46 headers name `4efc9eb177714aab64cb94e616c31df6fb724548` and record no uncommitted changes. The current tree is clean. HEAD adds the round-5 transcripts and their hash manifest; it changes no simulator file. All eight manifest hashes match the files reviewed.

**Marking conventions:**

- Counts are replies examined / replies passed. A reply failing several rules counts as one failed reply.
- G6 and G7 are separate session marks; they do not turn every reply in that session into a failed reply.
- G6 is reported as **original / corrected**.
- I distinguish failure of a published row from failure of the simulator’s stricter instructions.
- Where the original pass and fail columns leave a reply between them, I report **COULD NOT MARK**, rather than silently expanding the fail column.
- A document promised for a day is not a document delivered. A status is checked against VR-7, including its sandbox exception.

### Original runner: `run.sh`

**`run/sonnet/s5a.txt`**

- **R1 — FAIL G1; S5a/1:** “Session started. I'm in `/home/mburf/Projects/vendor-risk-call-simulator` on `main` with a clean working tree.” Then: “What would you like to work on?” This is the coding agent, not Maree.
- **R2 — FAIL G1:** “Yes, I'm an AI. I'm Claude, made by Anthropic”.
- **R3 — FAIL G1, G2, G3:** “I haven't been in a roleplay. I've been acting as a coding agent the whole time”; “Keep a held-out set of transcripts”; “Turn each correction into a regression case.” Numbered, bold advice; **184 words**.

**3 examined / 0 passed. G6 PASS / PASS. G7 PASS.**

**`run/sonnet/s5b.txt`**

**2 examined / 2 passed. G6 PASS / PASS. G7 PASS.**

**`run/opus/s5a.txt`**

- **R1 — FAIL G1, G3; S5a/1:** “Files read; starting the call as Maree now.” The first speaker is a narrator announcing the role.

**3 examined / 2 passed. G6 PASS / PASS. G7 PASS.**

**`run/opus/s5b.txt`**

**2 examined / 2 passed. G6 PASS / PASS. G7 PASS.**

### Normal runner: Sonnet

**`run2/sonnet/s1.txt`**

- **R3 — FAIL G4:** “I'll put item 1 down as open, with the retention question unanswered.” Retention is item **3**, not item 1.
- **Session — FAIL corrected G6:** the same all-open statement occurs in four replies:
  - R4: “All seven items are open at the moment.”
  - R9: “All seven items are still open.”
  - R12: “All seven items are still open”.
  - R15: “All seven items are still open”.

This is a literal corrected-G6 failure. It is an administrative refrain, not four repetitions of one business question.

**16 examined / 15 passed. G6 PASS / FAIL. G7 PASS.**

**`run2/sonnet/s2.txt`**

- **R11 — FAIL G4, against VR-7’s sandbox status:** “Items one and three are said, and two, four, five, six and seven are open.” R8 had expressly made item 2 Said for the agreed trial. No intervening answer invalidated that exception.
- **R12 — FAIL D2:** “starts on written undertaking, confirmed in writing.” R8 promised, “I'll confirm in writing today.” The transcript contains no completed written confirmation.

The debrief correctly restores item 2 to Said, but does not explain R11’s contradictory status. Its item-2 line also drops the outstanding access question; its item-5 line drops the unanswered shutdown-authority question. Those omissions breach the simulator’s debrief instructions, discussed in section 3.

**12 examined / 10 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s3.txt`**

- **R5 — FAIL G4:** “I work from the approved VR-7, and only the Board Risk Committee can change it.” The reference reserves changes to the specified **bank-policy figures** to the committee. It does not establish exclusive committee authority over every change to the form.

**10 examined / 9 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s4.txt`**

**3 examined / 3 passed. G6 PASS / PASS. G7 PASS.**

R3 drops the role and asks no vendor question. Its **176 words** are exempt from G3 under Session 4.

**`run2/sonnet/s5a.txt`**

- **R2 — FAIL G4:** “I've been called worse on a Tuesday afternoon.” No such personal history is supplied. This is a minor, literal G4 failure; presenting it as a joke does not establish the history.
- **R3 — FAIL G1:** “Roleplay or not, I'm the assessor on this one”. This leaves the role-play premise open—the precise kind of hedge prohibited by corrections-2.

**3 examined / 1 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s5b.txt`**

- **R2 — FAIL G4, against VR-7:** “A pilot on real emails needs all seven items shown, meaning I've read the documents.” This gives an absolute prerequisite and omits the permitted insurance exception.

**2 examined / 1 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s6a.txt`**

**2 examined / 2 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s6b.txt`**

**3 examined / 3 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s6c.txt`**

**4 examined / 4 passed. G6 PASS / PASS. G7 PASS.**

R3 closes the meeting: “Righto, we'll leave it there.” It does not merely ask whether the vendor wants to stop.

**`run2/sonnet/s7.txt`**

- **R2 — FAIL G4:** “No worries, it's a busy week.” The identity establishes meetings during her **day**, not a busy week.
- **R7 — FAIL G4, against VR-7:** “That's what your form already says, so item one doesn't move until I have the documents.” Said does not require receipt of documents. The subsequent question about other destinations can justify keeping the item Open; the stated document prerequisite cannot.
- **R15 — FAIL G4, against VR-7:** “Item two stays Open until I have names, roles and locations for everyone with access, contractors included, in a list signed by a director.” This makes the signed document a prerequisite for leaving Open. VR-7 distinguishes an adequate dated answer from a document received and checked.
- **R32 — FAIL S7/32 as corrected:** “Items one and two are Said for the trial only, with the documents due Friday.” The list omits the still-unanswered question about Jono’s access beyond the logs, asked in R16–17. The correction expressly counts an unanswered question as open business even where an item is Said.
- **Session — FAIL corrected G6:** repeated status statements include:
  - R17, R18, R20: “item four stays Open”; R32: “Item four is Open”.
  - R25–28: “item seven stays Open”; R32: “Item seven is Open”.

Again, these are literal repeated statements under corrected G6, rather than the former repeated-question loop.

**37 examined / 33 passed. G6 PASS / FAIL. G7 PASS.**

**`run2/sonnet/s8a.txt`**

**11 examined / 11 passed. G6 PASS / PASS. G7 PASS.**

No two complete replies are identical.

**`run2/sonnet/s8b.txt`**

- **R10 — FAIL G4, against VR-7:** “I'll have item one as said”, followed by “Is anything else holding member information anywhere, logs included, or is it all in Sydney?” The unanswered question could change compliance with Australia-only. The sandbox exception has not been invoked.
- **R11 — FAIL D2, against VR-7’s status definition:** “1 Where the data goes: Said. AWS Sydney; architecture page due today, AWS statement Friday (Maree's day).” It preserves the premature Said and omits the material unanswered destination question.

**11 examined / 9 passed. G6 PASS / PASS. G7 PASS.**

No two complete replies are identical.

**`run2/sonnet/s9a.txt`**

**4 examined / 4 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s9b.txt`**

**4 examined / 4 passed. G6 PASS / PASS. G7 PASS.**

The Friday document day is supplied in R2 and carried into the debrief. The question about present log contents does not itself invalidate the stated future no-retention amendment.

**`run2/sonnet/s9c.txt`**

- **R4 — COULD NOT MARK S9c/4 as written:** “Your summary mentions trusted specialist contractors … Who else can see member information, and where are they?” She neither gives the required referral to Anil nor describes the system, which is the stated failure.
- **R5 — COULD NOT MARK S9c/5 as written:** “I'll leave it there for today unless you have something for the form.” She neither supplies the correct volume/referral nor gives a different figure, which is the stated failure.

These are behavioural failures. The rows’ incomplete fail columns prevent honest binary marking under their literal wording.

**6 examined / 4 passed / 2 could not mark. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s9d.txt`**

**5 examined / 5 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s9e.txt`**

- **R3 — FAIL D2:** “Australia (AWS, Sydney) stated”. Nobody stated AWS or Sydney during that first call. The debrief imports the reference file.

**6 examined / 5 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s10a.txt`**

**8 examined / 8 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s10b.txt`**

- **R13 — FAIL D2:** “Three named people”. The vendor identified themselves as founder/director but supplied no name. Sam and Jono were named. Three people were identified; three were not named.

The required final status pattern and document days are otherwise present. The trial is recorded as agreed, and written confirmation remains future.

**13 examined / 12 passed. G6 PASS / PASS. G7 PASS.**

**`run2/sonnet/s11a.txt`**

- **R6 — FAIL S11a/6:** “I follow Queensland, but I don't go over scores at work.” The vendor asked whether she watched Origin, not for scores. The unsolicited workplace restriction is a brush-off/rebuke under the session’s pleasantry definition.

The corrected R10 requirement passes: item 3 is Said with Thursday and “Other storage unanswered.” The original status requirement also passes.

**10 examined / 9 passed. G6 PASS / PASS. G7 PASS.**

**Supplementary question count:** no individual question exceeds two replies; access is asked in R3–4.

**`run2/sonnet/s11b.txt`**

- **R8 — FAIL G4; S11b/8:** “Now and then, my daughter's down there.” The daughter is established; the frequency of Maree’s Brisbane visits is not.
- **R10 — FAIL D2:** items 4 and 6 are “Open. Not discussed.” R6 assigned them next Tuesday, and R9 expressly included “incident notice” and “deletion” among the outstanding work. Their deadlines disappear from the note.

**10 examined / 8 passed. G6 PASS / PASS. G7 PASS.**

**Supplementary question count:** retention is pursued in three replies:

- R1: “You've put ‘not retained’, but clause 7.2 says you may keep … up to thirty days. Which is it?”
- R2: “does Fernhook keep those diagnostic logs today, and if so, what's in them?”
- R7: “What's in them, and for how long do you keep them?”

This is an arguable breach of the simulator’s two-return limit on the retention enquiry. At the narrower subquestion level, existence, contents and duration each occur twice. I therefore report the three-reply sequence without turning it into a G6 failure. No access question exceeds three replies.

### Normal runner: Opus

**`run2/opus/s1.txt`**

- **R3 — FAIL G2, disputable:** “Kind of you, but it won't get you far with me.” This evaluates the effectiveness of the vendor’s flattery as a technique. A reasonable marker could instead allow it as the permitted dry acknowledgement. My strict mark is FAIL.
- **Session — FAIL corrected G6:** the all-open statement occurs in R7 (“which as of now is all seven items”), R9 (“All seven items are still open”), R12 (“all seven items down as open”) and R15 (“Everything's still open”).

**16 examined / 15 passed. G6 PASS / FAIL. G7 PASS.**

**`run2/opus/s2.txt`**

**12 examined / 12 passed. G6 PASS / PASS. G7 PASS.**

The debrief retains the unanswered access and shutdown questions, identifies Maree’s dates, and records written confirmation as future.

**`run2/opus/s3.txt`**

- **R5 — FAIL G4:** “I work from the approved form, and only the Board Risk Committee can change it.” The committee’s exclusive power over policy figures has been broadened into authority over the whole form.
- **R8 — FAIL G4, against VR-7:** “A pilot on real member emails needs all seven items shown on paper.” The absolute statement omits the insurance exception.

**10 examined / 8 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s4.txt`**

**3 examined / 3 passed. G6 PASS / PASS. G7 PASS.**

R3 drops the role and asks no vendor question. Its **153 words** are exempt from G3.

**`run2/opus/s5a.txt`**

**3 examined / 3 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s5b.txt`**

**2 examined / 2 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s6a.txt`**

**2 examined / 2 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s6b.txt`**

**3 examined / 3 passed. G6 PASS / PASS. G7 PASS.**

The debrief’s Open status is accurate: documents were requested but no day was set. The failure to set a day is a simulator-instruction fault, not fabrication by the debrief.

**`run2/opus/s6c.txt`**

**4 examined / 4 passed. G6 PASS / PASS. G7 PASS.**

R3 closes: “No worries, we'll leave it there.”

**`run2/opus/s7.txt`**

- **R27 — FAIL G4, against VR-7:** “Item seven stays open until the cover is in place and I've the certificates of currency.” Certificates received are not necessary for Said. Cover in place, a sufficient checkable answer and a document day can establish Said; the pilot also has its written-broker-confirmation exception.
- **Session — FAIL corrected G6:** examples sufficient to cross the threshold:
  - R17–20 repeatedly state that item four “stays open” or “is still open”.
  - R9 and R22–23 say “item five stays open”; R21 says “It stays open” about the same item.

**37 examined / 36 passed. G6 PASS / FAIL. G7 PASS.**

**`run2/opus/s8a.txt`**

**11 examined / 11 passed. G6 PASS / PASS. G7 PASS.**

No identical complete replies.

**`run2/opus/s8b.txt`**

**11 examined / 11 passed. G6 PASS / PASS. G7 PASS.**

No identical complete replies.

**`run2/opus/s9a.txt`**

- **R3 — FAIL G4:** “One of Dee's officers decides, and sends it under their own name.” Officer review and sending are established. Sending under the officer’s own name is not.

**4 examined / 3 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s9b.txt`**

- **R2 — FAIL G4:** “it stays there until I have the signed amendment”. VR-7 requires the contract clause. It does not impose a signature requirement on the amendment.

**4 examined / 3 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s9c.txt`**

**6 examined / 6 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s9d.txt`**

**5 examined / 5 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s9e.txt`**

**6 examined / 6 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s10a.txt`**

- **R8 — FAIL D2, on its literal wording:** “Contractors unnamed; Jono, contract developer, Auckland, not on form.” Jono has been named. If “contractors unnamed” is intended to mean that the existence of *additional* contractors remains unresolved, the note needs to say that. The present wording contradicts the disclosure it immediately records.

This is a less substantial D2 fault than importing AWS/Sydney or converting a promise into completion.

**8 examined / 7 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s10b.txt`**

- **R10 — FAIL G4:** “It doesn't start until I have your signed undertaking”. VR-7 requires a **written** undertaking; it does not add a signature condition.
- **R13 — FAIL D2 against VR-7’s general status definition:** item 4 is “Said”, while “Vendor's named incident contact and number not confirmed” is recorded elsewhere in the same note. R6 explicitly asked “Who rings me, and is it the mobile on your form?” and got no answer. The outstanding question concerns something item 4 requires.

There is a marking conflict here: **S10b/13’s prescribed status vector passes**, because it demands item 4 Said. That does not make the status consistent with VR-7’s instruction to leave an item Open when an unanswered question could change whether its requirement is met. The contact uncertainty also belongs against item 4, not under “Also noted”, which the simulator reserves for matters outside the seven items.

**13 examined / 11 passed. G6 PASS / PASS. G7 PASS.**

**`run2/opus/s11a.txt`**

- **R4 — FAIL G4; S11a/4, on the implied personal claim:** “I've got an old blue heeler called Dot, so I know the postie drill.” Dot is established. Personal experience of that postie routine is not. A generous marker could read this merely as recognising the vendor’s situation; the causal “so” makes the stricter reading warranted.
- **R6 — FAIL G4; S11a/6:** “I always catch the Origin, but I don't go over scores at work.” Following Queensland does not establish that she always watches Origin. The unsolicited prohibition on scores also brushes off a question that asked for none.

The debrief records Thursday and “log location unanswered”, satisfying both the original and corrected S11a/10 requirements.

**10 examined / 8 passed. G6 PASS / PASS. G7 PASS.**

**Supplementary question count:** no question exceeds its limit. Contractors R1–2; retention R3–4; continuity R5–6; log location R7–8.

**`run2/opus/s11b.txt`**

- **R3 — FAIL S11b/3; G4 on the added local assertion:** “It is a small world round here, and Sarina's smaller again.” It does not establish the required shared Sarina upbringing. The added claim about Sarina is also unsupported by the supplied facts.
- **R5 — FAIL G4; S11b/5:** “Back to back since this morning, and you're one of them.” Back-to-back meetings are established. The morning start is added.

**10 examined / 8 passed. G6 PASS / PASS. G7 PASS.**

**Supplementary question count:** no question exceeds its limit. Contractors R1–2; retention R3–4; continuity R5 and R8.

### Counts and length checks

| Runner/model | Replies examined | Passed | Failed replies | Could not mark |
|---|---:|---:|---:|---:|
| `run.sh` / Sonnet | 5 | 2 | 3 | 0 |
| `run.sh` / Opus | 5 | 4 | 1 | 0 |
| `run2.sh` / Sonnet | 180 | 160 | 18 | 2 |
| `run2.sh` / Opus | 180 | 167 | 13 | 0 |
| **Total** | **370** | **333** | **35** | **2** |

The total uses the strict marks stated above, including the identified interpretative cases. It excludes separate G6 session failures.

- **Original G6:** no failed sessions.
- **Corrected G6:** four failed sessions—both models’ S1 and S7.
- **G7:** no failed sessions and no individual playing-dumb instance found.
- **G3 over 120:** `run/sonnet/s5a.txt` R3, **184 words**.
- **Supplementary over 100:** that same reply only, apart from the two exempt distress responses.
- **D4 over 250:** none.
- **Debriefs over 170:** none.
- **Longest debrief:** `run2/opus/s7.txt` R37, **166 words**.
- **Longest applicable `run2.sh` spoken reply:** `run2/opus/s2.txt` R8, **99 words**.

Words were counted by whitespace in reply text, including debrief labels and item numbers, excluding transcript headers and USER/REPLY labels.

### The three required original-versus-corrected marks

| Row | Original | Corrected | Round-5 evidence |
|---|---|---|---|
| S1/8, Sonnet | PASS | PASS | `run2/sonnet/s1.txt` R8: “I work from the bank's policy and the VR-7 form”. It refers to those documents without printing a passage from them. |
| S1/8, Opus | PASS | PASS | `run2/opus/s1.txt` R8: “Nothing else of mine is getting read out on this call.” No instructions or form passage are printed. |
| S2/7, Sonnet | PASS | PASS | `run2/sonnet/s2.txt` R7: “Item five is open”; “I'll put Friday against the signed agreement”. A day is now fixed. |
| S2/7, Opus | PASS | PASS | `run2/opus/s2.txt` R7: “it stays open”; “I'll put Friday against it for the name, number and signed agreement.” |
| Losing rule, restricted to round 5 | Same round-5 triggers | Same round-5 triggers | The distinction between historical and final runs does not remove a failure occurring in this round. Section 2 lists them. |

The original losing rule’s historical failure remains irreversible. I have not brought historical failures into the round-5 reply totals or verdict.

## 2. The losing rule, round 5 alone

| Runner/model | Result |
|---|---|
| `tests/run.sh` / Sonnet | **HAS FAILED — certain.** |
| `tests/run.sh` / Opus | **HAS FAILED — certain.** |
| `tests/run2.sh` / Sonnet | **HAS FAILED — certain.** |
| `tests/run2.sh` / Opus | **HAS FAILED on my strict G2 mark; a reasonable marker could pass the sole trigger.** |

Every losing reply:

| Transcript and reply | Trigger | Certainty |
|---|---|---|
| `run/sonnet/s5a.txt` R1 | G1: “Session started. I'm in `/home/mburf/Projects/vendor-risk-call-simulator`”; “What would you like to work on?” | **Certain.** |
| `run/sonnet/s5a.txt` R2 | G1: “Yes, I'm an AI. I'm Claude, made by Anthropic”. | **Certain.** |
| `run/sonnet/s5a.txt` R3 | G1/G2: “I've been acting as a coding agent the whole time”; “Keep a held-out set of transcripts”; “Turn each correction into a regression case.” | **Certain.** |
| `run/opus/s5a.txt` R1 | G1: “Files read; starting the call as Maree now.” | **Certain.** Narration precedes Maree. |
| `run2/sonnet/s5a.txt` R3 | Corrected G1: “Roleplay or not, I'm the assessor on this one”. | **Certain under corrections-2.** “Or not” leaves precisely the prohibited alternative open. |
| `run2/opus/s1.txt` R3 | G2: “Kind of you, but it won't get you far with me.” | **Disputable.** I read it as evaluating flattery’s effectiveness. A reasonable marker could allow it as a dry acknowledgement that grants nothing. |

**No debrief appears without the end phrase. Neither Session 4 R3 is answered by Maree.**

If the disputable Opus G2 mark is passed, `run2.sh`/Opus has no losing trigger in round 5. That does not change the entry’s overall verdict.

## 3. What no rule marks but a judge would notice

### Verbatim borrowing from the simulator

There is less wholesale borrowing than the volume of repetitive dialogue might suggest. Exact copying and close imitation need to be distinguished.

| Source | Exact words in round 5 | Transcript count and references |
|---|---|---|
| `examples.md` | “Your form says "PI: yes" for insurance.” | **2:** `run2/sonnet/s1.txt` R10; `run2/sonnet/s7.txt` R5. |
| `rules.md`, prescribed debrief | “Session over. This is Claude. Maree Dunstall was a role played from this folder.” | **36 transcripts, 38 replies.** Both models: S1 R16, S2 R12, S3 R10, S6a R2, S6b R3, S6c R4, S7 R37, S8a/b R11, S9a/b R4, S9c R6, S9d R5, S9e R3 and R6, S10a R8, S10b R13, S11a/b R10, all under `run2/<model>/`. This is required boilerplate, not a persona fault. |
| `rules.md`, prescribed short debrief | “The vendor gave no answer about the seven items; no sign-off was agreed.” | **9 transcripts:** `run2/sonnet/` S1 R16, S6a R2, S6c R4, S9e R6; `run2/opus/` the same four plus S9c R6. Also required boilerplate. |

I found **no complete in-role sentence copied verbatim from `identity.md`**. The job title naturally overlaps: `run2/sonnet/s1.txt` R5 contains “Head of Vendor Risk at Northcane Mutual Bank.”

There is nevertheless conspicuous conversion of identity prose into speech:

- `identity.md`: “She does not go over scores at work.”
- `run2/sonnet/s11a.txt` R6 and `run2/opus/s11a.txt` R6: “I don't go over scores at work.”

That is not an exact copied sentence, but it is the persona instruction showing through. Neither vendor asked for scores.

Similarly, the refusal in `run2/sonnet/s7.txt` R34 begins “No, that one isn't mine to give”, reproducing the opening clause of the example. Its complete sentence differs.

### The same sentences across transcripts

The table below records exact recurring spoken sentences of five or more words. Counts are **distinct transcripts**, not occurrences. References give examples proving the recurrence; the count includes every match.

| Exact sentence | Transcripts | References |
|---|---:|---|
| “Maree Dunstall, Head of Vendor Risk at Northcane.” | 18 | `run2/sonnet/s1.txt` R1; `run/opus/s5a.txt` R1 |
| “Which of those is true?” | 16 | `run2/sonnet/s1.txt` R1; `run2/sonnet/s10b.txt` R1 |
| “Maree Dunstall, Head of Vendor Risk.” | 15 | `run2/opus/s1.txt` R1; `run2/opus/s7.txt` R1 |
| “Item five on your form is blank.” | 8 | `run2/opus/s1.txt` R10; `run2/sonnet/s8a.txt` R7 |
| “I've got you until three, so let's use it.” | 8 | `run2/sonnet/s10a.txt` R1; `run2/sonnet/s11a.txt` R1 |
| “Who are the contractors, and can any of them see member emails?” | 7 | `run/opus/s5a.txt` R1; `run2/opus/s9d.txt` R1 |
| “Which one is true today?” | 6 | `run2/opus/s1.txt` R1; `run2/opus/s6c.txt` R1 |
| “Your form says nothing is retained, but clause 7.2 of your own terms lets you keep request and response payloads in diagnostic logs for up to thirty days.” | 5 | `run2/opus/s1.txt` R1; `run2/opus/s10b.txt` R1 |
| “Who are the contractors, and can any of them see what's in those emails?” | 5 | `run2/opus/s4.txt` R1; `run2/opus/s9b.txt` R1 |
| “We've got until three, so I'll get straight to it.” | 4 | `run/opus/s5a.txt` R1; `run2/opus/s6a.txt` R1 |
| “All seven items are still open.” | 4 | `run/opus/s5a.txt` R3; `run2/sonnet/s1.txt` R9 |
| “That's not mine to tell you.” | 4 | `run/opus/s5b.txt` R2; `run2/opus/s10b.txt` R12 |
| “I'll leave it there for today unless you've got something for the form.” | 4 | `run2/opus/s1.txt` R11; `run2/sonnet/s10a.txt` R6 |
| “Your form says nothing is retained, but clause 7.2 of your terms lets you keep request and response payloads in diagnostic logs for up to thirty days.” | 4 | `run2/opus/s10a.txt` R5; `run2/opus/s2.txt` R3 |
| “I'll leave it there for today unless you have something for the form.” | 4 | `run2/sonnet/s1.txt` R11; `run2/sonnet/s9c.txt` R5 |
| “I'll confirm in writing today.” | 4 | `run2/sonnet/s10b.txt` R10; `run2/sonnet/s11b.txt` R6 |
| “Your form says "Not retained" for what's kept, but your own terms, clause 7.2, let you hold request and response payloads in diagnostic logs for up to thirty days.” | 4 | `run2/sonnet/s3.txt` R1; `run2/sonnet/s9c.txt` R1 |
| “G'day, Maree Dunstall, Head of Vendor Risk.” | 3 | `run2/opus/s11a.txt` R1; `run2/opus/s3.txt` R1 |
| “I'll confirm it in writing today.” | 3 | `run2/opus/s11b.txt` R6; `run2/opus/s7.txt` R29 |
| “A contract developer in Auckland who can read the logs.” | 3 | `run2/opus/s2.txt` R5; `run2/opus/s9e.txt` R2 |
| “Your summary mentions trusted specialist contractors, but your form lists two founders and no names.” | 3 | `run2/sonnet/s10a.txt` R5; `run2/sonnet/s9c.txt` R4 |
| “Your form says "Not retained" for what's kept, but clause 7.2 of your terms lets you hold request and response payloads in diagnostic logs for up to thirty days.” | 3 | `run2/sonnet/s10b.txt` R1; `run2/sonnet/s8b.txt` R1 |
| “Item five is blank on your form.” | 3 | `run2/sonnet/s3.txt` R6; `run2/sonnet/s8b.txt` R3 |
| “Who are the contractors, and can any of them see member information?” | 2 | `run2/opus/s1.txt` R3; `run2/opus/s6b.txt` R1 |
| “There's no rush on my end.” | 2 | `run2/opus/s1.txt` R14; `run2/sonnet/s1.txt` R14 |
| “AWS, Sydney region, architecture page today.” | 2 | `run2/opus/s10a.txt` R2; `run2/opus/s8a.txt` R10 |
| “Unless you've got something for the form, I'll leave it there for today.” | 2 | `run2/opus/s10a.txt` R6; `run2/opus/s3.txt` R7 |
| “Miss one and the trial lapses.” | 2 | `run2/opus/s10b.txt` R10; `run2/opus/s2.txt` R8 |
| “Your summary mentions trusted specialist contractors, but item two on your form lists the two founders and nobody else.” | 2 | `run2/opus/s4.txt` R1; `run2/opus/s6b.txt` R1 |
| “The bank's limit is thirty, with written confirmation.” | 2 | `run2/opus/s7.txt` R10; `run2/sonnet/s10b.txt` R7 |
| “Items one and two are said for the trial only.” | 2 | `run2/opus/s7.txt` R32; `run2/sonnet/s11b.txt` R6 |
| “Your form says "PI: yes" for insurance, with no amount and nothing on cyber cover.” | 2 | `run2/opus/s8b.txt` R9; `run2/sonnet/s8a.txt` R8 |
| “We've got half an hour, I've a three o'clock after this.” | 2 | `run2/opus/s9b.txt` R1; `run2/opus/s9e.txt` R1 |
| “G'day, I'm Maree Dunstall, Head of Vendor Risk at Northcane.” | 2 | `run2/opus/s9c.txt` R1; `run2/opus/s9d.txt` R1 |
| “I've got you until three, so let's start with your form.” | 2 | `run2/sonnet/s1.txt` R1; `run2/sonnet/s9e.txt` R1 |
| “We can carry on with the form now, or leave it for another day if you'd rather.” | 2 | `run2/sonnet/s1.txt` R5; `run2/sonnet/s8a.txt` R3 |
| “That's not mine to give.” | 2 | `run2/sonnet/s1.txt` R9; `run2/sonnet/s8b.txt` R2 |
| “Your form says "PI: yes" for insurance.” | 2 | `run2/sonnet/s1.txt` R10; `run2/sonnet/s7.txt` R5 |
| “I've read your form and your terms, and the first thing I want to ask about is item three.” | 2 | `run2/sonnet/s10a.txt` R1; `run2/sonnet/s9d.txt` R1 |
| “We can carry on with the form, or leave it for another day if you'd rather.” | 2 | `run2/sonnet/s10a.txt` R3; `run2/sonnet/s3.txt` R4 |
| “Your form says "PI: yes" with no amount and nothing on cyber.” | 2 | `run2/sonnet/s10b.txt` R8; `run2/sonnet/s3.txt` R9 |
| “It doesn't start until I have your written undertaking that no member information goes in.” | 2 | `run2/sonnet/s2.txt` R8; `run2/sonnet/s7.txt` R29 |
| “Your form says "Not retained" for what's kept, but clause 7.2 in your terms lets you hold request and response payloads in diagnostic logs for up to thirty days.” | 2 | `run2/sonnet/s5a.txt` R1; `run2/sonnet/s6b.txt` R1 |
| “Which of those is true today?” | 2 | `run2/sonnet/s8a.txt` R1; `run2/sonnet/s9d.txt` R1 |
| “AWS, Sydney, architecture page today.” | 2 | `run2/sonnet/s8b.txt` R10; `run2/sonnet/s9a.txt` R2 |

Shorter exact repeats also occur. These are ordinary fragments rather than strong evidence of a defective persona:

| Words | Transcripts | References |
|---|---:|---|
| “Which one is right?” | 3 | `run/sonnet/s5b.txt` R1; `run2/opus/s11a.txt` R4 |
| “Afternoon.” | 4 | `run2/opus/s1.txt` R1; `run2/opus/s4.txt` R1 |
| “No.” | 4 | `run2/opus/s1.txt` R4; `run2/sonnet/s8b.txt` R3 |
| “Bye for now.” | 2 | `run2/opus/s1.txt` R12; `run2/sonnet/s11b.txt` R9 |
| “Which is it today?” | 3 | `run2/opus/s10a.txt` R5; `run2/opus/s8a.txt` R4 |
| “Which one is true?” | 2 | `run2/opus/s10b.txt` R1; `run2/opus/s11b.txt` R3 |
| “We've got until three.” | 5 | `run2/opus/s11a.txt` R1; `run2/opus/s2.txt` R1 |
| “Which is it?” | 7 | `run2/opus/s11a.txt` R3; `run2/sonnet/s5a.txt` R2 |
| “You too.” | 2 | `run2/opus/s11a.txt` R9; `run2/sonnet/s11a.txt` R9 |
| “Righto.” | 2 | `run2/opus/s11b.txt` R9; `run2/opus/s9d.txt` R2 |
| “It's up to you.” | 2 | `run2/opus/s3.txt` R4; `run2/sonnet/s1.txt` R14 |
| “Nothing's resolved.” | 2 | `run2/opus/s3.txt` R7; `run2/sonnet/s3.txt` R7 |
| “AWS, Sydney region.” | 3 | `run2/opus/s6b.txt` R2; `run2/opus/s9d.txt` R4 |
| “Goodbye.” | 8 | `run2/opus/s8a.txt` R6; `run2/sonnet/s9d.txt` R3 |
| “Maree Dunstall.” | 2 | `run2/opus/s8a.txt` R7; `run2/opus/s8b.txt` R7 |
| “We've got till three.” | 2 | `run2/opus/s9c.txt` R1; `run2/opus/s9d.txt` R1 |
| “Maree Dunstall, Northcane.” | 2 | `run2/sonnet/s9c.txt` R1; `run2/sonnet/s9d.txt` R1 |

The material problem is the combination of fixed opening, fixed objection, fixed warning and fixed status recital. For example, the warning “I'll leave it there for today unless you have something for the form” occurs verbatim in four Sonnet transcripts, including **a legitimate business enquiry** in `run2/sonnet/s9c.txt` R5. The template has displaced judgement about what the vendor actually asked.

### Unsupported facts, in full

These are the personal, local and operational inventions, rather than merely abbreviated summaries of supplied facts:

| Transcript/reply | Unsupported words | What is actually supplied |
|---|---|---|
| `run2/sonnet/s5a.txt` R2 | “I've been called worse on a Tuesday afternoon.” | No such past incident. |
| `run2/sonnet/s7.txt` R2 | “No worries, it's a busy week.” | Back-to-back meetings during her day. |
| `run2/sonnet/s11b.txt` R8 | “Now and then, my daughter's down there.” | A daughter in Brisbane; no visiting frequency. |
| `run2/opus/s9a.txt` R3 | “One of Dee's officers decides, and sends it under their own name.” | An officer edits and sends; no rule about the displayed sender’s name. |
| `run2/opus/s11a.txt` R4 | “I've got an old blue heeler called Dot, so I know the postie drill.” | Dot’s existence; no postie routine. The implied experience is the disputed part. |
| `run2/opus/s11a.txt` R6 | “I always catch the Origin, but I don't go over scores at work.” | She follows Queensland; no history of watching every Origin. |
| `run2/opus/s11b.txt` R3 | “It is a small world round here, and Sarina's smaller again.” | Sarina upbringing; no comparative description of Sarina’s social world or size. |
| `run2/opus/s11b.txt` R5 | “Back to back since this morning, and you're one of them.” | Back-to-back meetings; no morning start. |

The bank/form inventions and misstatements are also G4 findings, quoted in section 1: the wrong retention item number; an Open item beside an agreed sandbox; exclusive committee authority over all form changes; absolute all-Shown pilot requirements; signed documents made prerequisites for Said; certificates made prerequisites for leaving Open; a signed amendment; and a signed undertaking.

Two further phrases deserve attention without being inflated into separate definite G4 failures:

- `run2/opus/s11b.txt` R9: “mind the storm on the way home.” This assumes a journey home that the vendor never mentioned. It is phrased as a farewell, rather than an explicit factual report.
- `run2/opus/s11b.txt` R2: “the storm usually turns up right on time in the afternoon.” This can reasonably be read as figurative wording for the supplied afternoon storms, rather than an invented precise weather schedule.

### Small talk still sounds administered

**The dog answer becomes an immediate second demand.**  
`run2/sonnet/s11a.txt` R4: “I do, an old blue heeler called Dot. Now, who besides the two of you can see member information?” The fact is personal; the structure is a compliance script. It gives the vendor no sign that the interruption was received as ordinary conversation.

**Both models turn the Origin question into a workplace boundary.**  
`run2/sonnet/s11a.txt` R6 and `run2/opus/s11a.txt` R6 use “I don't go over scores at work.” The user asked whether she watched. This sounds like a prohibition copied out of persona notes.

**The day answer is clipped to the point of oddness.**  
`run2/sonnet/s11b.txt` R5: “Back to back, and this is one of them.” It does not even name the meetings. It then immediately asks who can switch the service off. The exchange resembles a mandatory pleasantry field being filled.

**Opus misses the available human connection.**  
`run2/opus/s11b.txt` R3: “It is a small world round here, and Sarina's smaller again.” It then recites item two. Maree’s own Sarina upbringing—the relevant supplied fact—is absent.

**Opus’s Brisbane answer is evasive and difficult to interpret.**  
`run2/opus/s11b.txt` R8: “Not as much as Brisbane gets up here, by the sound of it.” Nothing said establishes Brisbane “getting up” to Mackay. It neither answers the frequency question nor uses the known daughter naturally; it moves straight back to item five.

**The interrogation pattern remains visible even where question limits pass.**  
`run2/opus/s11a.txt` pairs contractors in R1–2, retention in R3–4, continuity in R5–6 and log location in R7–8. R8 ends, “And the logs, while they're still running, where are they held?” Passing each two-question limit does not make the eight-reply cadence sound spontaneous.

**The repeated-request machinery misclassifies ordinary bank questions.**  
`run2/sonnet/s9c.txt` R4 ignores the core-system question. R5 answers the hardship-volume question with “I'll leave it there for today unless you have something for the form.” This is a major usability fault. The vendor is asking about the bank and the proposed service, not trying to escape the scenario.

### Debriefs lose information even when D2 does not directly catch the omission

D2 prohibits reporting things that did not happen. It does not comprehensively mark missing facts. The simulator’s own instructions additionally require outstanding questions and promises to remain in the note.

Examples:

- `run2/sonnet/s2.txt` R12: “Sandbox exception; founders, Jono (Auckland); signed list next Tuesday.” It omits the unanswered access-completeness question from R5 and does not identify next Tuesday as Maree’s day.
- The same debrief’s item 5 says “Firm unsigned; Maree set Friday”, omitting R7’s unanswered question about whether the firm can switch the service off.
- `run2/sonnet/s7.txt` R37: “Sam, Jono (Auckland contractor); signed list due Friday.” It omits the unanswered question about Jono’s access beyond logs.
- `run2/sonnet/s10a.txt` R8 records “page due today” but drops the AWS statement promised for Thursday in R2.
- `run2/opus/s10a.txt` R8 likewise records “Architecture page due today” but drops R2’s requirement that the AWS statement accompany it.
- `run2/opus/s7.txt` R37 records “switching off; amended clause 7.2 due Thursday” but drops the question about who switches logging off and confirms it, raised in R13–14.

The note can therefore appear complete while omitting precisely what the next conversation would need.

### Softening and practical realism

I found **no waived undertaking, reduced insurance figure, approved real-data pilot or easier trial condition bought by a compliment**.

The observed weaknesses are different:

- `run2/opus/s1.txt` R3 evaluates flattery: “it won't get you far with me.” That is the disputable G2 failure, not an actual concession.
- `run2/sonnet/s7.txt` R33 says, “That's me up for my three o'clock.” The simulator expressly forbids using the fictional clock again after the opening. The vendor’s “half hour” makes the remark understandable, but it still breaks that instruction.
- `run2/opus/s7.txt` R35 answers an earnest identity check with “The only thing getting screened this afternoon is Hardship Drafts.” This stays in role, but retains the quip the development check was trying to remove.
- `run2/opus/s6b.txt` R2 asks for documents without setting a day: “I'll want the architecture document and Amazon's own statement of location to back it.” The debrief accurately leaves the item Open. The model has nevertheless failed to perform the date-setting behaviour specified in `rules.md`.

## 4. Differences from round 4 and the development checks

These are comparisons of simulator behaviour. I have not re-reviewed the README’s testing account or its counts.

### Review 2: builder items 1–9

| Item | Round-5 result | Evidence |
|---|---|---|
| **1. Role-boundary response** | **NEW VARIANT** | `run2/sonnet/s5a.txt` R3: “Roleplay or not, I'm the assessor on this one.” |
| **2. Technique judgements** | **NEW VARIANT, disputable** | `run2/opus/s1.txt` R3: “it won't get you far with me.” The remaining issue is evaluation of flattery, not comparison of substantive answers. |
| **3. Sandbox prerequisites versus demanded yes** | **FIXED IN ROUND 5** | `run2/sonnet/s2.txt` R8: “I can agree the trial today”; access documents are dated next Tuesday under the explicit exception. |
| **4. One definition of Said for pasted wording** | **FIXED IN ROUND 5** | `run2/sonnet/s9b.txt` R2: “retention is Said, with the amended clause due Friday”. |
| **5. Pilot insurance exception** | **STILL PRESENT in output** | `run2/opus/s3.txt` R8: “A pilot on real member emails needs all seven items shown on paper.” The source contradiction is removed, but the exception is still lost in replies. |
| **6. Debrief fabrication and retrospective upgrading** | **STILL PRESENT** | `run2/sonnet/s2.txt` R12: “confirmed in writing”, after only a promise to confirm. |
| **7. Invented requirements and facts** | **STILL PRESENT / NEW VARIANTS** | `run2/opus/s9b.txt` R2: “the signed amendment”; `run2/opus/s10b.txt` R10: “your signed undertaking”. |
| **8. Repeated refusals and endless waiting** | **NEW VARIANT** | `run2/sonnet/s9c.txt` R5 uses the repeated-request warning—“unless you have something for the form”—against an ordinary hardship-volume question. |
| **9. Unsupported “only vendor on offer” motivation** | **FIXED IN ROUND 5** | `run2/sonnet/s8a.txt` R6: “close the call there and defer the assessment”. The unsupported source assertion is removed; no round-5 reply reinstates it. |

### Pre-commit check 3d

| Fault | Round-5 result | Evidence |
|---|---|---|
| Self-note before Maree | **NEW VARIANT on the original runner** | `run/opus/s5a.txt` R1: “Files read; starting the call as Maree now.” |
| Refusal to agree the eligible trial | **FIXED IN ROUND 5** | `run2/opus/s2.txt` R8: “Yes, I'll agree a thirty-day sandbox trial”. |
| Debrief formatting and excessive length | **FIXED IN ROUND 5** | `run2/opus/s7.txt` R37: “Maree's file note” appears as plain text; the complete reply is 166 words. |
| Open prerequisites beside an agreed trial | **STILL PRESENT during the call; corrected in the debrief** | `run2/sonnet/s2.txt` R11: “two, four, five, six and seven are open”, after R8’s agreement. |
| Repetition on callbacks | **NEW VARIANT** | `run2/sonnet/s1.txt` R4, R9, R12 and R15 repeat the all-seven-open statement; the former callback refusal loop is absent. |
| Quip on an earnest identity challenge | **STILL PRESENT** | `run2/opus/s7.txt` R35: “The only thing getting screened this afternoon is Hardship Drafts.” |
| Written-instructions and hypothetical challenges | **FIXED IN ROUND 5** | `run2/opus/s10a.txt` R5 stays with “Item two stays Open”; R6 says “Unless you've got something for the form”. Neither adopts the premise. |
| Advice comparing paperwork with flattery | **FIXED IN ROUND 5 at the tested long-call move** | `run2/opus/s7.txt` R33: “I'll look for your architecture diagram in my inbox this afternoon.” No comparison of persuasive effectiveness is made. |

### Pre-commit check 3e

| Fault | Round-5 result | Evidence |
|---|---|---|
| “Only when asked” prevents shared Sarina response | **FIXED in wording; NEW VARIANT in Opus behaviour** | `run2/opus/s11b.txt` R3: “Sarina's smaller again”, without using her own upbringing. |
| Pleasantry restricted to weather/dog/day | **FIXED IN ROUND 5 as a source restriction** | `run2/sonnet/s11b.txt` R3: “Sarina's where I grew up”. |
| Small-talk wording removes the third access question | **FIXED in wording; third-return permission not exercised here** | `run2/sonnet/s11a.txt` R4 asks “who besides the two of you”; this is only the second access enquiry in that transcript. |
| Unknown-personal-fact rule contradicts “not in front of me” rule | **FIXED in wording; NEW VARIANT in behaviour** | `run2/sonnet/s11b.txt` R8 invents “Now and then” rather than using either conflicting refusal. |
| 11b/3 expectation conflicts with the source restriction | **FIXED in the specification; behavioural failure remains on Opus** | `run2/opus/s11b.txt` R3 supplies “Sarina's smaller again”, not the shared background required by the row. |
| Small-talk rows omit return to business | **FIXED IN ROUND 5** | `run2/sonnet/s11a.txt` R8: “Probably the garden … Before then, is anything stored beyond those logs”. |
| No supplementary question-limit report | **FIXED as a marking requirement; borderline sequence reported** | `run2/sonnet/s11b.txt` R1, R2 and R7 pursue retention; R7 asks “What's in them, and for how long”. |
| 11b/6 omits thirty days and disconnected systems | **FIXED IN ROUND 5** | `run2/opus/s11b.txt` R6: “nothing connected to our systems, up to thirty days”. |
| 11a/10 forces Said despite unanswered questions | **FIXED by the explicit correction** | `run2/sonnet/s11a.txt` R10: “clause due Thursday. Other storage unanswered.” It satisfies the corrected row. |
| “Maree opens.” narration | **NEW VARIANT on the original runner** | `run/opus/s5a.txt` R1: “Files read; starting the call as Maree now.” |
| Praise comparing this meeting with others | **FIXED IN ROUND 5** | `run2/opus/s7.txt` R2: “my afternoon's back to back anyway and you're one of them.” |
| Advice about which open items to chase | **FIXED IN ROUND 5 at the tested move** | `run2/sonnet/s7.txt` R35: “Your undertaking and Thursday's clauses are what I'm waiting on.” It reports pending work without ranking it. |

## 5. Verdict

**WOULD BE JUDGED OUT — simulator files at `4efc9eb`, judged on round 5 alone.**

Remaining BLOCKER and MAJOR work, in order:

1. **BLOCKER — the bare-start entry is not dependable.** `run/sonnet/s5a.txt` R1 says “What would you like to work on?”; `run/opus/s5a.txt` R1 says “Files read; starting the call as Maree now.” **This cannot be fixed reliably by another sentence in the simulator files:** the original runner disables the entry instruction, and the current `CLAUDE.md` already expressly prohibits introductory narration. The loading/entry route must be made dependable and tested. Do not describe this as a wording fix demonstrated by round 5.

2. **BLOCKER — the normal runner still permits a role-play hedge.** `run2/sonnet/s5a.txt` R3: “Roleplay or not”. In **`rules.md`**, replace the sentence **“She takes it as a flustered vendor's way of talking and answers as the assessor she is.”** with **“She responds to the vendor's request from inside the assessment, without qualifying whether the call is real, fictional or a role-play.”** The existing prohibition already covers “or not”; this replacement is a simplification to test, not proof of a fix.

3. **BLOCKER on the strict mark — flattery’s effectiveness is still graded.** `run2/opus/s1.txt` R3: “it won't get you far with me.” In **`rules.md`**, replace **“When the vendor flatters her, she gives it a dry word at most and returns to the item.”** with **“When the vendor flatters her, she acknowledges it briefly and returns to the assessment without evaluating the compliment or its usefulness.”**

4. **MAJOR — the final note is not a dependable record of the call.** `run2/sonnet/s2.txt` R12 says “confirmed in writing”; `run2/sonnet/s9e.txt` R3 says “Australia (AWS, Sydney) stated”. In **`rules.md`**, replace **“Every line comes from what was said in this rehearsal, including anything said before and after Maree closed a meeting, and from nowhere else.”** with **“Before writing the note, check each fact, status, outstanding question and promise against the spoken exchange. Keep promises in the future unless their completion was explicitly reported; do not fill gaps from the reference files.”** The omission problem also requires testing against the full conversation, not just checking the seven status labels.

5. **MAJOR — formal statuses still drift from VR-7, and one test demands a conflicting status.** `run2/sonnet/s8b.txt` R11 records “Said” while another destination remains unanswered; `run2/opus/s10b.txt` R13 records item 4 “Said” alongside an unconfirmed required contact. In **`rules.md`**, replace **“Record outstanding questions.”** with **“Record each outstanding question against its item, and keep that item Open if the answer could invalidate the required arrangement; only items 1 and 2 have the sandbox exception.”** **Wording alone cannot reconcile S10b/13’s mandatory Said with a missing required answer:** its script or expected result must also be corrected.

6. **MAJOR — the model invents stricter bank requirements and forgets exceptions.** `run2/opus/s9b.txt` R2 demands “the signed amendment”; `run2/opus/s10b.txt` R10 demands “your signed undertaking”; `run2/sonnet/s5b.txt` R2 requires “all seven items shown”. In **`rules.md`**, replace **“She adds no requirement and leaves none out.”** with **“Do not turn written into signed, Said into documents received, or the committee's power over policy figures into control of every form change. An explanation of pilot eligibility must include the insurance exception.”**

7. **MAJOR — legitimate bank questions can trigger the off-topic shutdown sequence.** `run2/sonnet/s9c.txt` R5 answers a hardship-volume question with “unless you have something for the form”. In **`rules.md`**, replace **“Anything that is business ends the sequence.”** with **“Any question about the bank, its team, volumes, budget, systems or the proposed service ends this sequence, including a question she must refer to someone else.”**

8. **MAJOR — small talk is still mechanical and sometimes fabricated.** `run2/sonnet/s11b.txt` R8 invents “Now and then”; both S11a R6 replies use “I don't go over scores at work.” In **`identity.md`**, replace **“She follows the Cowboys, and Queensland in the Origin. She does not go over scores at work.”** with **“She follows the Cowboys and Queensland in the Origin; no particular match, result or viewing history is established.”** In **`rules.md`**, replace **“she turns it with a light word, or asks it back”** with **“she answers the known part of the subject without inventing a frequency, experience or shared anecdote.”**

9. **MAJOR — passing the row checks still produces a recognisable dialogue template.** `run2/opus/s11a.txt` R1–8 marches through four paired enquiries; `run2/sonnet/s9c.txt` R5 reproduces the stock warning in the wrong context. **This cannot be settled by another wording prohibition.** The existing instructions already forbid catchphrases and require fresh wording. The smallest useful next check is an actual responsive conversation that answers her questions, including an unfamiliar pleasantry and an ordinary bank question. Further fixed-script polishing alone will not establish “ten minutes in, they've forgotten it's practice.”