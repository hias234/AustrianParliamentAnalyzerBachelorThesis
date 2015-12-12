select politician_id, sum(age(coalesce(valid_until, current_date), valid_from)) from mandate
where mandate_type = 'NationalCouncilMember'
group by politician_id
order by sum(age(coalesce(valid_until, current_date), valid_from)) desc

