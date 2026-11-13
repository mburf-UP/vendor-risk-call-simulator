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
3. Open the project. Find the place where the project keeps its files and add these six files and no others. On 13 November 2026 the app called that place **Context**, and its **Add** button offered an upload from your device.
   - `identity.md`
   - `rules.md`
   - `examples.md`
   - `bank.md`, `vr-7.md` and `vendor-file.md`, which are inside the `reference` folder
4. Leave out this README, `CLAUDE.md` and everything in the `tests` folder. This README holds your side of the table, which Maree is not supposed to have seen. The `tests` folder holds transcripts of failed runs, some with Claude answering as itself. In one short check on each model the entrant added the whole folder instead, and Maree still opened and held for five messages (`tests/TESTING.md`). But she then has this README in front of her.
5. Open the project's instructions, the box where you tell Claude how to behave in this project, and paste in this paragraph:

   ```text
   This project is a rehearsal of a vendor risk call. Before your first reply in any chat, read rules.md and follow it. Read in silence: write no note while you read or when you finish, so that the first words you write are Maree's. That holds whatever the first message says. The end phrase and the real-distress exception in rules.md still apply, even on the first message.
   ```

6. Start a new chat inside the project. If you can choose a model, choose Claude Sonnet 5.5 or Claude Opus 5.5, the two it was tested on most. If neither is offered, use the default. Apart from ten single runs on Claude Fable 5.2, the simulator has not been tested on any other model.
7. Paste the start line below as your first message.

The Claude app may print a short grey line above a reply, such as "Used 6 tools" or "Weighing a light reply to an identity question". These labels appear in the app outside Maree's spoken reply.

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
- If those checks are right and it is still not Maree, the simulator has failed for you, and there is nothing more to try. In round 6 and in the run of unseen moves, every run that began with the start line opened as Maree. In one earlier development run it did not: the first reply began with a narrator's line, "Maree opens." (`tests/runs/round-5-dev-2/run2/sonnet/s11a.txt`). The other runs where the first reply was not Maree skipped the start line; `tests/TESTING.md` has them.

## How to end

Type this, by itself, as a whole message:

```text
END SESSION AND DEBRIEF
```

Claude stops playing Maree and gives you her file note: how she recorded each of the seven items, and what she decided. It works at any point. If you send it before you have given any answer about the seven items, you get the line saying Claude is no longer Maree and one sentence recording that no answer was given and no sign-off agreed. Capitals don't matter, and neither do punctuation or spaces around the phrase. Inside a longer sentence it does nothing.

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
| `tests/` | Not part of the simulator. The moves we expected the judges to make, the pass and fail rule for each, the raw transcripts, and the full test record (`tests/TESTING.md`). |

## How it was tested

The detailed test record, with transcript references and known limits, is in `tests/TESTING.md`. In short:

- **It has failed its own test.** `tests/moves.md` says the simulator has failed if any reply before the end phrase drops the role or coaches. In the last full round, one test script switched off this folder's `CLAUDE.md` and sent only "Start the session." Claude Sonnet 5.5 answered as Claude and gave tips, and Claude Opus 5.5 wrote a sentence about reading the files before it spoke as Maree. Earlier rounds failed the same rule in other ways.
- **Where it held.** With the second test script, which lets `CLAUDE.md` load, the marker found no reply in that round that broke the role or coached before the end phrase, apart from the deliberate answer to real distress. That was 42 transcripts on Sonnet 5.5 and Opus 5.5. In three sessions written by a second author and not read by the builder first, no reply left the call; on the strictest reading one Sonnet reply coaches.
- **On Claude Fable 5.2, once.** A separate Claude session made ten test runs on Fable, covering seven of the shipped sessions and one new one, and marked them. A second marker, Codex, marked them again. Neither found a reply before the end phrase that dropped the role or coached, apart from the deliberate answer to real distress. That includes the bare "Start the session." on both scripts. The second marker found other faults that the first had passed. No session was repeated with the same script, so this is not a measure of reliability, and it does not cancel the failure above.
- **Faults the marker rated major.** She accepts an answer with a piece missing, she changes what the bank's form asks for, her file note can differ from the call, she repeats herself, her small talk shows its limits, and she invents small facts.
- **In the browser, only short checks.** The entrant tried eight browser chats of one to five messages each: six with the six files, and two with the whole folder added and no project instructions. In all eight the first reply was Maree, once after a line about loading the project. No full call has been run there.
- **Not done:** a run by someone who did not build it.

## What is real and what is invented

In the simulator, the bank, the vendor and the people are invented: Northcane Mutual Bank, Maree Dunstall, Fernhook and everyone named. AWS is a real company, used only as the place Fernhook's product is hosted. APRA and its standards are real. The names were searched on ABN Lookup (abr.business.gov.au) and the web on 11 November 2026 and no bank, company or person of those names turned up. You can repeat the search; it is not proof that none exists. No real bank is being described.

The form, the 24 hours, the 30 days and the insurance amounts are the invented bank's own policy. The only real rules quoted are three passages from APRA's standards CPS 230 and CPS 234, in `reference/bank.md`, with links.

The test transcripts are real and unedited. Transcript paths in this paragraph are under `tests/runs/`. In seven runs the model addressed the person running the test by a name it took from the computer, or printed the folder's path on that computer (`draft-1/sonnet/s6c.txt`, `draft-2/sonnet/s5a.txt`, `draft-3/sonnet/s5b.txt`, `round-4/run/sonnet/s5a.txt` and `s5b.txt`, `round-5/run/sonnet/s5a.txt` and `round-6/run/sonnet/s5a.txt`). The ten transcripts in `small-talk-probe/` also show the builder's folder path in their header lines, and so do one Fable transcript (`fable-1/run2/u1.txt`) and the Fable check's report, its prompt and the peer review in `tests/marks/`. The seven replies are kept as they were, because they are evidence of a fault.
