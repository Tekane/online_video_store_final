-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.53-community-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5236
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for lepo
CREATE DATABASE IF NOT EXISTS `lepo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lepo`;

-- Dumping structure for table lepo.irc_risk
CREATE TABLE IF NOT EXISTS `irc_risk` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `description` tinytext NOT NULL,
  `name` varchar(125) NOT NULL,
  `matrix_id` bigint(20) NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1eqgbbiir4pf62r4f7jxj4itr` (`name`),
  KEY `FK_h6f3nna6uu6gv10nph981bibq` (`matrix_id`),
  KEY `FK_nha4eq4sk2rln6cigufgaq44i` (`username`),
  CONSTRAINT `FK_h6f3nna6uu6gv10nph981bibq` FOREIGN KEY (`matrix_id`) REFERENCES `irc_matrix` (`id`),
  CONSTRAINT `FK_nha4eq4sk2rln6cigufgaq44i` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- Dumping data for table lepo.irc_risk: ~85 rows (approximately)
/*!40000 ALTER TABLE `irc_risk` DISABLE KEYS */;
INSERT INTO `irc_risk` (`id`, `deleted`, `description`, `name`, `matrix_id`, `username`) VALUES
	(1, b'1', 'Access controls over business and department systems may be inadquate.', 'Access Contols - deleted on 2018/01/31', 10, 'Matthew'),
	(3, b'1', 'Unclear division of duties could potentially result in multiple accesses to work streams or key activities not being completed.', 'Segregation of Duties - deleted on 2018/01/31', 10, 'Matthew'),
	(4, b'1', 'Assets are purchased without the proper authorisation.', 'Unathorised Investment Purchases - deleted on 2018/01/31', 10, 'Matthew'),
	(6, b'1', 'Assets are redeemed without the proper authorisation.', 'Unauthorised Investment Redemptions - deleted on 2018/01/31', 10, 'Matthew'),
	(7, b'1', 'Compliance may not have sufficient checks in place to identify fund breaches. Alternatively, capturing errors when loading a fund onto an automated compliance-checking platform can result in breaches being overlooked', 'Fund Breaches - deleted on 2018/01/31', 10, 'Matthew'),
	(8, b'1', 'Disclosures contained on application form, marketing materials and advertisements may be inadequate.', 'Client Disclosures - deleted on 2018/01/31', 22, 'Matthew'),
	(9, b'1', 'Internal controls may prove inadequate to prevent cases of fraud and/or error.', 'Fraud  - deleted on 2018/01/31', 10, 'Matthew'),
	(10, b'1', 'Investor funds deposited into bank accounts may be misallocated.', 'Fund Allocation - deleted on 2018/01/31', 10, 'Matthew'),
	(11, b'1', 'Investments may perform poorly. Performance figures may contain tracking errors or could be based on incorrect asset allocation models and/or derivative positions.', 'Investment Risk - deleted on 2018/01/31', 10, 'Matthew'),
	(12, b'1', 'Authorised payments could be made to the incorrect investors or unathorised payments could be made to investors.', 'Liquidation Payments - deleted on 2018/01/31', 10, 'Matthew'),
	(13, b'1', 'Management could potentially override existing control measures and/or take incompetent action.', 'Management Override - deleted on 2018/01/31', 10, 'Matthew'),
	(14, b'1', 'Investor funds may be misappropriated.', 'Misappropriation of Funds - deleted on 2018/01/31', 10, 'Matthew'),
	(15, b'1', 'Deposits received into inflow or fund bank accounts may be proceeds of criminal activities. Transacting in any way with these funds may result in inadvertent involvement in the money laundering cycle.', 'Money Laundering - deleted on 2018/01/31', 10, 'Matthew'),
	(16, b'1', 'Accounting records may be incomplete, contain errors or reflect fraudulent transactions. Record keeping measures may be inadequate. New business approvals may not be subject to sufficient controls/ approvals.', 'Accounting  - deleted on 2018/01/31', 8, 'Matthew'),
	(17, b'1', 'Administrative errors may occur during the course of business activities. Duplicate or over-payments can be made to clients. Instructions may be duplicated or investment applications may be captured incorrectly. Instructions may be lost or not received.', 'Administration Errors - deleted on 2018/01/31', 8, 'Matthew'),
	(18, b'1', 'Unathorized changes can be made to a client\'s records.', 'Amendments - FICA Records - deleted on 2018/01/31', 8, 'Matthew'),
	(19, b'1', 'Investments may perform poorly due to bad investment decisions.', 'Asset Management - Poor Performance - deleted on 2018/01/31', 8, 'Matthew'),
	(20, b'1', 'Asset management resources may lack the requisite:- knowledge ', 'Asset Management Skills - deleted on 2018/01/31', 8, 'Matthew'),
	(21, b'1', 'Investor transactions may have material impacts relative to the total Assets under management.', 'Assets under Management - deleted on 2018/01/31', 8, 'Matthew'),
	(22, b'1', 'The authorized blend of assets, once attained, may not be sufficiently maintained.', 'Authorized Blend Maintenance - deleted on 2018/01/31', 8, 'Matthew'),
	(23, b'1', 'Investment transactions could potentially be back-dated, resulting in material financial implications.', 'Back-Dated Transactions - deleted on 2018/01/31', 9, 'Matthew'),
	(24, b'1', 'Writing off bad debts will increase irrecoverable funds.', 'Bad Debt Write-off - deleted on 2018/01/31', 7, 'Matthew'),
	(25, b'1', 'Benchmarks and associated investment targets, could  potentially not be achieved,', 'Benchmarks - deleted on 2018/01/31', 8, 'Matthew'),
	(26, b'1', 'A business "Disaster Recovery Plan" may not be in place to ensure business continuity or it may prove inadequate or ineffective.', 'Business Continuity - deleted on 2018/01/31', 8, 'Matthew'),
	(27, b'1', 'Fees due may be incorrectly calculated.', 'Calculation Errors on Fees Due - deleted on 2018/01/31', 7, 'Matthew'),
	(28, b'1', 'The split between capital and income may be incorrectly recorded.', 'Capital/Income Split Errors - deleted on 2018/01/31', 3, 'Matthew'),
	(29, b'1', 'The manager may breach the capital adequacy requirements or the seed capital requirements of an individual fund, resulting in a breach', 'Capital Requirements - deleted on 2018/01/31', 3, 'Matthew'),
	(30, b'1', 'Insufficient cash reserves or external funding may result in business needs not being met.', 'Cash Flow Risk - deleted on 2018/01/31', 7, 'Matthew'),
	(31, b'1', 'The risk associated with the potential for legislation (related to a given industry, country or type of security) to change and impact relevant investments.', 'Changes to Legislation - deleted on 2018/01/31', 9, 'Matthew'),
	(32, b'1', 'Client data may be incorrectly captured. Incomplete client data may be processed. Outdated client information could potentially impact FICA compliance. Unidentified or unverified clients may be captured on the database.', 'Client Database Integrity - deleted on 2018/01/31', 8, 'Matthew'),
	(33, b'1', 'Transactions entered into on behalf of investors may be disputed by clients.', 'Client Information Risk - deleted on 2018/01/31', 8, 'Matthew'),
	(34, b'1', 'All transactions may not be processed. Alternatively, client transactions may only be partially processed.', 'Completeness of Transactions - Processing - deleted on 2018/01/31', 9, 'Matthew'),
	(35, b'1', 'Directors may fail to declare conflicts of interest.', 'Conflict of Interest - deleted on 2018/01/31', 3, 'Matthew'),
	(36, b'1', 'Not all deposits marked for phasing may be treated correctly or the phase-in transactions are not actioned according to the investor\'s wishes.', 'Creations - Phase In - deleted on 2018/01/31', 8, 'Matthew'),
	(37, b'1', 'Investment applications may be captured incorrectly or delayed; or receipts may be allocated to the wrong investor (or not at all). Investment applications may not be received.', 'Creations - Applications - deleted on 2018/01/31', 8, 'Matthew'),
	(38, b'1', 'Investment applications may be processed without adhering to FICA and due diligence requirements.', 'Creations - FICA - deleted on 2018/01/31', 8, 'Matthew'),
	(39, b'1', 'Unauthorized investment transactions may be processed.', 'Creations - Unauthorized Transactions - deleted on 2018/01/31', 3, 'Matthew'),
	(40, b'1', 'Staff may not comply with cut-off times when processing client transactions.', 'Cut-off Times - deleted on 2018/01/31', 8, 'Matthew'),
	(41, b'1', 'Calculated distributions may be over/under stated.', 'Declaration & Distribution Errors - deleted on 2018/01/31', 17, 'Matthew'),
	(42, b'1', 'Inefficient channels could hamper product placement on the market.', 'Distribution Channels - deleted on 2018/01/31', 7, 'Matthew'),
	(43, b'1', 'Instruction documentation and related transaction authorization may be lost causing difficulty in substantiating operational actions if challenged.', 'Record Retention - deleted on 2018/01/31', 8, 'Matthew'),
	(44, b'1', 'Duplicate payments to clients can occur.', 'Duplicate Payments - deleted on 2018/01/31', 8, 'Matthew'),
	(45, b'1', 'Incorrect fees could be levied to a certain category of investors.', 'Errors on Fees Levied - deleted on 2018/01/31', 7, 'Matthew'),
	(46, b'1', 'Inaccurate processing of initial and annual fees could occur.', 'Fee Processing Errors - deleted on 2018/01/31', 7, 'Matthew'),
	(47, b'1', 'Inaccurate financial reporting will impact financial results for the year. Poor company performance over the year can result in over stated budgeting.', 'Financial Reporting Errors - deleted on 2018/01/31', 3, 'Matthew'),
	(48, b'1', 'Budgets may be over/under stated.', 'Inadequate Budgeting - deleted on 2018/01/31', 3, 'Matthew'),
	(49, b'1', 'Income distributions are not processed or the distributions are incorrectly processed.', 'Income Distribution Processing - deleted on 2018/01/31', 3, 'Matthew'),
	(50, b'1', 'Distribution of interest on unallocated investment monies is disputed and not equitably distributed.', 'Income Distributions - Interest on Unallocated Investments - deleted on 2018/01/31', 8, 'Matthew'),
	(51, b'1', 'Fund cash and investments may be incomplete or do not agree with the Liability system.', 'Incomplete Fund and Cash Investments - deleted on 2018/01/31', 8, 'Matthew'),
	(52, b'1', 'Initial fees are not raised or initial fees may be raised incorrectly.', 'Incorrect Initial Fees - deleted on 2018/01/31', 3, 'Matthew'),
	(53, b'1', 'Investor funds may be used inappropriately to fund the Manager\'s operations i.e non-segregation', 'Incorrect Use of Funds - deleted on 2018/01/31', 8, 'Matthew'),
	(54, b'1', 'Electronic evidence and information may be lost due to system or network failure.', 'Information Protection - deleted on 2018/01/31', 8, 'Matthew'),
	(55, b'1', 'Tasks omitted and funds are not priced accurately.', 'Admin portfolio checklist - deleted on 2018/01/31', 8, 'jodie'),
	(56, b'1', 'Market data uploaded incorrectly or omitted (therefore prices are not up to date with the market), incorrect day uploaded.', 'Uploading Market Data - deleted on 2018/01/31', 8, 'jodie'),
	(57, b'1', 'Trades are omitted or erroneously captured.', 'Trades (Assets) - deleted on 2018/01/31', 8, 'jodie'),
	(58, b'1', 'Trades are omitted or erroneously captured. Money per SocGen account does not agree to the system, therefore cash goes missing.', 'Bank reconciliation (Asset) - deleted on 2018/01/31', 8, 'jodie'),
	(59, b'1', 'Instructions may not carried out accurately or omitted.', 'Holdings reconciliation - deleted on 2018/01/31', 8, 'jodie'),
	(60, b'1', 'Interest may not be allocated to the funds.', 'Interest (Cash and bond interest) - deleted on 2018/01/31', 8, 'jodie'),
	(61, b'1', 'Futures may not be processed or may be processed incorrectly.', 'Futures - deleted on 2018/01/31', 8, 'jodie'),
	(62, b'1', 'Calendar and Corporate events are not run.', 'Calendar and corporate events - deleted on 2018/01/31', 8, 'jodie'),
	(63, b'1', 'Prices are not accurate or omitted.', 'Price Verification checks - deleted on 2018/01/31', 8, 'jodie'),
	(64, b'1', 'Investment applications / additional contributions are captured incorrectly', 'Liability New Business - Instruction - deleted on 2018/01/31', 8, 'cmenton'),
	(65, b'0', 'User captures banking details incorrectly, which can result in the following:\r\n- Payments being made to the incorrect account\r\n- Payments not being successfully made\r\n- Debit order not being run successfully\r\n- Delay in the allocation of trades\r\n', 'Banking Details Captured Incorrectly', 18, 'cmenton'),
	(66, b'0', 'The risk is that a value of a transaction is captured incorrectly.', 'Transaction value captured incorrectly', 13, 'cmenton'),
	(67, b'0', 'The risk exists that we allocate a deposit to the incorrect investor.', 'Incorrect allocation of bank deposits', 13, 'cmenton'),
	(68, b'0', 'The risk exists that bank deposits aren\'t allocated at all', 'Bank deposits not allocated', 8, 'cmenton'),
	(69, b'0', 'The risk exists that any type of fee is incorrectly loaded or not loaded at all.', 'Incorrect or missed fees', 13, 'cmenton'),
	(70, b'0', 'We could receive  an application where the advisor fee confirmed is higher than allowed by legislation.', 'Fees non compliant with legislative limits', 8, 'cmenton'),
	(71, b'0', 'The risk exists that we process a new business transaction without  the appropriate supporting FICA documents', 'FICA non compliance', 8, 'cmenton'),
	(72, b'0', 'A risk exists that the change in static details are captured incorrectly.', 'Change in static details incorrectly captured', 7, 'cmenton'),
	(73, b'0', 'The risk exists that we capture an instruction that breaches regulatory limits', 'Breaching of regulatory product limits', 12, 'cmenton'),
	(74, b'0', 'We could capture annuity income parameters incorrectly or miss loading them ', 'Annuity Income parameters incorrectly captured or missed', 8, 'cmenton'),
	(75, b'0', 'The incorrect amount can be calculated and deducted from an instruction', 'Incorrect tax amount calculated and deducted', 8, 'cmenton'),
	(76, b'0', 'We could miss loading a beneficiary or load one incorrectly', 'Beneficiaries load is missed or incorrectly captured', 11, 'cmenton'),
	(77, b'0', 'there could be a possibility that we trade with the incorrect manager or into the incorrect trade account', 'Trading with incorrect manager or incorrect trade account', 8, 'cmenton'),
	(78, b'0', 'The team could potentially capture an instruction in to the incorrect portfolio.', 'Transactions are captured into the incorrect portfolio', 8, 'cmenton'),
	(79, b'0', 'There is a possibility that we could miss instructions', 'Missed Instructions', 8, 'cmenton'),
	(80, b'0', 'We could miss a trade', 'Not trading an asset', 8, 'cmenton'),
	(81, b'0', 'we could potentially miss settling a trade', 'Not settling a trade', 8, 'cmenton'),
	(82, b'0', 'We could miss processing an income distribution', 'Income Distribution not processed', 8, 'cmenton'),
	(83, b'0', 'The information we receive with regards to the income distribution could be wrong.', 'Income Distribution processed incorrectly', 8, 'cmenton'),
	(84, b'0', 'This is if someone makes a payment that isn\'t insturction or trade based', 'Unauthorised payments', 14, 'cmenton'),
	(85, b'0', 'Correspondence being generated with the incorrect information', 'Correspondence', 8, 'cmenton'),
	(86, b'0', 'Unauthorised access to the operating systems', 'Unauthorised access to the operating systems', 9, 'cmenton'),
	(87, b'0', 'Unauthorised access to online banking', 'Unauthorised access to online banking', 9, 'cmenton'),
	(88, b'0', 'submission of instructions that are not compliant with our business requirements', 'Incomplete Instructions', 8, 'cmenton'),
	(89, b'0', 'we run the risk of making the same payment twice', 'Duplicate payments', 8, 'cmenton'),
	(90, b'0', 'This is where a transaction is processed without the required authority', 'Unauthorised transaction', 9, 'cmenton'),
	(91, b'0', 'there is the risk that the incorrect amount is paid to the intended  payee', 'Payment of incorrect value', 8, 'cmenton'),
	(92, b'0', 'There is the risk that we process an instruction against the incorrect investor', 'Instruction processed against the incorrect investor', 8, 'cmenton'),
	(93, b'0', 'Trades are omitted or erroneously captured.', 'Trades are omitted or erroneously captured.', 8, 'jodie'),
	(94, b'0', 'Money per SocGen account does not agree to the Fundamental, therefore cash goes missing.', 'Money goes missing', 8, 'jodie'),
	(95, b'0', 'Unit reconciliation Assets do not agree to Liabilities. ', 'Assets don\'t agree to liabilities', 8, 'jodie'),
	(96, b'0', 'Unauthorised payments made, misappropriation of assets, incorrect values or omitted.', 'Unauthorised payments made, misappropriation of assets, incorrect values or omitted.', 8, 'jodie'),
	(97, b'0', '\'Stale trades omitted or processed incorrectly', 'Stale trades omitted or processed incorrectly', 8, 'jodie'),
	(98, b'0', 'Market data uploaded incorrectly or omitted (therefore prices are not up to date with the market), incorrect day uploaded.', 'Market data uploaded incorrectly or omitted', 8, 'jodie'),
	(99, b'0', 'Actions are omitted which results in errors on funds.', 'Actions are omitted which results in errors on funds.', 8, 'jodie'),
	(100, b'0', 'Interest not allocated to funds', 'Interest not allocated to funds', 8, 'jodie'),
	(101, b'0', 'Futures are not processed or processed incorrectly.', 'Futures are not processed or processed incorrectly.', 8, 'jodie'),
	(102, b'0', 'Calendar and Corporate events are not run.', 'Calendar and Corporate events are not run.', 8, 'jodie'),
	(103, b'0', 'Reports are not distributed, not updated from previous day or distributed to the wrong email address.', 'Reports not distributed, not updated or sent to incorrect Investor.', 8, 'jodie'),
	(104, b'0', 'Unlisted prices loaded incorrectly.', 'Unlisted prices loaded incorrectly.', 8, 'jodie'),
	(105, b'0', 'The Pricing team uses the consistency report to check movements are in line with the market (Market movement to indexes tab). The report will identify significant or zero movements which are flagged for investigation.', 'Disregard for the market movements.', 8, 'jodie'),
	(106, b'0', 'Incorrectly raised in FPM or omitted entirely.', 'Accruals incorrectly raised or omitted', 8, 'jodie'),
	(107, b'0', 'Tasks omitted and funds are not priced accurately.', 'Tasks omitted and funds are not priced accurately.', 8, 'jodie'),
	(108, b'0', 'Wrong codes used to set up new instruction/UT, instruction not completed.', 'Instructions not completed correctly or omitted', 8, 'jodie'),
	(109, b'0', 'Errors in calculations/management fee schedules due to manual process, paid the wrong account, reasonableness checks omitted resulting in dissatisfied clients due to correction of errors after payment date.', 'Management fee errors', 8, 'jodie'),
	(110, b'0', 'Expenses and fees are omitted, incorrectly processed onto FPM, or taken to the wrong fund.', 'Expenses and fees are omitted or incorrectly processed.', 8, 'jodie'),
	(111, b'0', 'Non compliant with market limits and/or exposure limits.', 'Breach in fund identified', 8, 'jodie');
/*!40000 ALTER TABLE `irc_risk` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
