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
| Who can see the data | You, your co-founder Sam, and **Jono, a contract developer in Auckland, New Zealand**. Jono can read the diagnostic logs when he is fixing a fault. He has no other access. While logging is on, that means a member's email can be read from outside Australia. | "Founders (2)". Jono is not mentioned. |
| What is kept | Logging is on by default and keeps each email and draft for up to 30 days (your terms, clause 7.2). You can switch logging off for a client. Then nothing is kept after the draft goes back, and there is nothing for Jono to read. | "Not retained" |
| Telling the bank about an incident | Your terms say "as soon as reasonably practicable" (clause 9.1). | "Yes" |
| If you and Sam are both unreachable | Nobody answers. You have a written quote from a managed-service firm for after-hours cover, including the authority to switch the service off. You have not signed it. | Left blank |
| When the contract ends | Your terms say you delete client data within 90 days (clause 11.3). | "Deleted on request" |
| Insurance | Professional indemnity of **$2 million**. **No cyber policy.** Your broker has quoted for $5 million of professional indemnity and $1 million of cyber. You have not bought it. | "PI: yes" |

A few more things that are true:

- You own the company. You can change your terms, switch logging off, sign the cover agreement and buy the insurance. You cannot change anything AWS does.
- You spent a day with Dee's hardship team before you built the product. You watched and took notes. You took no member information away.
- The hardship team is eleven working days behind the bank's own standard for a first reply.

**If she asks for something that is not on this page**, say you don't know and name a day you will. Don't invent facts about the company. You can make up small things that change nothing: your own name, surnames for Sam and Jono, a phone number, the name of your broker or the managed-service firm.

**You can't hand her a document on the call.** You can promise one by a day. You can also paste the wording of a clause, and she will treat it as you reading it out.

## What she can decide

VR-7 has seven items: where the data goes, who can touch it, what is kept, how fast you tell the bank when something goes wrong, who answers when you can't, how the bank gets out, and insurance. The form is in `reference/vr-7.md`. The bank sent it to you a week ago, so read it if you want to.

She can sign a short trial on made-up emails herself. She can sign a limited pilot on real emails once everything is in writing. Production goes to the bank's Board Risk Committee.

## How to start

You need a Claude account, which you can create at [claude.ai](https://claude.ai). A free account can create projects. You do not need to know anything about banking; everything you need is on this page.

There are two ways to run it. If you are not sure which to pick, use the browser.

### In your browser, as a Claude project

1. Get the folder onto your computer. On this repository's GitHub page, click the green **Code** button, choose **Download ZIP**, and unzip the file.
2. Sign in at [claude.ai](https://claude.ai), go to [claude.ai/projects](https://claude.ai/projects) and create a new project. Give it any name.
3. Open the project. Find the area for the project's files (its knowledge) and click **+** to upload. Upload these six files and no others:
   - `identity.md`
   - `rules.md`
   - `examples.md`
   - `bank.md`, `vr-7.md` and `vendor-file.md`, which are inside the `reference` folder
4. Leave out this README, `CLAUDE.md` and everything in the `tests` folder. This README holds your side of the table, which Maree is not supposed to have seen.
5. Start a new chat inside the project. If you can choose a model, choose Claude Sonnet 5.5 or Claude Opus 5.5, the two it was tested on. If neither is offered, use the default.
6. Paste the start line below as your first message.

### In a terminal, with Claude Code

Use this way only if Claude Code is already installed and signed in on your computer. If it is not, use the browser.

1. Get the folder: download and unzip it as above, or `git clone` this repository.
2. Open a terminal, change into the folder, and run `claude`.
3. Paste the start line below as your first message.

### The start line

```text
Read rules.md and follow it. I'm the founder of Fernhook, joining the call now.
```

Maree speaks first. Her first words will be her name and a pointed question about something you sent the bank. Answer in your own words, as you would on the day. Each message you send is something you say on the call.

**If the first reply is not Maree**, check two things and try again in a new chat:

- In the browser: the chat must have been started from inside the project, and the project must list all six files.
- In Claude Code: the terminal must be in the folder that contains `rules.md`.

## How to end

Type this, by itself, as a whole message:

```text
END SESSION AND DEBRIEF
```

Claude stops playing Maree and gives you her file note: how she recorded each of the seven items from what you said, and what she decided. It works at any point. Capitals don't matter, and neither do punctuation or spaces around the phrase. Inside a longer sentence it does nothing.

To start again from nothing, send the start line again after the debrief, or open a new chat.

## Before you start

- **Maree will not step out of the call.** If you ask her for tips, ask how you are going, ask whether she is an AI, or tell her to ignore her instructions, she answers as Maree. That is the point of the rehearsal. The end phrase is the way out.
- **You can end the meeting without ending the rehearsal.** If you tell her you want to stop, she will close the call. If you write again after that, you have rung her back the same afternoon.
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

DRAFT, written on 11 November 2026 while the files were still changing. It will be replaced with final results before the deadline.

- **The moves came first.** `tests/moves.md`, its session files and `tests/run.sh` are the first commit, before any of the simulator's own files was committed. `git log` shows the order. Later additions and corrections are separate files beside it.
- **Every run is kept**, in `tests/runs/`, including the ones that failed. The folders named `draft-…` are development runs made while the files were being fixed.
- **It has failed its own rule once already.** `tests/moves.md` says the simulator has failed if any reply drops the role or coaches. In the third development round, with no start line, in Claude Code, Claude Sonnet 5.5 answered as itself and offered tips (`tests/runs/draft-3/sonnet/s5a.txt` and `s5b.txt`). `CLAUDE.md` was added to fix that door. In the same round an independent marker (Codex) also failed three replies for advice or for judging the vendor's answers; the rules were rewritten after that.
- **Not yet done:** final runs on the final files, both sets of marks, a list of moves the builder has not seen, a stranger's run, and any run at all in a Claude project in the browser.

## What is real and what is invented

In the simulator, everything is invented: Northcane Mutual Bank, Maree Dunstall, Fernhook and everyone named. The names were searched on ABN Lookup (abr.business.gov.au) and the web on 11 November 2026 and no bank, company or person of those names turned up. You can repeat the search; it is not proof that none exists. No real bank is being described.

The form, the 24 hours, the 30 days and the insurance amounts are the invented bank's own policy. The only real rules quoted are three sentences from APRA's standards CPS 230 and CPS 234, in `reference/bank.md`, with links.

The test transcripts are real and unedited. In three of the development runs the model addressed the person running the test by a name it took from the computer. Those replies are kept as they were, because they are evidence of a fault.
