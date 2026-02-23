-- Validate row counts
SELECT COUNT(*) FROM accounts;
SELECT COUNT(*) FROM subscriptions;
SELECT COUNT(*) FROM feature_usage;
SELECT COUNT(*) FROM support_tickets;
SELECT COUNT(*) FROM churn_events;

-- Validate subscription-to-account relationship
SELECT COUNT(*)
FROM accounts a
JOIN subscriptions s
ON a.account_id = s.account_id;

-- Check subscription multiplicity per account
SELECT account_id, COUNT(*) AS subscription_count
FROM subscriptions
GROUP BY account_id
ORDER BY subscription_count DESC
LIMIT 10;
