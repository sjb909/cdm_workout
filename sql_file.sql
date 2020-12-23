CREATE DATABASE test
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Korean_Korea.949'
    LC_CTYPE = 'Korean_Korea.949'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

CREATE TABLE public.concept
(
    concept_id character varying COLLATE pg_catalog."default" NOT NULL,
    concept_name character varying COLLATE pg_catalog."default",
    domain_id character varying COLLATE pg_catalog."default",
    vocabulary_id character varying COLLATE pg_catalog."default",
    concept_class_id character varying COLLATE pg_catalog."default",
    standard_concept character varying COLLATE pg_catalog."default",
    concept_code character varying COLLATE pg_catalog."default",
    valid_start_date character varying COLLATE pg_catalog."default",
    valid_end_date character varying COLLATE pg_catalog."default",
    invalid_reason character varying COLLATE pg_catalog."default",
    CONSTRAINT concept_pkey PRIMARY KEY (concept_id)
)

CREATE TABLE public.condition_occurrence
(
    condition_occurence_id character varying COLLATE pg_catalog."default" NOT NULL,
    person_id character varying COLLATE pg_catalog."default",
    condition_concept_id character varying COLLATE pg_catalog."default",
    condition_start_date character varying COLLATE pg_catalog."default",
    condition_start_datetime character varying COLLATE pg_catalog."default",
    condition_end_date character varying COLLATE pg_catalog."default",
    condition_end_datetime character varying COLLATE pg_catalog."default",
    condition_type_concept_id character varying COLLATE pg_catalog."default",
    stop_reason character varying COLLATE pg_catalog."default",
    provider_id character varying COLLATE pg_catalog."default",
    visit_occurrence_id character varying COLLATE pg_catalog."default",
    visit_detail_id character varying COLLATE pg_catalog."default",
    condition_source_value character varying COLLATE pg_catalog."default",
    condition_source_concept_id character varying COLLATE pg_catalog."default",
    condition_status_source_value character varying COLLATE pg_catalog."default",
    condition_status_concept_id character varying COLLATE pg_catalog."default",
    CONSTRAINT condition_occurrence_pkey PRIMARY KEY (condition_occurence_id)
)

CREATE TABLE public.death
(
    person_id character varying COLLATE pg_catalog."default" NOT NULL,
    death_date character varying COLLATE pg_catalog."default",
    death_datetime character varying COLLATE pg_catalog."default",
    death_type_concept_id character varying COLLATE pg_catalog."default",
    cause_concept_id character varying COLLATE pg_catalog."default",
    cause_source_value character varying COLLATE pg_catalog."default",
    cause_source_concept_id character varying COLLATE pg_catalog."default",
    CONSTRAINT death_pkey PRIMARY KEY (person_id)
)

CREATE TABLE public.drug_exposure
(
    drug_exposure_id character varying COLLATE pg_catalog."default" NOT NULL,
    person_id character varying COLLATE pg_catalog."default",
    drug_concept_id character varying COLLATE pg_catalog."default",
    drug_exposure_start_date character varying COLLATE pg_catalog."default",
    drug_exposure_start_datetime character varying COLLATE pg_catalog."default",
    drug_exposure_end_date character varying COLLATE pg_catalog."default",
    drug_exposure_end_datetime character varying COLLATE pg_catalog."default",
    verbatim_end_date character varying COLLATE pg_catalog."default",
    drug_type_concept_id character varying COLLATE pg_catalog."default",
    stop_reason character varying COLLATE pg_catalog."default",
    refills character varying COLLATE pg_catalog."default",
    quantity character varying COLLATE pg_catalog."default",
    days_supply character varying COLLATE pg_catalog."default",
    sig character varying COLLATE pg_catalog."default",
    route_concept_id character varying COLLATE pg_catalog."default",
    lot_number character varying COLLATE pg_catalog."default",
    provider_id character varying COLLATE pg_catalog."default",
    visit_occurrence_id character varying COLLATE pg_catalog."default",
    visit_detail_id character varying COLLATE pg_catalog."default",
    drug_source_value character varying COLLATE pg_catalog."default",
    drug_source_concept_id character varying COLLATE pg_catalog."default",
    route_source_value character varying COLLATE pg_catalog."default",
    dose_unit_source_value character varying COLLATE pg_catalog."default",
    CONSTRAINT drug_exposure_pkey PRIMARY KEY (drug_exposure_id)
)

CREATE TABLE public.person
(
    person_id character varying COLLATE pg_catalog."default" NOT NULL,
    gender_concept_id character varying COLLATE pg_catalog."default",
    year_of_birth character varying COLLATE pg_catalog."default",
    month_of_birth character varying COLLATE pg_catalog."default",
    day_of_birth character varying COLLATE pg_catalog."default",
    birth_datetime character varying COLLATE pg_catalog."default",
    race_concept_id character varying COLLATE pg_catalog."default",
    ethnicity_concept_id character varying COLLATE pg_catalog."default",
    location_id character varying COLLATE pg_catalog."default",
    provider_id character varying COLLATE pg_catalog."default",
    care_site_id character varying COLLATE pg_catalog."default",
    person_source_value character varying COLLATE pg_catalog."default",
    gender_source_value character varying COLLATE pg_catalog."default",
    gender_source_concept_id character varying COLLATE pg_catalog."default",
    race_source_value character varying COLLATE pg_catalog."default",
    race_source_concept_id character varying COLLATE pg_catalog."default",
    ethnicity_source_value character varying COLLATE pg_catalog."default",
    ethnicity_source_concept_id character varying COLLATE pg_catalog."default",
    CONSTRAINT person_pkey PRIMARY KEY (person_id)
)

CREATE TABLE public.visit_occurrence
(
    visit_occurrence_id character varying COLLATE pg_catalog."default" NOT NULL,
    person_id character varying COLLATE pg_catalog."default",
    visit_concept_id character varying COLLATE pg_catalog."default",
    visit_start_date character varying COLLATE pg_catalog."default",
    visit_start_datetime character varying COLLATE pg_catalog."default",
    visit_end_date character varying COLLATE pg_catalog."default",
    visit_end_datetime character varying COLLATE pg_catalog."default",
    visit_type_concept_id character varying COLLATE pg_catalog."default",
    provider_id character varying COLLATE pg_catalog."default",
    care_site_id character varying COLLATE pg_catalog."default",
    visit_source_value character varying COLLATE pg_catalog."default",
    visit_source_concept_id character varying COLLATE pg_catalog."default",
    admitting_source_concept_id character varying COLLATE pg_catalog."default",
    admitting_source_value character varying COLLATE pg_catalog."default",
    discharge_to_concept_id character varying COLLATE pg_catalog."default",
    discharge_to_source_value character varying COLLATE pg_catalog."default",
    preceding_visit_occurrence_id character varying COLLATE pg_catalog."default",
    CONSTRAINT visit_occurrence_pkey PRIMARY KEY (visit_occurrence_id)
)