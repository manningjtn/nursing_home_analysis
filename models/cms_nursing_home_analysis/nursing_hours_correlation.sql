
select 'NA_STAFFING' as pair_name,
corr(REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY, STAFFING_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and STAFFING_RATING is not null

union all

select 'NA_HEALTH_INSPECTION_RATING' as pair_name,
corr(REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY, HEALTH_INSPECTION_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and STAFFING_RATING is not null

union all

select 'NA_SHORT_QM' as pair_name,
corr(REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY, SHORT_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and SHORT_STAY_QM_RATING is not null

union all

select 'NA_LONG_QM' as pair_name,
corr(REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY, LONG_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and LONG_STAY_QM_RATING is not null

union all

select 'NA_PATIENT_REPORTED_QM_RATING' as pair_name,
corr(REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY, QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and QM_RATING is not null

union all   

select 'NA_OVERALL_RATING' as pair_name,
corr(REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY, OVERALL_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_NURSE_AIDE_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and OVERALL_RATING is not null

union all

select 'LPN_STAFFING' as pair_name,
corr(REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, STAFFING_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and STAFFING_RATING is not null

union all

select 'LPN_HEALTH_INSPECTION' as pair_name,
corr(REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, HEALTH_INSPECTION_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and HEALTH_INSPECTION_RATING is not null

union all

select 'LPN_SHORT_QM' as pair_name,
corr(REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, SHORT_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and SHORT_STAY_QM_RATING is not null

union all

select 'LPN_LONG_QM' as pair_name,
corr(REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, LONG_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and LONG_STAY_QM_RATING is not null

union all

select 'LPN_PATIENT_REPORTED_QM_RATING' as pair_name,
corr(REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and QM_RATING is not null

union all   

select 'LPN_OVERALL_RATING' as pair_name,
corr(REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, OVERALL_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LPN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and OVERALL_RATING is not null

union all

select 'RN_STAFFING' as pair_name,
corr(REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, STAFFING_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and STAFFING_RATING is not null

union all

select 'RN_HEALTH_INSPECTION_RATING' as pair_name,
corr(REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, HEALTH_INSPECTION_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and HEALTH_INSPECTION_RATING is not null

union all

select 'RN_SHORT_QM' as pair_name,
corr(REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, SHORT_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and SHORT_STAY_QM_RATING is not null

union all

select 'RN_LONG_QM' as pair_name,
corr(REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, LONG_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and LONG_STAY_QM_RATING is not null

union all

select 'RN_PATIENT_REPORTED_QM_RATING' as pair_name,
corr(REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and QM_RATING is not null

union all   

select 'RN_OVERALL_RATING' as pair_name,
corr(REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY, OVERALL_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_RN_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and OVERALL_RATING is not null

union all

select 'LICENSED_STAFFING' as pair_name,
corr(REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY, STAFFING_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and STAFFING_RATING is not null

union all

select 'LICENSED_TO_HEALTH_INSPECTION_RATING' as pair_name,
corr(REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY, HEALTH_INSPECTION_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and HEALTH_INSPECTION_RATING is not null

union all

select 'LICENSED_SHORT_QM' as pair_name,
corr(REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY, SHORT_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and SHORT_STAY_QM_RATING is not null

union all

select 'LICENSED_LONG_QM' as pair_name,
corr(REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY, LONG_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and LONG_STAY_QM_RATING is not null

union all

select 'LICENSED_PATIENT_REPORTED_QM_RATING' as pair_name,
corr(REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY, QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and QM_RATING is not null

union all   

select 'LICENSED_OVERALL_RATING' as pair_name,
corr(REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY, OVERALL_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REPORTED_LICENSED_STAFFING_HOURS_PER_RESIDENT_PER_DAY is not null
and OVERALL_RATING is not null

union all

select 'NURSING_TURNOVER_TO_STAFFING' as pair_name,
corr(TOTAL_NURSING_STAFF_TURNOVER, STAFFING_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where TOTAL_NURSING_STAFF_TURNOVER is not null
and STAFFING_RATING is not null

union all

select 'NURSING_TURNOVER_TO_HEALTH_INSPECTION' as pair_name,
corr(TOTAL_NURSING_STAFF_TURNOVER, HEALTH_INSPECTION_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where TOTAL_NURSING_STAFF_TURNOVER is not null
and HEALTH_INSPECTION_RATING is not null

union all

select 'NURSING_TURNOVER_TO_SHORT_QM' as pair_name,
corr(TOTAL_NURSING_STAFF_TURNOVER, SHORT_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where TOTAL_NURSING_STAFF_TURNOVER is not null
and SHORT_STAY_QM_RATING is not null

union all

select 'NURSING_TURNOVER_TO_LONG_QM' as pair_name,
corr(TOTAL_NURSING_STAFF_TURNOVER, LONG_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where TOTAL_NURSING_STAFF_TURNOVER is not null
and LONG_STAY_QM_RATING is not null

union all

select 'LICENSED_PATIENT_REPORTED_QM_RATING_NURSING_TURNOVER' as pair_name,
corr(TOTAL_NURSING_STAFF_TURNOVER, QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where TOTAL_NURSING_STAFF_TURNOVER is not null
and QM_RATING is not null

union all   

select 'NURSING_TURNOVER_OVERALL_RATING' as pair_name,
corr(TOTAL_NURSING_STAFF_TURNOVER, OVERALL_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where TOTAL_NURSING_STAFF_TURNOVER is not null
and OVERALL_RATING is not null

union all

select 'RN_TURNOVER_TO_STAFFING' as pair_name,
corr(REGISTERED_NURSE_TURNOVER, STAFFING_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REGISTERED_NURSE_TURNOVER is not null
and STAFFING_RATING is not null

union all

select 'RN_TURNOVER_TO_HEALTH_INSPECTION_RATING' as pair_name,
corr(REGISTERED_NURSE_TURNOVER, HEALTH_INSPECTION_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REGISTERED_NURSE_TURNOVER is not null
and HEALTH_INSPECTION_RATING is not null

union all

select 'RN_TURNOVER_TO_SHORT_QM' as pair_name,
corr(REGISTERED_NURSE_TURNOVER, SHORT_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REGISTERED_NURSE_TURNOVER is not null
and SHORT_STAY_QM_RATING is not null

union all

select 'RN_TURNOVER_TO_LONG_QM' as pair_name,
corr(REGISTERED_NURSE_TURNOVER, LONG_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REGISTERED_NURSE_TURNOVER is not null
and LONG_STAY_QM_RATING is not null

union all

select 'LICENSED_PATIENT_REPORTED_QM_RATING_TO_RN_TURNOVER' as pair_name,
corr(REGISTERED_NURSE_TURNOVER, QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REGISTERED_NURSE_TURNOVER is not null
and QM_RATING is not null

union all   

select 'RN_TURNOVER_OVERALL_RATING' as pair_name,
corr(REGISTERED_NURSE_TURNOVER, OVERALL_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REGISTERED_NURSE_TURNOVER is not null
and OVERALL_RATING is not null

union all

select 'ADMIN_TURNOVER_TO_STAFFING' as pair_name,
corr(NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME, STAFFING_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME is not null
and STAFFING_RATING is not null

union all

select 'ADMIN_TURNOVER_TO_HEALTH_INSPECTION_RATING' as pair_name,
corr(NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME, HEALTH_INSPECTION_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME is not null
and HEALTH_INSPECTION_RATING is not null

union all

select 'ADMIN_TURNOVER_TO_SHORT_QM' as pair_name,
corr(NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME, SHORT_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME is not null
and SHORT_STAY_QM_RATING is not null

union all

select 'ADMIN_TURNOVER_TO_LONG_QM' as pair_name,
corr(NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME, LONG_STAY_QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME is not null
and LONG_STAY_QM_RATING is not null

union all

select 'PATIENT_REPORTED_QM_RATING_TO_ADMIN_TURNOVER' as pair_name,
corr(NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME, QM_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME is not null
and QM_RATING is not null

union all   

select 'ADMIN_TURNOVER_OVERALL_RATING' as pair_name,
corr(NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME, OVERALL_RATING) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME is not null
and OVERALL_RATING is not null

UNION ALL

select 'RN_TURNOVER_TO_OCCUPANCY' as pair_name,
corr(REGISTERED_NURSE_TURNOVER, AVERAGE_OCCUPANCY) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REGISTERED_NURSE_TURNOVER is not null
and AVERAGE_OCCUPANCY is not null

union all

select 'ADMINISTRATION_TURNOVER_TO_OCCUPANCY' as pair_name,
corr(NUMBER_OF_ADMINISTRATORS_WHO_HAVE_LEFT_THE_NURSING_HOME, AVERAGE_OCCUPANCY) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where REGISTERED_NURSE_TURNOVER is not null
and AVERAGE_OCCUPANCY is not null

union all   

select 'NURSING_TURNOVER_TO_OCCUPANCY' as pair_name,
corr(TOTAL_NURSING_STAFF_TURNOVER, AVERAGE_OCCUPANCY) as correlation
from {{ source("urban_rural", "CMS_PROVIDER") }}
where TOTAL_NURSING_STAFF_TURNOVER is not null
and AVERAGE_OCCUPANCY is not null

