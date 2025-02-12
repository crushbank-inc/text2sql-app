1.1/5
create table iceberg_data.cb_di.config_udfs_stg (
   identifier int,
   return_type varchar,
   info VARCHAR
)


1.2/5
create table iceberg_data.cb_di.config_udfs (
   identifier int,
   return_type varchar,
   info VARCHAR
)

2.1/5
CREATE TABLE iceberg_data.cb_di.configs_stg (
   "identifier" varchar,
   "link" varchar,
   "integration_type" varchar,
   "updated_date" varchar,
   "updated_by" varchar,
   "integration_id" varchar,
   "parent_name" varchar,
   "company_id" varchar,
   "created_date" varchar,
   "created_by" varchar,
   "return_type" varchar,
   "business_unit_id" varchar,
   "business_unit" varchar,
   "location_id" varchar,
   "location" varchar,
   "type" varchar, 
   "status" varchar,
   "sla" varchar,
   "install_date" varchar,
   "installed_by" varchar,
   "purchase_date" varchar,
   "expiration_date" varchar,
   "vendor" varchar,
   "manufacturer" varchar,
   "part_number" varchar,
   "model_number" varchar,
   "serial_number" varchar,
   "tag_number" varchar,
   "bill_customer" varchar,
   "needs_renewal" varchar,
   "contact" varchar,
   "site" varchar,
   "site_address" varchar,
   "notes" varchar,
   "vendor_notes" varchar
)

--2.2/5
CREATE TABLE iceberg_data.cb_di.configs (
   "identifier" integer,
   "link" varchar,
   "integration_type" varchar,
   "updated_date" timestamp,
   "updated_by" varchar,
   "integration_id" integer,
   "parent_name" varchar,
   "company_id" integer,
   "created_date" timestamp,
   "created_by" varchar,
   "return_type" varchar,
   "business_unit_id" integer,
   "business_unit" varchar,
   "location_id" integer,
   "location" varchar,
   "type" varchar, 
   "status" varchar,
   "sla" varchar,
   "install_date" varchar,
   "installed_by" varchar,
   "purchase_date" date,
   "expiration_date" date,
   "vendor" varchar,
   "manufacturer" varchar,
   "part_number" varchar,
   "model_number" varchar,
   "serial_number" varchar,
   "tag_number" varchar,
   "bill_customer" boolean,
   "needs_renewal" boolean,
   "contact" varchar,
   "site" varchar,
   "site_address" varchar,
   "notes" varchar,
   "vendor_notes" varchar
)


--3.1/5
CREATE TABLE iceberg_data.cb_di.contacts_stg (
   "id" varchar,
   "title" varchar,
   "link" varchar,
   "integration_type" varchar,
   "business_unit_id" varchar,
   "location_id" varchar,
   "identifier" varchar,
   "updated_date" varchar,
   "updated_by" varchar,
   "integration_id" varchar,
   "parent_name" varchar,
   "company_id" varchar,
   "created_date" varchar,
   "created_by" varchar,
   "return_type" varchar,
   "full_name" varchar,
   "company_location" varchar,
   "department" varchar,
   "site" varchar,
   "email" varchar,
   "phone_number" varchar,
   "facebook" varchar,
   "twitter" varchar,
   "linkedin" varchar
)


--3.2/5
CREATE TABLE iceberg_data.cb_di.contacts (
   "id" bigint,
   "title" varchar,
   "link" varchar,
   "integration_type" varchar,
   "business_unit_id" integer,
   "location_id" integer,
   "identifier" integer,
   "updated_date" timestamp,
   "updated_by" varchar,
   "integration_id" integer,
   "parent_name" varchar,
   "company_id" integer,
   "created_date" timestamp,
   "created_by" varchar,
   "return_type" varchar,
   "full_name" varchar,
   "company_location" varchar,
   "department" varchar,
   "site" varchar,
   "email" varchar,
   "phone_number" varchar,
   "facebook" varchar,
   "twitter" varchar,
   "linkedin" varchar
)


--4.1/5
CREATE TABLE iceberg_data.cb_di.tickets_stg (
   "identifier" varchar,
   "link" varchar,
   "integration_type" varchar,
   "board_id" varchar,
   "board_name" varchar,
   "status_id" varchar,
   "status_name" varchar,
   "actual_hours" varchar,
   "concept" varchar,
   "updated_date" varchar,
   "updated_by" varchar,
   "integration_id" varchar,
   "parent_name" varchar,
   "company_id" varchar,
   "created_date" varchar,
   "created_by" varchar,
   "return_type" varchar,
   "type" varchar,
   "sub_type" varchar,
   "item" varchar,
   "ticket_owner" varchar,
   "sla" varchar,
   "agreement" varchar,
   "predecessor" varchar,
   "estimated_start_date" varchar,
   "due_date" varchar,
   "duration" varchar,
   "impact" varchar,
   "priority" varchar,
   "sla_status" varchar,
   "budget_hours" varchar,
   "opportunity" varchar,
   "source" varchar,
   "vcio" varchar,
   "account_tech" varchar,
   "assigned_by" varchar,
   "closed_by" varchar,
   "closed_date" varchar,
   "status_type" varchar
)


--4.2/5
CREATE TABLE iceberg_data.cb_di.tickets (
   "identifier" bigint,
   "link" varchar,
   "integration_type" varchar,
   "board_id" integer,
   "board_name" varchar,
   "status_id" integer,
   "status_name" varchar,
   "actual_hours" double,
   "concept" varchar,
   "updated_date" timestamp,
   "updated_by" varchar,
   "integration_id" integer,
   "parent_name" varchar,
   "company_id" integer,
   "created_date" timestamp,
   "created_by" varchar,
   "return_type" varchar,
   "type" varchar,
   "sub_type" varchar,
   "item" varchar,
   "ticket_owner" varchar,
   "sla" varchar,
   "agreement" varchar,
   "predecessor" varchar,
   "estimated_start_date" date,
   "due_date" date,
   "duration" bigint,
   "impact" varchar,
   "priority" varchar,
   "sla_status" varchar,
   "budget_hours" double,
   "opportunity" varchar,
   "source" varchar,
   "vcio" varchar,
   "account_tech" varchar,
   "assigned_by" varchar,
   "closed_by" varchar,
   "closed_date" timestamp,
   "status_type" varchar
)


--5.1/5
CREATE TABLE iceberg_data.cb_di.time_entries_stg (
   "identifier" varchar,
   "user" varchar,
   "hours" varchar,
   "date" varchar,
   "billable" varchar,
   "work_role" varchar,
   "status" varchar,
   "location" varchar,
   "business_unit" varchar,
   "agreement" varchar,
   "agreement_type" varchar,
   "invoice_number" varchar,
   "start_time" varchar,
   "end_time" varchar,
   "return_type" varchar
)


--5.2/5
CREATE TABLE iceberg_data.cb_di.time_entries (
   "identifier" integer,
   "user" varchar,
   "hours" double,
   "date" timestamp,
   "billable" boolean,
   "work_role" varchar,
   "status" varchar,
   "location" varchar,
   "business_unit" varchar,
   "agreement" varchar,
   "agreement_type" varchar,
   "invoice_number" varchar,
   "start_time" varchar,
   "end_time" varchar,
   "return_type" varchar
);


