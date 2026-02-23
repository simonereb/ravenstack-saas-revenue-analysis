-- 01_active_subscriptions.sql
-- Purpose:
-- Create a reliable definition of "currently active subscription" for snapshot-based revenue analysis.
--
-- Notes:
-- In this dataset, active subscriptions are expected to have end_date IS NULL.
-- We also exclude trials to focus on paying revenue.

DROP VIEW IF EXISTS active_subscriptions;

CREATE VIEW active_subscriptions AS
SELECT
  subscription_id,
  account_id,
  start_date,
  end_date,
  plan_tier,
  seats,
  mrr_amount,
  arr_amount,
  is_trial,
  upgrade_flag,
  downgrade_flag,
  churn_flag,
  billing_frequency,
  auto_renew_flag
FROM subscriptions
WHERE end_date IS NULL
  AND is_trial IS FALSE;
