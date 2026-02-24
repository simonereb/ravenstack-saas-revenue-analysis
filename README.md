Dataset source: RavenStack Synthetic SaaS Dataset – River @ Rivalytics
Download link: https://www.kaggle.com/datasets/rivalytics/saas-subscription-and-churn-analytics-dataset

**Overview**

This project analyzes the revenue dynamics of a synthetic SaaS company, RavenStack, with the objective of understanding growth drivers, expansion behavior, and revenue risk before public launch.

The work simulates a real-world BI assignment for a SaaS leadership team seeking clarity on revenue structure and strategic growth levers. All analysis was conducted in MySQL, with final insights presented through Power BI dashboards.

**Business Context**

Subscription-based businesses rely not only on acquiring new customers but on expanding existing accounts and minimizing churn. Revenue quality, billing structure, and customer segmentation all influence long-term sustainability.

In this context, the goal of the analysis is to model how revenue is generated, how it evolves over time, and where operational or strategic interventions could improve performance.

**Dataset & Data Model**

The dataset represents a relational SaaS environment composed of five interconnected tables: accounts, subscriptions, feature usage logs, support tickets, and churn events.

The structure enables full lifecycle modeling of customers, from signup to subscription changes and potential churn. Revenue variables such as mrr_amount, arr_amount, billing frequency, upgrade and downgrade flags, and churn indicators allow detailed revenue intelligence modeling.

The relational design supports multi-table joins and time-based reconstruction of subscription activity.



The analysis is structured around four main dimensions.

**1. Revenue Structure**

Revenue was modeled through MRR and ARR aggregation, monthly trend reconstruction, and billing frequency evaluation. This provides a view of revenue stability and concentration.

**2. Revenue Segmentation**

Revenue performance was analyzed across industries, acquisition channels, geographies, and plan tiers to identify high-value segments and concentration risk.

**3. Expansion & Contraction**

Upgrade and downgrade dynamics were evaluated to quantify expansion revenue contribution and to assess how subscription changes influence overall growth.

**4. Revenue at Risk**

Churned MRR was quantified over time and segmented to identify where revenue leakage is most concentrated and which customer profiles represent higher exposure.

**Technical Implementation**

All modeling was performed using SQL in MySQL, leveraging multi-table joins, conditional aggregation, time-based grouping, and revenue segmentation logic. Queries are organized and documented in the /sql directory.

The final outputs were translated into an executive-style Power BI dashboard designed to communicate insights in a decision-oriented format rather than a purely analytical one.

**Project Impact**

This project demonstrates the ability to transform relational subscription data into structured revenue intelligence. It combines SQL modeling, SaaS-specific reasoning, and visualization to support strategic decision-making in a growth-stage software company.
