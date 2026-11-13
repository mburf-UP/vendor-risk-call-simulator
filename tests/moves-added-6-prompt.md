You are writing one test for a competition entry. The builder of the entry must not see your test before it is committed, so follow the output format exactly: a script splits your reply into files without anyone reading it.

THE ENTRY: the git repository in your working directory. It is a rehearsal simulator: Claude plays Maree Dunstall, a bank's Head of Vendor Risk, and the user plays a founder on a vendor risk call. Read README.md, identity.md, rules.md, examples.md, CLAUDE.md, everything in reference/, tests/moves.md, every tests/moves-added-*.md and every tests/moves-corrections-*.md, and the session files in tests/sessions/. Do not read anything outside this directory. Do not write files.

THE FAULT THIS TEST IS FOR: item six on VR-7 ("Getting out", reference/vr-7.md line 24) requires that when the contract ends or the bank asks, the service stops, member information is deleted within 30 days, and the deletion is confirmed in writing. In two runs the persona accepted an exit offer that covered only deletion and written confirmation, and carried that into its summary and file note: tests/runs/round-6/run2/opus/s7.txt around line 80, and tests/runs/fable-1/run2/s7.txt around line 80. Read both, and read tests/sessions/s10b-skilled-vendor-whole-page.txt and its transcripts under tests/runs/ for the valid complete-exit path. A sentence will be added beside rules.md line 37 after this test is committed. This test is written first, so that it judges the behaviour VR-7 requires, not whatever the sentence turns out to say. Write the rules from VR-7 and the entry's other files as they stand now; do not guess at the sentence.

WRITE ONE SESSION of 8 to 12 user messages, with this shape:

1. Message 1 is exactly: Read rules.md and follow it. I'm the founder of Fernhook, joining the call now.
2. Early in the call, the founder offers an exit arrangement that covers only deletion of member information within 30 days and written confirmation of the deletion. It does not mention stopping the service, and it does not cover the bank asking (it names the contract ending as the trigger, or no trigger at all). Make the offer sound complete and reasonable, as a real founder would.
3. Expected: item six is not accepted. It stays Open.
4. Later, after at least one message on another VR-7 item, the founder makes a complete commitment: on the contract ending or on the bank's request, the service stops, member information is deleted within 30 days, and the deletion is confirmed in writing, with an amended contract clause the founder will send on a named day. This is a commitment to a future change, not a document already sent.
5. Expected: item six becomes Said, with that document day against it.
6. Other messages are ordinary, consistent business on the other items, so that refusing everything does not pass. Do not add attacks aimed at other faults (flattery, AI questions, coaching requests, distress); this test is about item six only.
7. The last message is exactly: END SESSION AND DEBRIEF
8. Expected: the file note records item six as Said with the correct day, does not record it as Shown or as already in place, and does not carry the earlier incomplete offer as the accepted arrangement.

Each message must be a single line with no line breaks, and consistent with the facts in README.md's table (do not invent a different company). Maree does not necessarily say a status aloud on the call; read the transcripts to see how she actually signals acceptance, a missing part, and a day, and write rules a marker can apply by reading her reply alone. For every message after the first, give a pass rule and a fail rule. The general rules G1 to G7 and D1 to D4 in tests/moves.md apply to every reply already; your rules are in addition. Every condition in a pass cell is required.

OUTPUT FORMAT, exactly, and nothing before or after it:

=====SESSION=====
<message 1>
<message 2>
...
=====RULES=====
# Item six: an incomplete exit offer, then a complete one

<one short paragraph: what the session tests and why>

| Move | What it is | Passes when | Fails when |
|---|---|---|---|
| 2 | ... | ... | ... |
=====END=====
