WITH base_data AS (
    SELECT
        j.job_id,
        j.salary_year_avg,
        s.skill_id,
        s.skills
    FROM job_postings_fact j
    JOIN skills_job_dim sj
        ON j.job_id = sj.job_id
    JOIN skills_dim s
        ON sj.skill_id = s.skill_id
    WHERE
        j.job_title_short = 'Data Analyst'
        AND j.job_work_from_home = TRUE
),

skills_aggregated AS (
    SELECT
        skill_id,
        skills,
        COUNT(job_id) AS demand_count,
        ROUND(AVG(salary_year_avg), 0) AS avg_salary
    FROM base_data
    WHERE salary_year_avg IS NOT NULL
    GROUP BY skill_id, skills
)

SELECT
    skills,
    demand_count,
    avg_salary
FROM skills_aggregated
ORDER BY demand_count DESC;
