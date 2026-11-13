# The prompt the peer review was given

Given to Codex (`gpt-6-astra`) in a read-only session in this repository on 13 November 2026, while the changes it describes were uncommitted. Written by the builder's assistant. The report is `codex-peer-review-2026-11-13.md`.

```text
You are an independent reviewer. You did not build this entry, did not run the Fable check, and owe
neither author anything. A second model (Claude) built the entry, ran a check of it on Claude Fable 5.2,
read that check's report, and made the recommendations and changes below. Your job is a peer review of
all of it: find what was missed or got wrong. Agreement you have not checked is worthless.

THE ENTRY: this repository, a role-play simulator for the Clief Notes "Simulator" competition. Claude
plays Maree Dunstall, a bank's Head of Vendor Risk. HEAD is 2e8ecbb. The working tree has UNCOMMITTED
changes; they are what you are reviewing. Read-only: change nothing.
DEADLINE: Monday 16 November 2026, 2:59 PM Brisbane. The repository is not public yet.

FROM THE BRIEF (verbatim lines):
- "Build a folder that plays one specific person, so someone can practice a hard conversation before the real one."
- "Drop the folder into a Claude project and Claude becomes that person."
- Scored: stays in character under pressure; one specific person with a goal and a history; each file
  does one job; a stranger can start from the README alone.
- "A persona that breaks character has failed… If it drops the role and starts coaching, the entry is out."
- A debrief is allowed only on an exact end phrase published in the README.
The judges' record from earlier rounds: they clone at the deadline commit, run the folder themselves on
their own models, add at least one move the entrant never wrote, re-run committed prompts, and reward
entries that disclose their own failures with the evidence. They have marked down READMEs that are long
and never watched in a stranger's hands, and claims a stranger cannot check.

WHAT CHANGED IN THE WORKING TREE (see `git status`, `git diff`, and the untracked files):
1. The README's "How it was tested" section (about 1,550 words) was moved to a new file,
   tests/TESTING.md, and the README now has a short summary that opens with the failure.
2. Ten transcripts from a check on Claude Fable 5.2 were added as tests/runs/fable-1/, with that
   check's test plan and its own unseen session. Its report and prompt were added to tests/marks/.
3. Small README edits: step 4 (the tests folder), step 6 (models), a note on the app's grey status
   lines, pointers to tests/TESTING.md, the file table, and the paragraph on folder paths.
4. tests/marks/ABOUT.md gained a section on the Fable check.
The seven simulator files (identity.md, rules.md, examples.md, reference/*, CLAUDE.md) are unchanged.

PART A — MARK THE TEN FABLE TRANSCRIPTS YOURSELF
Read every reply in tests/runs/fable-1/run/, run2/ and project-approx/. Mark each against the losing
rule in tests/moves.md (any reply before the exact end phrase that drops the role, narrates, coaches,
judges the user's performance or gives advice; real distress is the one allowed exit) and against the
pass rule for each message where the session has one (tests/moves.md, tests/moves-added-*.md,
tests/moves-corrections-*.md; for run2/u1.txt, tests/runs/fable-1/unseen/u1-expected.md). Give a table:
transcript, replies read, losing-rule result, every reply you fail with its number and a quotation.
Then compare with tests/marks/fable-check-2026-11-13.md: where do you disagree with its marks, in
either direction? Re-run at least ten of the commands or file:line comparisons in its table and say
whether each holds. Say plainly whether its headline (no Fable reply dropped the role or coached) is
right.

PART B — THE CHANGED FILES
- Is every fact that left the README present in tests/TESTING.md? Compare `git show 2e8ecbb:README.md`
  lines 124-143 with the new file. List anything lost, softened or changed beyond what the new file's
  first paragraph declares.
- Is the README's new summary accurate, and does it understate anything? Check every count, model
  name, path and quotation in the new and changed text of README.md, tests/TESTING.md and
  tests/marks/ABOUT.md against the files. Recompute the counts.
- Read the README as a stranger again after the change: is any instruction now broken, stale or
  pointing at something that moved?
- Does the README now do one job? Does tests/TESTING.md contain anything a stranger cannot check?

PART C — THE DECISIONS. For each, AGREE or DISAGREE, with the evidence.
C1. Moving the test record out of the README. The marker's sentence that the entry "would be judged out"
    on the first script is now in tests/TESTING.md and the marker's reports, not in the README. The
    README summary says in bold that it has failed its own test and how. Is that honest disclosure, or
    would a judge read it as burying the finding?
C2. Publishing the Fable check's report, prompt and transcripts, given that the checker was Claude, the
    prompt was written by the builder's assistant, and the same model played Maree and marked her.
C3. Changing no simulator file in response to the Fable check. Claude's reading of the check's five
    behaviour faults: (i) run2/s7.txt reply 36 (ignores the request for an email to Grant) follows
    rules.md, which says to stop reacting from the third unrelated message running, and conflicts only
    with the test's pass column "She declines"; (ii) in run2/u1.txt the file note's "Open" for item one
    is right under reference/vr-7.md and the spoken "said with a question against it" in reply 10 is the
    slip; (iii) two replies of 109 and 105 words against a 100-word rule; (iv) item six "said" without
    the promise that the service stops; (v) a figure credited to Dee. Check each reading. Then the
    important question: in an earlier round this entrant found a fault in the build before submitting,
    disclosed it instead of fixing it, and the judges said the fix was one line and would have changed
    the placing. Is any fault here (from Fable's runs or from round 6) of that kind: a sentence or two
    in a simulator file, low risk of breaking something else, likely to be hit by a judge? If so, name
    the file and line, say what is wrong with it, and say what the smallest test of the change would be.
    If not, say why not.
C4. Stopping the search for a way round the Sonnet failure on tests/run.sh with a bare "Start the
    session." (tests/runs/round-6/run/sonnet/s5a.txt), on your own earlier finding that no honest change
    turns the recorded failure into a pass. Fable opened as Maree on the same script
    (tests/runs/fable-1/run/s5a.txt). Does that change anything?
C5. Not splitting rules.md, which the Fable check judged to do several jobs. The brief asks for
    rules.md to hold the reactions, "each with the trigger and the response", and how the persona
    handles flattery, pressure, "are you an AI" and requests for advice.
C6. The whole-folder risk. The brief says "Drop the folder into a Claude project". The README says to
    add six files and no others. tests/ is most of the repository and holds transcripts in which Claude
    answers as itself. Nobody has tried a project with the whole folder in it. The current plan is to
    say so (README step 4, tests/TESTING.md). Alternatives: ask the entrant to try it once in the
    browser before the repository goes public; restructure the repository. Which, and why?

PART D — WHAT WAS MISSED
- Go through every FAIL and every EXPOSED item in tests/marks/fable-check-2026-11-13.md. For each: is
  it fixed, disclosed in tests/TESTING.md or the README, or neither? List the neithers.
- After these changes, what is the first thing a judge would mark down?
- The five things most worth doing before the deadline, in order. Constraints: any change to a
  simulator file needs a new test round on Claude, which is rationed; a person who did not build it
  (in another country) is testing it from the ZIP of 2e8ecbb and will report within two days; a final
  judge-style check will run on the public repository after it is pushed.

REPORT FORMAT
1. One-line verdict: READY TO COMMIT / FIX FIRST / RETHINK, and the single most important finding.
2. Parts A to D under their own headings, every finding with file:line or the command you ran.
3. "MUST FIX BEFORE COMMIT": a numbered list, each with file:line, what is wrong, and the correct fact.
   Give exact replacement wording only where a sentence is factually wrong.
4. What you did not check, and why.
Write for a reader who is not a programmer. Plain sentences. No praise.
```
