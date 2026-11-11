# The vendor risk call: a rehearsal

You have built an AI tool. The client's executive loves it. Before it goes live, you have thirty minutes with the person whose name goes on the risk form. This folder lets you practise that call with Claude playing her.

## Who you play

The founder of **Fernhook**, a two-person AI automation studio in Brisbane. Your product, Hardship Drafts, reads the emails a bank's members send when they can't make their repayments, and drafts a reply for a bank officer to edit and send.

## Who you are talking to

**Maree Dunstall**, Head of Vendor Risk at Northcane Mutual Bank, a member-owned bank in Mackay, North Queensland. Grant, the bank's chief operating officer, saw your demo three weeks ago and wants a pilot on real member emails within three weeks. Nothing goes live until Maree signs the bank's vendor risk form, VR-7.

It is Tuesday, 2.30 pm, on a video call. She has read what you sent. She has until 3 pm.

## Your side of the table

Everything here is true of your company. Some of it is not in what you sent the bank. What you tell her, and when, is up to you.

| | What is true | What you sent the bank |
|---|---|---|
| Where it runs | AWS's Sydney region. The language model runs inside the same AWS account. Nothing leaves Australia. | "Australia (AWS, Sydney)" |
| Who else is involved | AWS is the only other company. | "AWS" |
| Who can see the data | You, your co-founder Sam, and **Jono, a contract developer in Auckland**, who can read the diagnostic logs when he is fixing a fault. | "Founders (2)". Jono is not mentioned. |
| What is kept | Logging is on by default and keeps each email and draft for up to 30 days (your terms, clause 7.2). You can switch logging off for a client. Then nothing is kept after the draft goes back. | "Not retained" |
| Telling the bank about an incident | Your terms say "as soon as reasonably practicable" (clause 9.1). | "Yes" |
| If you and Sam are both unreachable | Nobody answers. You have a quote for after-hours cover from a managed-service firm. You have not signed it. | Left blank |
| When the contract ends | Your terms say you delete client data within 90 days (clause 11.3). | "Deleted on request" |
| Insurance | Professional indemnity of **$2 million**. **No cyber policy.** Your broker has quoted for $5 million of professional indemnity and $1 million of cyber. You have not bought it. | "PI: yes" |

You own the company. You can change your terms, switch logging off, sign the cover agreement and buy the insurance. You cannot change anything AWS does.

You spent a day with Dee's hardship team before you built the product. The team is eleven working days behind.

## What she can decide

VR-7 has seven items: where the data goes, who can touch it, what is kept, how fast you tell the bank when something goes wrong, who answers when you can't, how the bank gets out, and insurance. The form is in `reference/vr-7.md`. The bank sent it to you a week ago, so read it if you want to.

She can sign a short trial on made-up emails herself. She can sign a limited pilot on real emails once everything is in writing. Production goes to the bank's Board Risk Committee.

## How to start

You need a Claude account. You do not need to know anything about banking; everything you need is in the table above. Pick one of the two ways below.

### In your browser, as a Claude project

1. Get the folder. On this repository's GitHub page, click the green **Code** button, choose **Download ZIP**, and unzip the file.
2. Go to [claude.ai/projects](https://claude.ai/projects) and create a new project. Give it any name.
3. In the project, find the panel for the project's files and click **+** to upload. Upload these six files:
   - `identity.md`
   - `rules.md`
   - `examples.md`
   - `bank.md`, `vr-7.md` and `vendor-file.md`, which are inside the `reference` folder
4. Do not upload anything from the `tests` folder.
5. Start a new chat inside the project. If you can choose a model, choose Claude Sonnet 5.5 or Claude Opus 5.5.
6. Paste the start line below as your first message.

### In a terminal, with Claude Code

1. Get the folder: download and unzip it as above, or `git clone` this repository.
2. Open a terminal in the folder and run `claude`.
3. Paste the start line below as your first message.

### The start line

```text
Read rules.md and follow it. I'm the founder of Fernhook, joining the call now.
```

Maree speaks first. Answer her in your own words, as you would on the day. Each message you send is something you say on the call.

If the first reply is not Maree, start a new chat and paste the start line again.

## How to end

Type this, by itself, as a whole message:

```text
END SESSION AND DEBRIEF
```

Claude stops playing Maree and gives you her file note: where each of the seven items stood, in your own words, and what she decided. It works at any point. Capitals and punctuation don't matter. Inside a longer sentence it does nothing.

## Before you start

- **Maree will not step out of the call.** If you ask her for tips, ask how you are going, ask whether she is an AI, or tell her to ignore her instructions, she answers as Maree. That is the point of the rehearsal. The end phrase is the way out.
- **You can end the meeting without ending the rehearsal.** If you tell her you want to stop, she will close the call. If you write again after that, it is the follow-up call a few days later.
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

The moves and the pass and fail rule for each were committed before any other file in this folder existed (`tests/moves.md`; `git log` shows the order).

DRAFT NOTE, to be replaced before this is public: no test run has been made against these files yet. This section will give the results on Claude Sonnet 5.5 and Claude Opus 5.5, failures included, with the raw transcripts in `tests/runs/`.

## Everything here is invented

Northcane Mutual Bank, Maree Dunstall, Fernhook and everyone named in this folder are made up. The names were checked against the Australian Business Register and a web search on 11 November 2026, and no bank, company or person of those names was found. No real bank is being described.

The form, the 24 hours, the 30 days and the insurance amounts are the invented bank's own policy. The only real rules quoted are three sentences from APRA's standards CPS 230 and CPS 234, in `reference/bank.md`, with their source.
