--t_hi_buy_details

alter table t_hi_buy_details rename application_number to transaction_number; --- Correct

alter table t_hi_buy_details add column payment_order_status varchar(45) DEFAULT NULL; -- correct
alter table t_hi_buy_details add column gateway_id tinyint DEFAULT NULL;-- correct

--t_hi_extl_apiresponse
alter table t_hi_extl_apiresponse add column lead_id varchar(45) DEFAULT NULL; --- correct

--t_hi_family_details
alter table t_hi_family_details add column esign_otp_sub_date datetime(6) DEFAULT NULL; -- correct

--Drop and recreate t_hi_ghd_ans
create table t_hi_ghd_ans_backup_11mar2024 like t_hi_ghd_ans;
insert into t_hi_ghd_ans_backup_11mar2024 select * from t_hi_ghd_ans;
rename t_hi_ghd_ans to t_hi_ghd_ans_old_backup_11mar2024 ;

CREATE TABLE t_hi_ghd_ans (
  ghdans_id bigint NOT NULL AUTO_INCREMENT,
  ghddetails_id bigint DEFAULT NULL,
  qn_id bigint DEFAULT NULL,
  ans varchar(45) DEFAULT NULL,
  PRIMARY KEY (ghdans_id),
  KEY fk_ghd_dtls_idx (ghddetails_id),
  KEY fk_ghd_ques_idx (qn_id),
  CONSTRAINT fk_ghd_dtls FOREIGN KEY (ghddetails_id) REFERENCES t_hi_ghd_details (ghddetails_id),
  CONSTRAINT fk_ghd_ques FOREIGN KEY (qn_id) REFERENCES t_hi_ghd_qstns (ghdqstn_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci; --correct 

--Drop and recreate t_hi_ghd_details 
create table t_hi_ghd_details_backup_11mar2024 like t_hi_ghd_details;
insert into t_hi_ghd_details_backup_11mar2024 select * from t_hi_ghd_details;
rename t_hi_ghd_details to t_hi_ghd_details_old_backup_11mar2024;

CREATE TABLE t_hi_ghd_details (
  ghddetails_id bigint NOT NULL AUTO_INCREMENT,
  proposer_insured_id bigint DEFAULT NULL,
  ghd_discount_recieved varchar(5) DEFAULT NULL,
  ghd_member_discount double DEFAULT NULL,
  ghd_aggregate_discount double DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  created_date datetime(6) DEFAULT NULL,
  created_by varchar(45) DEFAULT NULL,
  PRIMARY KEY (ghddetails_id),
  KEY fk_proposer_insurance_id_idx (proposer_insured_id),
  CONSTRAINT fk_prop_ind_id FOREIGN KEY (proposer_insured_id) REFERENCES t_hi_proposer_insured_members (proposerinsurerid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Trans,HI Good Health Details from careplix';  -- correct

CREATE TABLE t_hi_lifestyle_medical_details (
  hi_lifestyle_responses_id bigint NOT NULL AUTO_INCREMENT,
  family_id int DEFAULT NULL,
  relation_type varchar(45) DEFAULT NULL,
  question_code varchar(45) DEFAULT NULL,
  remaks varchar(500) DEFAULT NULL,
  answer varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  created_date datetime(6) DEFAULT NULL,
  created_by varchar(45) DEFAULT NULL,
  PRIMARY KEY (hi_lifestyle_responses_id),
  KEY fx_t_hi_lifestyle_medical_details (family_id),
  CONSTRAINT t_hi_lifestyle_medical_details_ibfk_1 FOREIGN KEY (family_id) REFERENCES t_hi_family_details (family_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;                                               ----------- correct


CREATE TABLE t_hi_question_master (
  hi_question_master_id bigint NOT NULL AUTO_INCREMENT,
  product_code varchar(45) DEFAULT NULL,
  question_level varchar(45) DEFAULT NULL,
  parent_question_code varchar(45) DEFAULT NULL,
  parent_question_desc varchar(600) DEFAULT NULL,
  child_question_code varchar(45) DEFAULT NULL,
  child_question_desc varchar(255) DEFAULT NULL,
  child_answer_code varchar(45) DEFAULT NULL,
  child_answer_desc varchar(255) DEFAULT NULL,
  created_date datetime(6) DEFAULT NULL,
  created_by varchar(45) DEFAULT 'system',
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (hi_question_master_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='List of questions from Jarvis'; -----------correct

alter table t_hi_consolidate_addon_rate_master add column  aone_max_flag varchar(1) DEFAULT NULL; -- correct
alter table t_hi_consolidate_addon_rate_master add column  min_age int DEFAULT NULL; --- correct
alter table t_hi_consolidate_addon_rate_master add column  max_age int DEFAULT NULL; --- correct

alter table t_hi_consolidated_master add column deductible double DEFAULT NULL;  --- correct

alter table t_hi_addons_ratemaster add column aone_max_flag varchar(1) DEFAULT NULL;  --- correct
alter table t_hi_addons_ratemaster add column aone_max_chronic_flag varchar(1) DEFAULT NULL; --- correct

====
CREATE TABLE `t_hi_onemax_chronic_disease_master` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary key auto increment',
  `disease_name` varchar(100) DEFAULT NULL COMMENT 'Name of the disease',
  `lob_id` bigint DEFAULT NULL COMMENT 'ID of the Journey',
  `active` bit(1) DEFAULT b'1',
  `display_name` varchar(45) DEFAULT NULL COMMENT 'for showing the disease on UI side',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT=' Need to create one new API for fetching the list of disease for sprint 5 Activ One Max Plan addon.';  ---- correct 

CREATE TABLE `t_hi_activ_one_max_master` (
  `id` int DEFAULT NULL,
  `min_age` int DEFAULT NULL,
  `max_age` int DEFAULT NULL,
  `age_band` varchar(512) DEFAULT NULL,
  `si_200000` double DEFAULT NULL,
  `si_300000` double DEFAULT NULL,
  `si_400000` double DEFAULT NULL,
  `si_500000` double DEFAULT NULL,
  `si_700000` double DEFAULT NULL,
  `si_1000000` double DEFAULT NULL,
  `si_1500000` double DEFAULT NULL,
  `si_2000000` double DEFAULT NULL,
  `si_2500000` double DEFAULT NULL,
  `si_5000000` double DEFAULT NULL,
  `si_7500000` double DEFAULT NULL,
  `si_10000000` double DEFAULT NULL,
  `si_20000000` double DEFAULT NULL,
  `si_30000000` double DEFAULT NULL,
  `si_40000000` double DEFAULT NULL,
  `si_50000000` double DEFAULT NULL,
  `si_60000000` double DEFAULT NULL,
  `adult_count` int DEFAULT NULL,
  `child_count` int DEFAULT NULL,
  `zone` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;  ---- correct

CREATE TABLE `t_hi_activeone_mtype_code` (
  `activone_id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary key id and Auto Increment',
  `member_type_code` varchar(10) NOT NULL COMMENT 'Each member selection we have one member type code',
  `member_type` varchar(100) NOT NULL COMMENT 'Family Member selection',
  `product_code` int NOT NULL COMMENT 'product code for active one max plan',
  `active` bit(1) DEFAULT NULL COMMENT 'Flag',
  PRIMARY KEY (`activone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;  ---- correct
