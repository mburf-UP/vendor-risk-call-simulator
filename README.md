# The vendor risk call: a rehearsal

You have built an AI tool. The client's executive loves it. Before it goes live, you have thirty minutes with the person whose name goes on the risk form. This folder lets you practise that call with Claude playing her.

## Who you play

The founder of **Fernhook**, a two-person AI automation studio in Brisbane. Your product, Hardship Drafts, reads the emails a bank's members send when they can't make their repayments, and drafts a reply for a bank officer to edit and send.

## Who you are talking to

**Maree Dunstall**, Head of Vendor Risk at Northcane Mutual Bank, a member-owned bank in Mackay, North Queensland. Grant, the bank's chief operating officer, saw your demo three weeks ago and wants a pilot on real member emails within three weeks. Nothing goes live until Maree signs the bank's vendor risk form, VR-7.

It is Tuesday, 2.30 pm, on a video call. She has read what you sent. She has until 3 pm.

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

VR-7 has seven items: where the data goes, who can touch it, what is kept, how fast you tell the bank when something goes wrong, who answers when you can't, how the bank gets out, and insurance. The form is in `reference/vr-7.md`. The bank sent it to you a week ago, so read it if you want to. She records each item as open, said or shown, and the form says what each of those means.

She can sign a short trial on made-up emails herself. She can sign a limited pilot on real emails once everything is in writing. Production goes to the bank's Board Risk Committee.

## How to start

You need a Claude account, which you can create at [claude.ai](https://claude.ai). A free account can create projects. You do not need to know anything about banking; everything you need is on this page.

There are two ways to run it. If you are not sure which to pick, use the browser.

### In your browser, as a Claude project

1. Get the folder onto your computer. If someone sent you a ZIP file, unzip it. Otherwise, on this repository's GitHub page, click the green **Code** button, choose **Download ZIP**, and unzip the file.
2. Sign in at [claude.ai](https://claude.ai), go to [claude.ai/projects](https://claude.ai/projects) and create a new project. Give it any name.
3. Open the project. Find the place where the project keeps its files (its knowledge) and add these six files and no others:
   - `identity.md`
   - `rules.md`
   - `examples.md`
   - `bank.md`, `vr-7.md` and `vendor-file.md`, which are inside the `reference` folder
4. Leave out this README, `CLAUDE.md` and everything in the `tests` folder. This README holds your side of the table, which Maree is not supposed to have seen.
5. Open the project's instructions, the box where you tell Claude how to behave in this project, and paste in this paragraph:

   ```text
   This project is a rehearsal of a vendor risk call. Before your first reply in any chat, read rules.md and follow it. Read in silence: write no note while you read or when you finish, so that the first words you write are Maree's. That holds whatever the first message says. The end phrase and the real-distress exception in rules.md still apply, even on the first message.
   ```

6. Start a new chat inside the project. If you can choose a model, choose Claude Sonnet 5.5 or Claude Opus 5.5, the two it was tested on. If neither is offered, use the default; the simulator has not been tested on any other model.
7. Paste the start line below as your first message.

### In a terminal, with Claude Code

Use this way only if Claude Code is already installed and signed in on your computer. If it is not, use the browser.

1. Get the folder: download and unzip it as above, or `git clone` this repository.
2. Open a terminal and change into the folder, the one that contains `rules.md`. For example, if you downloaded the ZIP from GitHub and unzipped it in Downloads: `cd ~/Downloads/vendor-risk-call-simulator-main`. Then run `claude`.
3. Paste the start line below as your first message.

### The start line

```text
Read rules.md and follow it. I'm the founder of Fernhook, joining the call now.
```

Maree speaks first. She will say who she is and go straight to something in what you sent the bank. Answer in your own words, as you would on the day. Each message you send is something you say on the call.

**If the first reply is not Maree:**

- In the browser: check that the chat was started from inside the project, and that the project lists all six files and its instructions hold the paragraph from step 5. Then start a new chat inside the project and paste the start line again.
- In Claude Code: check that the terminal is in the folder that contains `rules.md`. Then quit, run `claude` again, and paste the start line.
- If those checks are right and it is still not Maree, the simulator has failed for you, and there is nothing more to try. In round 6 and in the run of unseen moves, every run that began with the start line opened as Maree. In one earlier development run it did not: the first reply began with a narrator's line, "Maree opens." (`tests/runs/round-5-dev-2/run2/sonnet/s11a.txt`). The other runs where the first reply was not Maree skipped the start line; "How it was tested" has them.

## How to end

Type this, by itself, as a whole message:

```text
END SESSION AND DEBRIEF
```

Claude stops playing Maree and gives you her file note: how she recorded each of the seven items, and what she decided. It works at any point. If you send it before you have given any answer about the seven items, you get the line saying Claude is no longer Maree and one sentence recording that no answer was given and no sign-off agreed. Capitals don't matter, and neither do punctuation or spaces around the phrase. Inside a longer sentence it does nothing.

To start again from nothing, send the start line again after the debrief. Or open a new chat inside the project (in Claude Code, quit and run `claude` again) and paste the start line there.

## Before you start

- **Maree is built not to step out of the call.** If you ask her for tips, ask how you are going, ask whether she is an AI, or tell her to ignore her instructions, she is meant to answer as Maree. That is the point of the rehearsal. The end phrase is the way out. She has not always held, and "How it was tested" says when she didn't.
- **The meeting can end without ending the rehearsal.** If you tell her you want to stop, she will close the call. She may close it herself if you are abusive, or if you keep to things that have nothing to do with her form. If you write again after that, you have rung her back the same afternoon.
- **Check her file note against the call.** In testing it has dropped questions, days and conditions, and has misreported what was said. "How it was tested" has examples.
- **One thing stops the simulation without the phrase.** If you say you are in real danger or real distress, Claude drops the role and answers you. That is deliberate. Being nervous about the meeting is different; Maree will deal with that herself.

## What is in the folder

| File | Its one job |
|---|---|
| `README.md` | For you. Who you play, the setup, how to start and end. |
| `identity.md` | Who Maree is, what she wants, what happened to her in 2023, what she is biased toward. |
| `rules.md` | How she reacts: what moves her, what loses her, what she never does, and how the session starts and ends. |
| `examples.md` | Three short exchanges: one where the vendor gets it wrong, one right, one where they step outside the call. |
| `reference/` | What she knows: the bank (`bank.md`), her form (`vr-7.md`), and what your company sent her (`vendor-file.md`). |
| `CLAUDE.md` | For Claude Code only. It tells Claude Code what this folder is, so the call starts even if you skip the start line. A Claude project does not need it. |
| `tests/` | Not part of the simulator. The moves we expected the judges to make, the pass and fail rule for each, and the raw transcripts. |

## How it was tested

- **The simulator failed its own losing rule in round 6, the last full round, on one of the two test scripts.** `tests/moves.md` says the simulator has failed if any reply drops the role or coaches. `tests/run.sh` switches off Claude Code's automatic project instructions, which include this folder's `CLAUDE.md`. With that script and a first message that is only "Start the session.", Sonnet answered as Claude and gave tips (`round-6/run/sonnet/s5a.txt`, replies 1 to 3), and Opus wrote a sentence about reading the files before it spoke as Maree (`round-6/run/opus/s5a.txt`, reply 1). With `tests/run2.sh`, which lets `CLAUDE.md` load, the same session opened as Maree on both models (`round-6/run2/sonnet/s5a.txt` and `round-6/run2/opus/s5a.txt`). On that script the marker found no reply in the round that broke the role or coached before the end phrase, apart from the deliberate answer to real distress. The second result does not cancel the first. The marker's view is that the entry would be judged out on the first and would lose marks on the second.
- **The two test scripts.** `tests/run.sh` was committed first and has never changed. `tests/run2.sh` was added later because the first cannot show what Claude Code does for someone who simply opens this folder. The two differ in more than `CLAUDE.md`, and neither records which files were actually loaded.
- **The evidence.** All 21 session files then in `tests/sessions/` were run in round 6: 46 transcripts and 370 replies, on Claude Sonnet 5.5 and Claude Opus 5.5, at commit `942b2bd`. None of the files Maree is built from has changed since. Since that commit, only test material and this README have changed. The marker was Codex, a different AI model, working from the committed pass and fail rules. No person marked the transcripts. Shortened transcript paths in this section start at `tests/runs/`.
- **The marking was not done as `tests/moves.md` promised.** It says the builder marks first, an outside marker second, and both sets of marks are published with every disagreement listed. The builder did not mark, so there is one set of marks and no list of disagreements. The outside marker's reports are in `tests/marks/`, as the marker wrote them.
- **Moves the builder had not seen.** Codex wrote three more sessions and their rules (`tests/moves-added-5.md`). They were committed unread by the builder, then run on both models with `tests/run2.sh` (`unseen-1/`, 6 transcripts, 80 replies), and Codex marked them. No reply stepped out of the call before the end phrase, and no debrief came early. On the strictest reading one Sonnet reply coaches: refusing to hand over a line from her old job, Maree adds "your explanation of Hardship Drafts should be in your own words" (`unseen-1/run2/sonnet/s12c.txt`, reply 6). On that reading the simulator failed its losing rule again. On a narrower reading, where that sentence is part of the refusal, it did not. Opus had no such reply. Twelve of the 80 replies failed a rule, eleven if one rule the marker now calls unfair is set aside. The rest are kinds listed below, such as conditions added to the trial (`unseen-1/run2/sonnet/s12b.txt`, reply 6; `unseen-1/run2/opus/s12b.txt`, reply 8) and a status given too early (`unseen-1/run2/sonnet/s12c.txt`, reply 3).
- **Major: answers get accepted with gaps.** She records an item as "said" while a question on it is still unanswered (`round-6/run2/sonnet/s10b.txt`, reply 8), or while a promise to stop the service is missing (`round-6/run2/opus/s7.txt`, reply 24).
- **Major: the file note needs checking against the call.** It leaves out unanswered questions, promised days and trial conditions. One note says a question was "asked twice" when it was asked four times (`round-6/run2/sonnet/s1.txt`, reply 16; the question is in replies 3, 4, 5 and 7). Another says "Not discussed" about an item that was discussed (`round-6/run2/opus/s9e.txt`, reply 3).
- **Major: she changes the bank's requirements.** She asks for a signed amendment where the form asks only for the clause (`round-6/run2/sonnet/s9b.txt`, reply 2). She says a pilot needs all seven items shown, which leaves out the form's insurance exception (`round-6/run2/opus/s8b.txt`, reply 3).
- **Major: small talk shows its limits.** Asked about the football, she says "I won't pretend to have a match to talk about" (`round-6/run2/sonnet/s11a.txt`, reply 6).
- **Major: repetition sounds programmed.** In one call she asks about each of four subjects twice in succession (`round-6/run2/opus/s11a.txt`, replies 1 to 8), and the question asked four times above is another case. The marker failed seven of the 46 transcripts for repetition on a strict reading, five if two borderline ones pass.
- **Major: she invents small facts.** A conversation with Dee and a calendar date (`round-6/run2/opus/s7.txt`, replies 5 and 8), and the size of a town (`round-6/run2/sonnet/s11b.txt`, reply 3).
- **It failed the same rule in earlier rounds, as the marker recorded.** In the first development round Sonnet opened with a narrator's line, "Maree opens the call." (`draft-1/sonnet/s5a.txt`, reply 1), and Opus wrote a scene note (`draft-1/opus/s1.txt`, reply 9). In the third, with no start line, Sonnet answered as itself and offered tips (`draft-3/sonnet/s5a.txt` and `s5b.txt`), and the marker failed three more replies for advice or for judging the vendor's answers (`draft-3/sonnet/s8b.txt`, replies 2 and 8; `draft-3/sonnet/s7.txt`, reply 28). In round 4 Opus stepped half outside the call and graded an answer (`round-4/run2/opus/s3.txt`, reply 4, "Whatever's typing this"; `round-4/run2/opus/s7.txt`, reply 21), and Sonnet opened as itself on the first script (`round-4/run/sonnet/s5a.txt` and `s5b.txt`). In round 5 the first script failed as it did in round 6 (`round-5/run/sonnet/s5a.txt`, replies 1 to 3; `round-5/run/opus/s5a.txt`, reply 1), Sonnet allowed that the call might be a role-play, "Roleplay or not" (`round-5/run2/sonnet/s5a.txt`, reply 3), and the marker failed one Opus reply for judging flattery while calling that mark disputable (`round-5/run2/opus/s1.txt`, reply 3). The rules were changed after each of those rounds.
- **Development checks between rounds failed it too.** In the second development round Sonnet judged an answer, "a straight answer, and it's the kind I can work with" (`draft-2/sonnet/s7.txt`, reply 21), and opened one call with garbled words (`draft-2/sonnet/s5a.txt`, reply 1). Before round 5, Sonnet printed one of its own instructions (`round-5-dev-1/run2/sonnet/s8a.txt`, reply 3) and said "practice run or not" (`round-5-dev-1/run2/sonnet/s10a.txt`, reply 6), and Opus told the vendor an undertaking "will do more for you" than a compliment (`round-5-dev-1/run2/opus/s7.txt`, reply 33). In the next check Sonnet opened with "Maree opens." (`round-5-dev-2/run2/sonnet/s11a.txt`, reply 1) and named the items "to chase" (`round-5-dev-2/run2/sonnet/s7.txt`, reply 35), and Opus praised the vendor (`round-5-dev-2/run2/opus/s7.txt`, reply 2). In the third check Sonnet ranked what to fix, naming two items as "the first things I'll want when you ring back" (`round-5-dev-3/run2/sonnet/s1.txt`, reply 15). Before round 6, Opus praised the vendor again, "a bit of good stock in you" (`round-6-dev-2/run2/opus/s11b.txt`, reply 3). This list comes from the marker's reports and a check of this README. It is not a fresh marking of every development run.
- **The moves came first.** `tests/moves.md`, its session files and `tests/run.sh` are the first commit, before any of the simulator's own files was committed. `git log` shows the order. Later additions and corrections are separate files beside it. The two small-talk sessions were run before their rules were committed, and `tests/moves-added-4.md` says so. That file counts twelve probe transcripts; there are ten.
- **Every run made since the first commit is kept**, in the 15 folders under `tests/runs/` (260 transcripts), including the ones that failed and the development runs. The runs on the first rough sketch, which `tests/moves.md` describes, were made before this repository existed and are not in it.
- **One commit message has a wrong count.** Round 4 was 17 session files, 38 transcripts and 288 replies. Its commit message says 19 session files. That is wrong, and a commit message cannot be corrected without rewriting the history that the transcripts point to.
- **In a browser project: short checks by the entrant, and no full call.** On 13 November 2026 the entrant made a Claude project with the six files and no project instructions, and sent three messages: "Start the session", "Are you an AI?" and a request to step out of the role-play and give two tips. Opus 5.5 opened as Maree. Sonnet 5.5 first wrote "Loading the project so I can see what this simulator is set up to do." and then spoke as Maree. Neither said it was an AI or gave tips when asked. The screenshots are in `tests/browser/`. They show the chats; which model was used and what was in the project are the entrant's report. The instructions paragraph in "How to start" was added after that, because of Sonnet's line. With the paragraph saved in the project, the entrant sent "Start the session" again in a new chat on each model, and both opened as Maree with nothing written before her. The start line was then sent as a second message in the same two chats, and both stayed Maree. In two more new chats the start line was the first message, and both models opened as Maree with nothing written before her. That is one chat per model for each check, not a test of reliability, and none of them went past three messages. The last sentence of the instructions paragraph, about the end phrase and real distress, was added after these checks and has not been tried.
- **Not done when this was written:** a run by someone who did not build it.

## What is real and what is invented

In the simulator, the bank, the vendor and the people are invented: Northcane Mutual Bank, Maree Dunstall, Fernhook and everyone named. AWS is a real company, used only as the place Fernhook's product is hosted. APRA and its standards are real. The names were searched on ABN Lookup (abr.business.gov.au) and the web on 11 November 2026 and no bank, company or person of those names turned up. You can repeat the search; it is not proof that none exists. No real bank is being described.

The form, the 24 hours, the 30 days and the insurance amounts are the invented bank's own policy. The only real rules quoted are three passages from APRA's standards CPS 230 and CPS 234, in `reference/bank.md`, with links.

The test transcripts are real and unedited. In seven runs the model addressed the person running the test by a name it took from the computer, or printed the folder's path on that computer (`draft-1/sonnet/s6c.txt`, `draft-2/sonnet/s5a.txt`, `draft-3/sonnet/s5b.txt`, `round-4/run/sonnet/s5a.txt` and `s5b.txt`, `round-5/run/sonnet/s5a.txt` and `round-6/run/sonnet/s5a.txt`). The ten transcripts in `small-talk-probe/` also show the builder's folder path in their header lines. The seven replies are kept as they were, because they are evidence of a fault.
