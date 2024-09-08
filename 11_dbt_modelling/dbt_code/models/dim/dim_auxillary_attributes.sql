WITH src_auxillary_attributes AS (
    SELECT * 
    FROM {{ ref('src_auxillary_attributes') }}
)

SELECT 
    {{ dbt_utils.generate_surrogate_key(['id', 'experience_required', 'driving_license_required']) }} AS auxillary_attribute_id,
    experience_required,
    driving_license_required,
    access_to_own_car
FROM src_auxillary_attributes;
