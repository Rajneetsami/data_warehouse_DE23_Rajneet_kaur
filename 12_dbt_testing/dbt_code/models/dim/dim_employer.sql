with src_employer as (select * from {{ ref('src_employer') }})

select {{dbt_utils.generate_surrogate_key(['id','employer_name'])}} as employer_id,
employer_name,
employer_workplace,
employer_organization_number,
workplace_street_address,
workplace_region,
workplace_postcode,
{{ capitalize_first_letter("coalesce(workplace_city, 'stad ej specificerat')") }} AS workplace_city,
workplace_country
from src_employer