-- Use this in Periscope, export to CSV, save to file named google_surveys.csv
select
  hospital_id, sms_reply_high
from
  survey_settings
where
  hospital_id in (
    select
      id
    from
      hospitals
    where
      has_sms_survey = true
      and is_test is not true
  )
  and sms_reply_high ilike '%goo.gl%'
