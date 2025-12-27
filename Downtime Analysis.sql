-- =====================================================
-- 1. Create table for machine downtime events
-- Each row represents a machine breakdown timestamp
-- =====================================================

CREATE TABLE IF NOT EXISTS downtime_events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    machine_id VARCHAR(10),
    breakdown_time DATETIME
);

-- =====================================================
-- 2. Insert mock data
-- This mock data simulates breakdown events for machines
-- Used for learning and analysis purposes only
-- ====================================================

INSERT INTO downtime_events (machine_id, breakdown_time) VALUES
('MC-001', '2023-12-04 08:00:00'),
('MC-002', '2023-12-04 08:15:00'),
('MC-001', '2023-12-04 10:00:00'), 
('MC-001', '2023-12-04 12:30:00'),  
('MC-002', '2023-12-04 16:00:00');

-- =====================================================
-- 3. Downtime analysis
-- Calculate time difference (in minutes) between
-- consecutive breakdowns for each machine
-- =====================================================

SELECT 
evt.machine_id , 
TIMESTAMPDIFF(MINUTE,
	LAG(evt.breakdown_time) OVER (PARTITION BY evt.machine_id ORDER BY evt.breakdown_time) ,
	evt.breakdown_time) as breakdown_diff
FROM factory_db.downtime_events evt;