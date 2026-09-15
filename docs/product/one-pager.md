# Rumbo · product one-pager

## Problem
Searching for a technical job means reviewing dozens of postings a day across several portals and hand-tailoring every application.

## Audience
A person doing a technical job search (v1: the maintainer) and anyone evaluating the project (public demo).

## What it does
- Collects job offers from forwarded email alerts, permitted APIs, pasted links and webhooks.
- Scores the fit and explains why; only notifies about the best matches.
- Drafts an application on request, and waits for approval.

## What it never does
- Send anything on the user's behalf.
- Scrape data from portals without permission.

## Non-functional requirements
| Requirement | Target |
|---|---|
| Notification after an alert arrives | < 2 min |
| Latency to first chat token | p95 < 2 s |
| API availability | 99.5% monthly |
| RPO / RTO | 1 h / 4 h |
| Data residency | EU (eu-central-1) |
| Monthly cost | < €20 with hard caps |

## Success metrics
- precision@10 of scoring ≥ 0.7 on the evaluation set.
- ≥ 80% of drafts approved with minor changes.
- Cost per scored offer and per drafted application, measured.
