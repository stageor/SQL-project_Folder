WITH da_jobs AS (
    SELECT job_id
    FROM job_postings_fact
    WHERE job_title_short = 'Data Analyst'
),
job_skills AS (
    SELECT DISTINCT
        dj.job_id,
        sd.skills
    FROM da_jobs dj
    JOIN skills_job_dim sjd
        ON dj.job_id = sjd.job_id
    JOIN skills_dim sd
        ON sjd.skill_id = sd.skill_id
)

SELECT
    skills AS skill,
    COUNT(*) AS demand_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM da_jobs),
        2
    ) AS demand_percentage
FROM job_skills
GROUP BY skills
ORDER BY demand_count DESC;
