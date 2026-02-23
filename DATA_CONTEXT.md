RavenStack is a B2B SaaS company operating on a subscription-based revenue model.

Each customer is represented as an account. Revenue is generated through subscriptions, which may change over time due to upgrades, downgrades, billing frequency changes, or churn events.

The dataset captures the full subscription lifecycle, including:

Account acquisition source

Plan tier and seat count

Monthly recurring revenue (MRR)

Annual recurring revenue (ARR)

Upgrade and downgrade events

Churn events and refund amounts

This structure enables modeling of revenue dynamics beyond simple aggregation. The key analytical challenge is to correctly reconstruct active revenue while accounting for subscription history.

The business model can be summarized as:

New Revenue

Expansion Revenue
– Contraction Revenue
– Churned Revenue
= Net Revenue Movement
