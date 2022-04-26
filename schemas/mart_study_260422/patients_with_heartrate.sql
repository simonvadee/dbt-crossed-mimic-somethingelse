SELECT heartrate.*, patients.dod -- dbt-ref(patients, heartrate)
FROM
    heartrate -- dbt-ref(heartrate)
LEFT JOIN
    patients ON patients.id = heartrate.subject_id -- dbt-ref(patients, heartrate)
