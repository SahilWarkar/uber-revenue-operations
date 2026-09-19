-- ============================================
-- PROJECT 2: UBER RIDE REVENUE & OPERATIONS
-- SQL ANALYSIS
-- Tools: PostgreSQL
-- ============================================


-- 1. OVERALL RIDE PERFORMANCE
-- Total rides, completed rides, cancellations
-- and completion rate

SELECT
    COUNT(*) AS total_rides,

    COUNT(*) FILTER (
        WHERE status = 'Completed'
    ) AS completed_rides,

    COUNT(*) FILTER (
        WHERE status = 'Cancelled by rider'
    ) AS rider_cancellations,

    COUNT(*) FILTER (
        WHERE status = 'Cancelled by driver'
    ) AS driver_cancellations,

    COUNT(*) FILTER (
        WHERE status IN (
            'Cancelled by rider',
            'Cancelled by driver'
        )
    ) AS total_cancellations,

    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE status = 'Completed'
        ) / COUNT(*),
        2
    ) AS completion_rate

FROM uber_rides;


-- ============================================
-- 2. CANCELLATION ANALYSIS BY CITY
-- ============================================

SELECT
    city,

    COUNT(*) AS total_rides,

    COUNT(*) FILTER (
        WHERE status = 'Cancelled by Rider'
    ) AS rider_cancellations,

    COUNT(*) FILTER (
        WHERE status = 'Cancelled by Driver'
    ) AS driver_cancellations,

    COUNT(*) FILTER (
        WHERE status IN (
            'Cancelled by Rider',
            'Cancelled by Driver'
        )
    ) AS total_cancellations,

    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE status IN (
                'Cancelled by Rider',
                'Cancelled by Driver'
            )
        ) / COUNT(*),
        2
    ) AS cancellation_rate

FROM uber_rides

GROUP BY city

ORDER BY cancellation_rate DESC;


-- ============================================
-- 3. RIDE TYPE PERFORMANCE
-- ============================================

SELECT
    ride_type,

    COUNT(*) AS total_rides,

    COUNT(*) FILTER (
        WHERE status = 'Completed'
    ) AS completed_rides,

    ROUND(
        AVG(total_fare) FILTER (
            WHERE status = 'Completed'
        ),
        2
    ) AS avg_fare,

    ROUND(
        SUM(total_fare) FILTER (
            WHERE status = 'Completed'
        ),
        2
    ) AS total_revenue

FROM uber_rides

GROUP BY ride_type

ORDER BY total_revenue DESC;


-- ============================================
-- 4. CITY RIDE VOLUME
-- ============================================

SELECT
    city,

    COUNT(*) AS total_rides,

    COUNT(*) FILTER (
        WHERE status = 'Completed'
    ) AS completed_rides,

    ROUND(
        AVG(total_fare) FILTER (
            WHERE status = 'Completed'
        ),
        2
    ) AS avg_fare,

    ROUND(
        SUM(total_fare) FILTER (
            WHERE status = 'Completed'
        ),
        2
    ) AS total_revenue

FROM uber_rides

GROUP BY city

ORDER BY total_rides DESC;


-- ============================================
-- 5. PEAK VS NON-PEAK ANALYSIS
-- ============================================

SELECT
    CASE
        WHEN EXTRACT(HOUR FROM request_time) BETWEEN 7 AND 9
          OR EXTRACT(HOUR FROM request_time) BETWEEN 17 AND 19
        THEN 'Peak'
        ELSE 'Non-Peak'
    END AS demand_period,

    COUNT(*) AS total_rides,

    COUNT(*) FILTER (
        WHERE status = 'Completed'
    ) AS completed_rides,

    COUNT(*) FILTER (
        WHERE status IN (
            'Cancelled by Rider',
            'Cancelled by Driver'
        )
    ) AS total_cancellations,

    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE status = 'Completed'
        ) / COUNT(*),
        2
    ) AS completion_rate,

    ROUND(
        AVG(total_fare) FILTER (
            WHERE status = 'Completed'
        ),
        2
    ) AS avg_fare

FROM uber_rides

GROUP BY demand_period

ORDER BY demand_period;


-- ============================================
-- 6. CANCELLATION ANALYSIS BY RIDE TYPE
-- ============================================

SELECT
    ride_type,

    COUNT(*) AS total_rides,

    COUNT(*) FILTER (
        WHERE status = 'Cancelled by Rider'
    ) AS rider_cancellations,

    COUNT(*) FILTER (
        WHERE status = 'Cancelled by Driver'
    ) AS driver_cancellations,

    COUNT(*) FILTER (
        WHERE status IN (
            'Cancelled by Rider',
            'Cancelled by Driver'
        )
    ) AS total_cancellations,

    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE status IN (
                'Cancelled by Rider',
                'Cancelled by Driver'
            )
        ) / COUNT(*),
        2
    ) AS cancellation_rate

FROM uber_rides

GROUP BY ride_type

ORDER BY cancellation_rate DESC;


-- ============================================
-- 7. REVENUE CONTRIBUTION BY RIDE TYPE
-- ============================================

SELECT
    ride_type,

    COUNT(*) FILTER (
        WHERE status = 'Completed'
    ) AS completed_rides,

    ROUND(
        SUM(total_fare) FILTER (
            WHERE status = 'Completed'
        ),
        2
    ) AS total_revenue,

    ROUND(
        100.0 *
        SUM(total_fare) FILTER (
            WHERE status = 'Completed'
        )
        /
        SUM(total_fare) FILTER (
            WHERE status = 'Completed'
        ) OVER (),
        2
    ) AS revenue_share_percent

FROM uber_rides

GROUP BY ride_type

ORDER BY total_revenue DESC;