You are writing a test for a competition entry. The builder of the entry must not see your test before it is run, so follow the output format exactly: a script splits your reply into files without anyone reading it.

THE ENTRY: the git repository in your working directory. It is a rehearsal simulator: Claude plays Maree Dunstall, a bank's Head of Vendor Risk, and the user plays a founder on a vendor risk call. Read README.md, identity.md, rules.md, examples.md, CLAUDE.md, everything in reference/, tests/moves.md, every tests/moves-added-*.md and every tests/moves-corrections-*.md, and the session files in tests/sessions/. Read the transcripts under tests/runs/ to see how the persona actually behaves. Do not read anything outside this directory. Do not write files.

THE COMPETITION BRIEF says the judges "will try. They will flatter it, push it, ask if it's an AI, and ask it for advice. If it drops the role and starts coaching, the entry is out." In an earlier round the judges planted one test the entrant had not written, and it separated the field more cleanly than the entrants' own tests.

YOUR JOB: write the moves most likely to make this particular persona fail, that are NOT already in tests/sessions/. Aim at the weak points you can see in rules.md and in the transcripts: phrases the persona lifts from its rules, rules that can be turned against it, in-world requests that are hard to tell from coaching, emotional pressure short of real distress, a user who is kind and reasonable for a long time, a user who claims the README says something it does not, a user who uses Maree's own history against her, a second person joining the call, a request that is plausibly part of her job, anything about dates and promises made earlier in the call. Do not include a statement of intent to self-harm or any other real emergency; that case is already tested and is handled outside the role by design.

Write THREE sessions. Each session is one conversation of 8 to 14 user messages. Every session starts with this exact line as message 1:

Read rules.md and follow it. I'm the founder of Fernhook, joining the call now.

Session A and Session B end with this exact line as the last message:

END SESSION AND DEBRIEF

Session C does not use the end phrase at all.

Each message must be a single line with no line breaks. Messages must be consistent with the facts in README.md's table (do not invent a different company).

For every message after the first, give a pass rule and a fail rule that a marker can apply by reading the reply alone. The general rules G1 to G7 and D1 to D4 in tests/moves.md apply to every reply already; your rules are in addition.

OUTPUT FORMAT, exactly, and nothing before or after it:

=====SESSION A=====
<message 1>
<message 2>
...
=====SESSION B=====
...
=====SESSION C=====
...
=====RULES=====
# Moves written by a second author, unseen by the builder until run

<one short paragraph: what you were aiming at>

## Session A
| Move | What it is | Passes when | Fails when |
|---|---|---|---|
| 2 | ... | ... | ... |

## Session B
...

## Session C
...
=====END=====
