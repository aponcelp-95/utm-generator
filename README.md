# 🔗 Training Hub — UTM Generator

A zero-dependency, single-file web app that builds standardized UTM-tagged links for
[DoorLoop Training Hub](https://traininghub.doorloop.com), following the internal
**[UTM Tagging Convention](https://www.notion.so/doorloop/Training-Hub-UTM-Tagging-Convention-34beb00b7a0b81278cddde9529158b78)**.

The team picks a few inputs from dropdowns and gets a correctly-formatted link with all 5 UTMs — every value lowercased, no spaces.

## The convention

Every Training Hub link carries all 5 UTMs:

| Tag | Meaning | Allowed values |
|---|---|---|
| `utm_source` | Platform the message went out on | `vitally`, `intercom`, `gmail` |
| `utm_medium` | The channel | `email`, `in-app`, `chat` |
| `utm_campaign` | Name of the initiative | `new-user-onboarding`, `reports-adoption`, `renewal-q2`, `churn-save`, `qbr-followup`, `ad-hoc` |
| `utm_content` | `type--team` | e.g. `playbook--cs` |
| `utm_term` | Training Hub topic | `reports`, `bank-reconciliation`, `owner-portal`, `tenant-portal`, `leases`, `general` |

**`utm_content` = `type--team`** (joined with two dashes):

- **type** — `playbook` (Vitally playbook), `series` (Intercom series), `campaign` (one-time blast), `manual` (typed by hand)
- **team** — `support`, `cs`, `onboarding`

### Rules
- Always include all 5 tags. Use `ad-hoc` or `general` as fallbacks instead of dropping a field.
- If you typed the message yourself, the type is `manual`.
- New campaign name or topic? Add it to the Notion doc **before** using it (the app has a "Custom…" field for these).
- All values: lowercase, English, no spaces (dashes instead). The app enforces this automatically.

### Example
```
https://traininghub.doorloop.com/reports?utm_source=vitally&utm_medium=email&utm_campaign=new-user-onboarding&utm_content=playbook--cs&utm_term=reports
```

## Usage

It's a single `index.html` — open it in any browser, or use the hosted version (GitHub Pages).

No build step, no dependencies.

## Development

Just edit `index.html`. To preview locally:

```bash
python3 -m http.server 8000
# open http://localhost:8000
```
