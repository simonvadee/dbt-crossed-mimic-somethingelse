SELECT "dbt-somethingelse_dbt".heartrate.*, "dbt-mimic_dbt".patients.dod
FROM
    "dbt-somethingelse_dbt".heartrate
LEFT JOIN
    "dbt-mimic_dbt".patients ON "dbt-mimic_dbt".patients.id = "dbt-somethingelse_dbt".heartrate.subject_id
