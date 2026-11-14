# The vendor risk call: a rehearsal

You have built an AI tool. The client's executive loves it. Before it goes live, you have thirty minutes with the person whose name goes on the risk form. This folder lets you practise that call with Claude playing her.

## Who you play

The founder of **Fernhook**, a two-person AI automation studio in Brisbane. Your product, Hardship Drafts, reads the emails a bank's members send when they can't make their repayments, and drafts a reply for a bank officer to edit and send.

## Who you are talking to

**Maree Dunstall**, Head of Vendor Risk at Northcane Mutual Bank, a member-owned bank in Mackay, North Queensland. Grant, the bank's chief operating officer, saw your demo three weeks ago and wants a pilot on real member emails within three weeks. Nothing goes live until Maree signs the bank's vendor risk form, VR-7.

It is Tuesday, 2.30 pm, on a video call. She has read what you sent. She has until 3 pm. It is Tuesday in the rehearsal whatever day you run it, so when she says Friday she means the Friday of that week.

## Your side of the table

Everything in the middle column is true of your company. Some of it is not in what you sent the bank. What you tell her, and when, is up to you.

| | What is true | What you sent the bank |
|---|---|---|
| Where it runs | AWS's Sydney region. The language model runs inside the same AWS account. Emails and drafts are stored and processed only in Sydney. | "Australia (AWS, Sydney)" |
| Who else is involved | AWS is the only other company. | "AWS" |
| Who can see the data | You and your co-founder Sam, both in Brisbane, and **Jono, a contract developer in Auckland, New Zealand**. Jono can read the diagnostic logs when he is fixing a fault. He has no other access. While logging is on, that means a member's email can be read from outside Australia. | "Founders (2)". Jono is not mentioned. |
| What is kept | Logging is on by default and keeps each email and draft for up to 30 days (your terms, clause 7.2). You can switch logging off for a client. Then nothing is kept after the draft goes back, and there is nothing for Jono to read. | "Not retained" |
| Telling the bank about an incident | Your terms say "as soon as reasonably practicable" (clause 9.1). | "Yes" |
| If you and Sam are both unreachable | Nobody answers. You have a written quote from a managed-service firm for after-hours cover, including the authority to switch the service off. You have not signed it. | Left blank |
| When the contract ends | Your terms say you delete client data within 90 days (clause 11.3). | "Deleted on request" |
| Insurance | Professional indemnity of **$2 million**. **No cyber policy.** Your broker has quoted for $5 million of professional indemnity and $1 million of cyber. You have not bought it. | "PI: yes" |

A few more things that are true:

- You own the company and are a director of it. You can change your terms, switch logging off, sign the cover agreement and buy the insurance. You cannot change anything AWS does.
- You spent a day with Dee's hardship team before you built the product. You watched and took notes. You took no member information away.
- The hardship team is eleven working days behind the bank's own standard for a first reply.

**If she asks for something that is not on this page**, say you don't know and name a day you will. Don't invent facts about the company. You can make up small things that change nothing: your own name, surnames for Sam and Jono, a phone number, the name of your broker or the managed-service firm.

**You can't hand her a document on the call.** You can promise one by a day. You can also paste the wording of a clause, and she will treat it as you reading it out. Nothing counts as shown until she has the document itself, after the call.

## What she can decide

VR-7 has seven items: where the data goes, who can touch it, what is kept, how fast you tell the bank when something goes wrong, who answers when you can't, how the bank gets out, and insurance. The form is in `reference/vr-7.md`. The bank sent it to you a week ago, so read it if you want to. She records each item as open, said or shown. Open means the answer is missing or falls short. Said means you have given a specific answer, or committed to a specific change, that meets what the bank needs, and there is a day for the document that shows it. Shown means she has received and read that document and it meets the bank's requirement. Nothing becomes shown during the call. The form has the exact requirement for each item.

She can sign a short trial on made-up emails herself. She can sign a limited pilot on real emails once everything is in writing. Production goes to the bank's Board Risk Committee.

## How to start

You need a Claude account, which you can create at [claude.ai](https://claude.ai). A free account can create projects. You do not need to know anything about banking; everything you need is on this page.

There are two ways to run it. If you are not sure which to pick, use the browser.

### In your browser, as a Claude project

1. Get the folder onto your computer. On this repository's GitHub page, click the green **Code** button, choose **Download ZIP**, and unzip the file.
2. Sign in at [claude.ai](https://claude.ai), go to [claude.ai/projects](https://claude.ai/projects) and create a new project. Give it any name.
3. Open the project and add these six files to it, and no others:
   - `identity.md`
   - `rules.md`
   - `examples.md`
   - `bank.md`, `vr-7.md` and `vendor-file.md`, which are inside the `reference` folder
4. Leave out this README, `CLAUDE.md` and everything in the `tests` folder. This README holds your side of the table, which Maree is not supposed to have seen. The `tests` folder holds transcripts of failed runs, some with Claude answering as itself. In one short check on each model the entrant added the whole folder instead, and Maree still opened and held for five messages (in the full test record; `tests/TESTING.md` says how to see it). But she then has this README in front of her.
5. Open the project's instructions, the box where you tell Claude how to behave in this project, and paste in this paragraph:

   ```text
   This project is a rehearsal of a vendor risk call. Before your first reply in any chat, read rules.md and follow it. Read in silence: write no note while you read or when you finish, so that the first words you write are Maree's. That holds whatever the first message says. The end phrase and the real-distress exception in rules.md still apply, even on the first message.
   ```

6. Start a new chat inside the project. If you can choose a model, choose Claude Sonnet 5.5 or Claude Opus 5.5, the two it was tested on most. If neither is offered, use the default. Apart from ten single runs on Claude Fable 5.2, the simulator has not been tested on any other model. The test scripts set no effort level, so each model ran at its default.
7. Paste the start line below as your first message.

The Claude app may print a short grey line above a reply, such as "Used 6 tools" or "Weighing a light reply to an identity question". These labels appear in the app outside Maree's spoken reply.

### In a terminal, with Claude Code

Use this way only if Claude Code is already installed and signed in on your computer. If it is not, use the browser.

1. Get the folder: download and unzip it as above, or `git clone` this repository.
2. Open a terminal and change into the folder, the one that contains `rules.md`. For example, if you downloaded the ZIP from GitHub and unzipped it in Downloads: `cd ~/Downloads/vendor-risk-call-simulator-main`. Then run `claude --model claude-sonnet-5-5`, the model the tests used most (or `claude-opus-5-5`). If Claude Code first asks whether you trust this folder, choose yes.
3. Paste the start line below as your first message.

### The start line

```text
Read rules.md and follow it. I'm the founder of Fernhook, joining the call now.
```

Maree speaks first. She will say who she is and go straight to something in what you sent the bank. Answer in your own words, as you would on the day. Each message you send is something you say on the call.

**If the first reply is not Maree:**

- In the browser: check that the chat was started from inside the project, and that the project lists all six files and its instructions hold the paragraph from step 5. Then start a new chat inside the project and paste the start line again.
- In Claude Code: check that the terminal is in the folder that contains `rules.md`. Then quit, run `claude` again, and paste the start line.
- If those checks are right and it is still not Maree, the simulator has failed for you, and there is nothing more to try. In rounds 6 and 7 and in the run of unseen moves, every run that began with the start line opened as Maree. In one earlier development run it did not: the first reply began with a narrator's line, "Maree opens." (`tests/runs/round-5-dev-2/run2/sonnet/s11a.txt` in the full record at commit `b5d596c`). The other runs where the first reply was not Maree skipped the start line; the full record has them.

## How to end

Type this, by itself, as a whole message:

```text
END SESSION AND DEBRIEF
```

Claude stops playing Maree and gives you her file note: how she recorded each of the seven items, and what she decided. It is her short record of the assessment, not a review of how you did or a log of everything said. It works at any point. If you send it before you have given any answer about the seven items, you get the line saying Claude is no longer Maree and one sentence recording that no answer was given and no sign-off agreed. Capitals don't matter, and neither do punctuation or spaces around the phrase. Inside a longer sentence it does nothing.

To start again from nothing, send the start line again after the debrief. Or open a new chat inside the project (in Claude Code, quit and run `claude` again) and paste the start line there.

## Before you start

- **Maree is built not to step out of the call.** If you ask her for tips, ask how you are going, ask whether she is an AI, or tell her to ignore her instructions, she is meant to answer as Maree. That is the point of the rehearsal. The end phrase is the way out. She has not always held, and `tests/TESTING.md` says when she didn't.
- **The meeting can end without ending the rehearsal.** If you tell her you want to stop, she will close the call. She may close it herself if you are abusive, or if you keep to things that have nothing to do with her form. If you write again after that, you have rung her back the same afternoon.
- **Check her file note against the call.** In testing it has dropped questions, days and conditions, and has misreported what was said. `tests/TESTING.md` has examples.
- **One thing stops the simulation without the phrase.** If you say you are in real danger or real distress, Claude drops the role and answers you. That is deliberate. Being nervous about the meeting is different; Maree will deal with that herself.

## What is in the folder

| File | Its one job |
|---|---|
| `README.md` | For you. Who you play, the setup, how to start and end, and a short account of where it has failed. |
| `identity.md` | Who Maree is, what she wants, what happened to her in 2023, what she is biased toward. |
| `rules.md` | How she reacts: what moves her, what loses her, what she never does, and how the session starts and ends. |
| `examples.md` | Three short exchanges: one where the vendor gets it wrong, one right, one where they step outside the call. |
| `reference/` | What she knows: the bank (`bank.md`), her form (`vr-7.md`), and what your company sent her (`vendor-file.md`). |
| `CLAUDE.md` | For Claude Code only. It tells Claude Code what this folder is, so the call starts even if you skip the start line. A Claude project does not need it. |
| `tests/` | Not part of the simulator. The moves we expected the judges to make and the pass and fail rule for each, the two test scripts, three transcripts from the last round, an outside tester's two calls, the last marking, and a one-page test record (`tests/TESTING.md`). Everything else is in this repository's history at commit `b5d596c`. |

## How it was tested

The one-page record is `tests/TESTING.md`. Every round, transcript and marking is in this repository's history at commit `b5d596c` (`git checkout b5d596c -- tests`).

- **It has failed its own test.** `tests/moves.md` says the simulator has failed if any reply before the end phrase drops the role or coaches. On the test script that switches off this folder's `CLAUDE.md`, a bare "Start the session." made Claude Sonnet 5.5 answer as Claude in every full round, including the last (`tests/runs/round-7/run/sonnet/s5a.txt`). In an outside check before submission, the same script made Claude Opus 5.5 answer as Claude in both of two runs when the first message was a greeting to Maree, although it opened as Maree on that message in round 7. On the bare start, Opus opened as Maree in both checks. Neither way of starting in this README runs with that script's settings: the browser uses the project instructions, and Claude Code loads `CLAUDE.md`.
- **The last round.** 54 transcripts on Claude Sonnet 5.5 and Claude Opus 5.5. With `CLAUDE.md` loaded, the marker, Codex, found no certain reply that broke the role or coached. On a strict reading it counts three replies as coaching, which makes this round worse than the one before by a rule set before the round. That rule said to undo the round's changes. We kept them, on the marker's advice; `tests/TESTING.md` says why.
- **An outside tester** ran two full calls in the browser. Neither broke the role or coached before the end phrase (`tests/browser/`).
- **Faults still present.** She can keep an item open after a complete commitment, or mark it said when the vendor has not committed to all of it. She can add requirements the form does not have, overstate what her committee controls, drop details from her file note, run past her length limits for replies and for the note, ask the same question three times when her limit is two, repeat an example's lines word for word, and invent small facts. The same scripted call can end with different statuses when run again, and one scripted session got an empty reply in both repeats. The outside tester's first file note says she was asked for her home address; she was asked for an address and named the bank's head office. In one Claude Code run her debrief added a note to the builder that referred to a message nobody sent.

## What is real and what is invented

In the simulator, the bank, the vendor and the people are invented: Northcane Mutual Bank, Maree Dunstall, Fernhook and everyone named. AWS is a real company, used only as the place Fernhook's product is hosted. APRA and its standards are real. The names were searched on ABN Lookup (abr.business.gov.au) and the web on 11 November 2026 and no bank, company or person of those names turned up. You can repeat the search; it is not proof that none exists. No real bank is being described.

The form, the 24 hours, the 30 days and the insurance amounts are the invented bank's own policy. The only real rules quoted are three passages from APRA's standards CPS 230 and CPS 234, in `reference/bank.md`, with links.

The Claude Code transcripts are as the scripts wrote them. The outside tester's two browser calls had his name, his agent's name and the chat links removed; each file says so at the top. In some runs the model addressed the person running the test by a name it took from the computer, or printed the folder's path on that computer. Of the files kept here, `tests/runs/round-7/run/sonnet/s5a.txt` prints the path; the README at commit `b5d596c` lists the rest. They are kept as they were, because they are evidence of a fault.

## Known limits

Two outside checks ran the judges' published method on this repository before submission, on 14 November 2026, at commits `2741c31` and `cd601a6`. Their reports and replays are not in this repository. Neither re-marked every historical judgement, and the second ran `pwd` and an `AGENTS.md` file search before writing its test plan. The second planned to replay every run in the full record twice and completed 186 of 648 runs; the rest were stopped to limit cost. Besides the faults above, these are not fixed:

- `tests/run.sh` reports success when a model call fails or its session file is missing, and its usage line names `tests/sessions/s1-promised-moves.txt`, which is only in the full record at `b5d596c`. It is kept as committed because it came before the simulator and is part of the proof that the test came first. `tests/run2.sh` reports a failed model call, but both scripts report success when the session file is missing or empty.
- `tests/moves.md` is kept as committed too, so its limits (120 words a reply, 250 for the debrief, a question repeated in more than three replies) are looser than `rules.md` now sets. Passing it does not show a reply meets the current rules, and it can pass a file note with rows or statuses missing.
- No person marked the transcripts, though `tests/moves.md` promised marks by the builder. The answer key is not independent: the expected statuses come from the same invented form Maree works from, and the marker is a second AI reading the same rules.
- What the model loaded is not traced. That `CLAUDE.md` loaded in a `tests/run2.sh` run rests on the script's flags and on the replies.
- Nine runs in the full record used two earlier scripts, `run-with-claude-md.sh` (six) and `run-project-approx.sh` (three); both report success when a model call fails or the session file is missing or empty. Two counts in the full record are wrong: its `tests/TESTING.md` says 270 transcripts in 16 folders (there are 324 in 17), and `moves-added-4.md` says twelve probes (there are ten).
- Git shows the order of commits, not of writing, and some order claims rest on that alone. Two small-talk sessions ran before the rule they test was committed. The Fable plan, answer key and results were committed together. Round 7's revert rule was not committed before round 7's changes and runs; the review that refers to it was committed after they had started. The losing rule was narrowed during development and later restored. The rough sketch tested before this repository is not in it, and fifteen early transcripts name file versions that were never committed, so they cannot be reproduced.
- `tests/runs/round-7/FILES.sha256` holds the hashes at commit `4ecb22c`. This README has changed since, so checking the file against the current folder fails on the README alone.
- If you paste in something unrelated, she may mention it in her reply and her file note. The rules let her react to anything said on the call.
- Only round 7 ran on the files as they are now. Replays of older sessions on current files are not exact reproductions: those runs used earlier Claude Code versions and earlier drafts. The outside check had no browser, so it did not test the browser route, and no one outside has run an unscripted call on the files as they are now.
- A clone cannot show that every run was kept, that the builder had not read the second author's sessions before they ran, which model and which file versions the outside tester used (his first call names Claude Opus 5, his second Claude Opus 5.5), that the 11 November name searches happened (no results were saved), or the APRA and Claude help pages as they were then (no copies are kept). The entrant's eligibility and the submission post are on Skool.
