-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ABCDDEVDB
-- ------------------------------------------------------
-- Server version	8.0.33-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_mf_finsire_asset_fetch`
--
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS t_mf_finsire_asset_fetch;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE t_mf_finsire_asset_fetch (
  mf_finsire_asset_fetch_id bigint NOT NULL AUTO_INCREMENT,
  partner_finsire_id varchar(45) DEFAULT NULL,
  customer_id bigint DEFAULT NULL,
  mf_data_fetched_at datetime(6) DEFAULT NULL,
  mf_data_fetched_by bigint DEFAULT NULL,
  created_by varchar(45) DEFAULT NULL COMMENT 'Audit Columns used for traceability',
  created_date datetime DEFAULT NULL COMMENT 'Audit Columns used for traceability',
  modified_by varchar(45) DEFAULT NULL COMMENT 'Audit Columns used for traceability',
  modified_date datetime DEFAULT NULL COMMENT 'Audit Columns used for traceability',
  `active` bit(1) DEFAULT NULL,
  investment_amount double DEFAULT NULL,
  current_market_value double DEFAULT NULL,
  PRIMARY KEY (mf_finsire_asset_fetch_id),
  KEY fk_mfcustomer_id (customer_id),
  KEY fk_mf_data_fetched_by (mf_data_fetched_by),
  CONSTRAINT t_mf_finsire_asset_fetch_ibfk_1 FOREIGN KEY (customer_id) REFERENCES t_customer (id),
  CONSTRAINT t_mf_finsire_asset_fetch_ibfk_2 FOREIGN KEY (mf_data_fetched_by) REFERENCES t_lob_master (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mf_finsire_asset_fetch`
--

INSERT INTO t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id, partner_finsire_id, customer_id, mf_data_fetched_at, mf_data_fetched_by, created_by, created_date, modified_by, modified_date, active, investment_amount, current_market_value) VALUES (1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9190.01,9580.98);
INSERT INTO t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id, partner_finsire_id, customer_id, mf_data_fetched_at, mf_data_fetched_by, created_by, created_date, modified_by, modified_date, active, investment_amount, current_market_value) VALUES (2,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9190.01,9580.98);
INSERT INTO t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id, partner_finsire_id, customer_id, mf_data_fetched_at, mf_data_fetched_by, created_by, created_date, modified_by, modified_date, active, investment_amount, current_market_value) VALUES (3,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9190.01,9580.98);
INSERT INTO t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id, partner_finsire_id, customer_id, mf_data_fetched_at, mf_data_fetched_by, created_by, created_date, modified_by, modified_date, active, investment_amount, current_market_value) VALUES (4,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9190.01,9580.98);
INSERT INTO t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id, partner_finsire_id, customer_id, mf_data_fetched_at, mf_data_fetched_by, created_by, created_date, modified_by, modified_date, active, investment_amount, current_market_value) VALUES (5,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9190.01,9580.98);
INSERT INTO t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id, partner_finsire_id, customer_id, mf_data_fetched_at, mf_data_fetched_by, created_by, created_date, modified_by, modified_date, active, investment_amount, current_market_value) VALUES (6,NULL,1,NULL,10,NULL,NULL,NULL,NULL,NULL,9190.01,9580.98);
INSERT INTO t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id, partner_finsire_id, customer_id, mf_data_fetched_at, mf_data_fetched_by, created_by, created_date, modified_by, modified_date, active, investment_amount, current_market_value) VALUES (7,'44f4bc0dc887714440a6001731a454b4c4',1,NULL,10,NULL,'2024-02-29 10:16:33',NULL,'2024-02-29 10:16:33',NULL,9190.01,185783.62000000002);
INSERT INTO t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id, partner_finsire_id, customer_id, mf_data_fetched_at, mf_data_fetched_by, created_by, created_date, modified_by, modified_date, active, investment_amount, current_market_value) VALUES (8,'44f4bc0dc887714440a6001731a454b4c4',1,NULL,10,NULL,'2024-02-29 10:21:28',NULL,'2024-02-29 10:21:28',NULL,185392.65000000002,185783.62000000002);
INSERT INTO t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id, partner_finsire_id, customer_id, mf_data_fetched_at, mf_data_fetched_by, created_by, created_date, modified_by, modified_date, active, investment_amount, current_market_value) VALUES (9,'44f4bc0dc887714440a6001731a454b4c4',1,NULL,10,NULL,'2024-02-29 10:25:21',NULL,'2024-02-29 10:25:21',NULL,185392.65000000002,185783.62000000002);
INSERT INTO t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id, partner_finsire_id, customer_id, mf_data_fetched_at, mf_data_fetched_by, created_by, created_date, modified_by, modified_date, active, investment_amount, current_market_value) VALUES (10,'44f4bc0dc887714440a6001731a454b4c4',1,'2024-02-29 10:27:13.805995',10,NULL,'2024-02-29 10:27:14',NULL,'2024-02-29 10:27:14',NULL,185392.65000000002,185783.62000000002);

--
-- Table structure for table `t_mf_finsire_asset_fetch_data`
--

DROP TABLE IF EXISTS t_mf_finsire_asset_fetch_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE t_mf_finsire_asset_fetch_data (
  mf_finsire_asset_fetch_data_id bigint NOT NULL AUTO_INCREMENT,
  customer_id bigint DEFAULT NULL,
  email varchar(30) DEFAULT NULL,
  asset_user_id varchar(50) DEFAULT NULL,
  asset_detail_id varchar(50) DEFAULT NULL,
  partner_finsire_id varchar(45) DEFAULT NULL,
  unit_price double DEFAULT NULL,
  last_traded_value double DEFAULT NULL,
  available_units double DEFAULT NULL,
  total_price double DEFAULT NULL,
  age int DEFAULT NULL,
  amc varchar(50) DEFAULT NULL,
  amc_name varchar(50) DEFAULT NULL,
  nav double DEFAULT NULL,
  bank_city varchar(50) DEFAULT NULL,
  bank_ifsc varchar(15) DEFAULT NULL,
  bank_micr varchar(50) DEFAULT NULL,
  bank_name varchar(255) DEFAULT NULL,
  bank_branch varchar(50) DEFAULT NULL,
  bank_pincode varchar(50) DEFAULT NULL,
  bank_neftifsc varchar(50) DEFAULT NULL,
  bank_account_no varchar(50) DEFAULT NULL,
  bank_account_type varchar(50) DEFAULT NULL,
  isin varchar(45) DEFAULT NULL,
  folio_number varchar(45) DEFAULT NULL,
  is_demat varchar(1) DEFAULT NULL,
  nav_date varchar(45) DEFAULT NULL,
  rta_name varchar(10) DEFAULT NULL,
  gainloss varchar(10) DEFAULT NULL,
  gainloss_perc varchar(10) DEFAULT NULL,
  isnew_folio varchar(1) DEFAULT NULL,
  plan_mode varchar(5) DEFAULT NULL,
  asset_type varchar(50) DEFAULT NULL,
  cost_value double DEFAULT NULL,
  tax_status varchar(25) DEFAULT NULL,
  broker_code varchar(25) DEFAULT NULL,
  broker_name varchar(100) DEFAULT NULL,
  decimal_nav double DEFAULT NULL,
  decimal_units double DEFAULT NULL,
  decimal_amount double DEFAULT NULL,
  investor_name varchar(255) DEFAULT NULL,
  lien_units_flag varchar(1) DEFAULT NULL,
  scheme_code varchar(100) DEFAULT NULL,
  scheme_name varchar(100) DEFAULT NULL,
  scheme_type varchar(100) DEFAULT NULL,
  scheme_option varchar(100) DEFAULT NULL,
  isnominee_available varchar(1) DEFAULT NULL,
  available_amount double DEFAULT NULL,
  closing_balance double DEFAULT NULL,
  current_market_value double DEFAULT NULL,
  transaction_source varchar(10) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  created_date datetime(6) DEFAULT NULL,
  created_by varchar(45) DEFAULT NULL,
  updated_date datetime(6) DEFAULT NULL,
  updated_by varchar(45) DEFAULT NULL,
  asset_fetch_id bigint DEFAULT NULL,
  PRIMARY KEY (mf_finsire_asset_fetch_data_id),
  KEY fk_customer_id_asset_fetch_data (customer_id),
  KEY fk_t_mf_finsire_afd (asset_fetch_id),
  CONSTRAINT fk_customer_id_asset_fetch_data FOREIGN KEY (customer_id) REFERENCES t_customer (id),
  CONSTRAINT t_mf_finsire_asset_fetch_data_ibfk_1 FOREIGN KEY (asset_fetch_id) REFERENCES t_mf_finsire_asset_fetch (mf_finsire_asset_fetch_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mf_finsire_asset_fetch_data`
--

INSERT INTO t_mf_finsire_asset_fetch_data (mf_finsire_asset_fetch_data_id, customer_id, email, asset_user_id, asset_detail_id, partner_finsire_id, unit_price, last_traded_value, available_units, total_price, age, amc, amc_name, nav, bank_city, bank_ifsc, bank_micr, bank_name, bank_branch, bank_pincode, bank_neftifsc, bank_account_no, bank_account_type, isin, folio_number, is_demat, nav_date, rta_name, gainloss, gainloss_perc, isnew_folio, plan_mode, asset_type, cost_value, tax_status, broker_code, broker_name, decimal_nav, decimal_units, decimal_amount, investor_name, lien_units_flag, scheme_code, scheme_name, scheme_type, scheme_option, isnominee_available, available_amount, closing_balance, current_market_value, transaction_source, active, created_date, created_by, updated_date, updated_by, asset_fetch_id) VALUES (1,NULL,'','9259b94c-2b6e-4192-81cb-5b6bbfff2cec',NULL,NULL,21.7202,0,423.109,8883,33,'H','MFHMF Test Fund',21.7202,'THUDIYALOOR','ICIC0002432','','ICICI Bank  Retail Net Banking','THUDIYALUR','','ICIC0002432','243201501171','SB','INF179K01YM7','17074515','N','31-Jul-2023','CAMS','-1419.02','-12.90','N','D','DEBT',11000,'01','INA200005166','AREVUK ADVISORY DERVICES PRIVATE LIMITED',4,3,2,'Finsire Trading','Y','STOGT','HDFC Short Term Debt Fund - Direct Plan  - Growth Option','STP','Growth','Y',9190.01,441.11,9580.98,'BSE',_binary '',NULL,NULL,NULL,NULL,NULL);
INSERT INTO t_mf_finsire_asset_fetch_data (mf_finsire_asset_fetch_data_id, customer_id, email, asset_user_id, asset_detail_id, partner_finsire_id, unit_price, last_traded_value, available_units, total_price, age, amc, amc_name, nav, bank_city, bank_ifsc, bank_micr, bank_name, bank_branch, bank_pincode, bank_neftifsc, bank_account_no, bank_account_type, isin, folio_number, is_demat, nav_date, rta_name, gainloss, gainloss_perc, isnew_folio, plan_mode, asset_type, cost_value, tax_status, broker_code, broker_name, decimal_nav, decimal_units, decimal_amount, investor_name, lien_units_flag, scheme_code, scheme_name, scheme_type, scheme_option, isnominee_available, available_amount, closing_balance, current_market_value, transaction_source, active, created_date, created_by, updated_date, updated_by, asset_fetch_id) VALUES (21,1,'sanjay@finsire.com','9259b94c-2b6e-4192-81cb-5b6bbfff2cec',NULL,NULL,10,0,17620.264,176200,44,'P','ICICI Prudential Mutual Fund',10,'FARRUKHABAD','ICIC0003198','','ICICI Bank Ltd','KAIMGANJ','','ICIC0003198','319801502239','SB','INF109KC1D69','15718378','N','28-Mar-2023','CAMS','-23797.36','-11.90','N','R','EQUITY',200000,'01','ARN-0020','ICICI Bank Limited',2,3,2,'Finsire','N','3392','ICICI Prudential MNC Fund Growth','Equity(G)','Growth','Y',176202.64,17620.26,176202.64,'',_binary '','2024-03-07 12:30:25.572621',NULL,'2024-03-07 12:30:25.572621',NULL,NULL);
INSERT INTO t_mf_finsire_asset_fetch_data (mf_finsire_asset_fetch_data_id, customer_id, email, asset_user_id, asset_detail_id, partner_finsire_id, unit_price, last_traded_value, available_units, total_price, age, amc, amc_name, nav, bank_city, bank_ifsc, bank_micr, bank_name, bank_branch, bank_pincode, bank_neftifsc, bank_account_no, bank_account_type, isin, folio_number, is_demat, nav_date, rta_name, gainloss, gainloss_perc, isnew_folio, plan_mode, asset_type, cost_value, tax_status, broker_code, broker_name, decimal_nav, decimal_units, decimal_amount, investor_name, lien_units_flag, scheme_code, scheme_name, scheme_type, scheme_option, isnominee_available, available_amount, closing_balance, current_market_value, transaction_source, active, created_date, created_by, updated_date, updated_by, asset_fetch_id) VALUES (22,1,'','9259b94c-2b6e-4192-81cb-5b6bbfff2cec',NULL,NULL,21.7202,0,423.109,8883,33,'H','MFHMF Test Fund',21.7202,'THUDIYALOOR','ICIC0002432','','ICICI Bank  Retail Net Banking','THUDIYALUR','','ICIC0002432','243201501171','SB','INF179K01YM7','17074515','N','31-Jul-2023','CAMS','-1419.02','-12.90','N','D','DEBT',11000,'01','INA200005166','AREVUK ADVISORY DERVICES PRIVATE LIMITED',4,3,2,'Finsire Trading','Y','STOGT','HDFC Short Term Debt Fund - Direct Plan  - Growth Option','STP','Growth','Y',9190.01,441.11,9580.98,'BSE',_binary '','2024-03-07 12:30:25.827721',NULL,'2024-03-07 12:30:25.827721',NULL,NULL);

--
-- Table structure for table `t_mf_finsire_user`
--

DROP TABLE IF EXISTS t_mf_finsire_user;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE t_mf_finsire_user (
  mf_finsire_user_id bigint NOT NULL AUTO_INCREMENT,
  customer_id bigint DEFAULT NULL,
  partner_finsire_id varchar(45) DEFAULT NULL,
  isKYCCompliant bit(1) DEFAULT NULL,
  user_pan varchar(15) DEFAULT NULL,
  user_name varchar(150) DEFAULT NULL,
  user_mobile varchar(15) DEFAULT NULL,
  user_asset varchar(50) DEFAULT NULL,
  created_by varchar(45) DEFAULT NULL COMMENT 'Audit Columns used for traceability',
  created_date datetime DEFAULT NULL COMMENT 'Audit Columns used for traceability',
  modified_by varchar(45) DEFAULT NULL COMMENT 'Audit Columns used for traceability',
  modified_date datetime DEFAULT NULL COMMENT 'Audit Columns used for traceability',
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (mf_finsire_user_id),
  KEY fk_customer_id (customer_id),
  CONSTRAINT t_mf_finsire_user_ibfk_1 FOREIGN KEY (customer_id) REFERENCES t_customer (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mf_finsire_user`
--

INSERT INTO t_mf_finsire_user (mf_finsire_user_id, customer_id, partner_finsire_id, isKYCCompliant, user_pan, user_name, user_mobile, user_asset, created_by, created_date, modified_by, modified_date, active) VALUES (1,1,'44f4bc0dc887714440a6001731a454b4c4',_binary '','PANQU6322QU','John Doe','9876543210','[Salary, Mutual Funds, Vehicle]',NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
