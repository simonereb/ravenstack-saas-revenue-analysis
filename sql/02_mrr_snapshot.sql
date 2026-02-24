-- 02_mrr_snapshot.sql
-- Snapshot KPIs for active, paying subscriptions.
-- Assumption: mrr_amount and arr_amount are stored in cents. We convert to USD for reporting.

-- 1) Data quality checks (MRR zero values)
SELECT
  COUNT(*) AS active_subscriptions,
  SUM(CASE WHEN mrr_amount = 0 THEN 1 ELSE 0 END) AS zero_mrr_subscriptions,
  CAST(SUM(CASE WHEN mrr_amount = 0 THEN 1 ELSE 0 END) AS FLOAT)/COUNT(*) AS zero_mrr_share
FROM active_subscriptions;

-- 2) Company-level KPIs (USD)
SELECT
  COUNT(DISTINCT account_id) AS active_accounts,
  COUNT(*) AS active_subscriptions,
  ROUND(SUM(mrr_amount) / 100, 2) AS total_mrr_usd,
  ROUND(SUM(arr_amount) / 100, 2) AS total_arr_usd,
  ROUND(AVG(mrr_amount) / 100, 2) AS avg_mrr_per_subscription_usd,
  ROUND(AVG(seats), 2) AS avg_seats_per_subscription
FROM active_subscriptions;

-- 3) Account-level MRR distribution (USD)
SELECT
  account_id,
  ROUND(SUM(mrr_amount) / 100, 2) AS account_mrr_usd
FROM active_subscriptions
GROUP BY account_id
ORDER BY account_mrr_usd DESC;
