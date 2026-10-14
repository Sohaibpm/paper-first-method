# RAG that doesn't guess · six checks before a client sees it

1. **Source of truth.** Name the one document that wins when two disagree, and who owns it. If you can't, fix the data before the model.
2. **Evidence, not links.** Every answer quotes the passage it used. If the system can only return "relevant documents", it's search.
3. **A score on every answer.** High: send. Medium: flag. Low: escalate to a named human. Set the thresholds with the client, not alone.
4. **A refusal path.** "I can't answer that from the documents I have" is a feature. Log every refusal; they're your next data fix.
5. **Their data by week 3.** Messy, duplicated, outdated. Watch the first twenty real questions with the person who asks them every day.
6. **A reviewer step.** A second pass checks the answer against the evidence before anything leaves. In regulated work this isn't optional.

**Build first:** checks 1 and 3. A clean source and a gate make a modest model look brilliant. The reverse is never true.

---
The Paper-First Method by Sohaib Waheed · paperfirstmethod.com · free to use with credit (CC BY 4.0)
