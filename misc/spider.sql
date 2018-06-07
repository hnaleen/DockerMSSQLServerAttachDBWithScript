/**
USE [master]
GO
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'spider3') BEGIN
    CREATE LOGIN [spider3] WITH PASSWORD=N'spider3', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
    ALTER SERVER ROLE [sysadmin] ADD MEMBER [spider3]
END
GO
--With latest Dbase version this user no-longer need but as best practices create this user for backward compatibility
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'spider3_install') BEGIN
    CREATE LOGIN [spider3_install] WITH PASSWORD=N'spider3_install', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
END
GO 
*/

USE [master]
GO  
CREATE DATABASE TeamCI_Stella_OR_R81_OLD   
    ON 
	(FILENAME = 'C:\SQLServer\Spider3_1.mdf'),
(FILENAME = 'C:\SQLServer\Spider3_log_2.ldf'),
(FILENAME = 'C:\SQLServer\TeamCI_StellaSupport_OR_R81_eped.mdf'),
(FILENAME = 'C:\SQLServer\TeamCI_StellaSupport_OR_R81_eped_binary.mdf'),
(FILENAME = 'C:\SQLServer\TeamCI_StellaSupport_OR_R81_eped_binary_history.mdf'),
(FILENAME = 'C:\SQLServer\TeamCI_StellaSupport_OR_R81_eped_history.mdf'),
(FILENAME = 'C:\SQLServer\TeamCI_Stella_OR_R81_link.mdf'),
(FILENAME = 'C:\SQLServer\TeamCI_Stella_OR_R81_link_history.mdf'),
(FILENAME = 'C:\SQLServer\ACTIVITY_3.ndf'),
(FILENAME = 'C:\SQLServer\ACTIVITY_IDX_4.ndf'),
(FILENAME = 'C:\SQLServer\APPLOG_9.ndf'),
(FILENAME = 'C:\SQLServer\ARCHIVE04_10.ndf'),
(FILENAME = 'C:\SQLServer\ARCHIVE05_11.ndf'),
(FILENAME = 'C:\SQLServer\ARCHIVE06_12.ndf'),
(FILENAME = 'C:\SQLServer\ARCHIVE07_13.ndf'),
(FILENAME = 'C:\SQLServer\ARCHIVE08_14.ndf'),
(FILENAME = 'C:\SQLServer\BINARY_16.ndf'),
(FILENAME = 'C:\SQLServer\cc_17.ndf'),
(FILENAME = 'C:\SQLServer\cc_binary_18.ndf'),
(FILENAME = 'C:\SQLServer\cc_binary_history_19.ndf'),
(FILENAME = 'C:\SQLServer\cc_fts_51.ndf'),
(FILENAME = 'C:\SQLServer\cc_history_20.ndf'),
(FILENAME = 'C:\SQLServer\DATUM_5.ndf'),
(FILENAME = 'C:\SQLServer\DATUM_IDX_6.ndf'),
(FILENAME = 'C:\SQLServer\elearning_53.ndf'),
(FILENAME = 'C:\SQLServer\elearning_binary_54.ndf'),
(FILENAME = 'C:\SQLServer\elearning_binary_history_55.ndf'),
(FILENAME = 'C:\SQLServer\elearning_history_56.ndf'),
(FILENAME = 'C:\SQLServer\fluidbalance_29.ndf'),
(FILENAME = 'C:\SQLServer\fluidbalance_binary_30.ndf'),
(FILENAME = 'C:\SQLServer\fluidbalance_binary_history_31.ndf'),
(FILENAME = 'C:\SQLServer\fluidbalance_history_32.ndf'),
(FILENAME = 'C:\SQLServer\LOG_7.ndf'),
(FILENAME = 'C:\SQLServer\LOG_IDX_8.ndf'),
(FILENAME = 'C:\SQLServer\MAIN_15.ndf'),
(FILENAME = 'C:\SQLServer\medmigration_47.ndf'),
(FILENAME = 'C:\SQLServer\medmigration_binary_48.ndf'),
(FILENAME = 'C:\SQLServer\medmigration_binary_history_49.ndf'),
(FILENAME = 'C:\SQLServer\medmigration_history_50.ndf'),
(FILENAME = 'C:\SQLServer\medprodcatdist_43.ndf'),
(FILENAME = 'C:\SQLServer\medprodcatdist_binary_44.ndf'),
(FILENAME = 'C:\SQLServer\medprodcatdist_binary_history_45.ndf'),
(FILENAME = 'C:\SQLServer\medprodcatdist_history_46.ndf'),
(FILENAME = 'C:\SQLServer\med_33.ndf'),
(FILENAME = 'C:\SQLServer\med_binary_34.ndf'),
(FILENAME = 'C:\SQLServer\med_binary_history_35.ndf'),
(FILENAME = 'C:\SQLServer\med_fts_52.ndf'),
(FILENAME = 'C:\SQLServer\med_history_36.ndf'),
(FILENAME = 'C:\SQLServer\med_prod_cat_37.ndf'),
(FILENAME = 'C:\SQLServer\med_prod_cat_history_38.ndf'),
(FILENAME = 'C:\SQLServer\MESSENGER_57.ndf'),
(FILENAME = 'C:\SQLServer\MESSENGER_BINARY_58.ndf'),
(FILENAME = 'C:\SQLServer\nova_39.ndf'),
(FILENAME = 'C:\SQLServer\nova_binary_40.ndf'),
(FILENAME = 'C:\SQLServer\nova_binary_history_41.ndf'),
(FILENAME = 'C:\SQLServer\nova_history_42.ndf'),
(FILENAME = 'C:\SQLServer\overviews_25.ndf'),
(FILENAME = 'C:\SQLServer\overviews_binary_26.ndf'),
(FILENAME = 'C:\SQLServer\overviews_binary_history_27.ndf'),
(FILENAME = 'C:\SQLServer\overviews_history_28.ndf'),
(FILENAME = 'C:\SQLServer\referral_21.ndf'),
(FILENAME = 'C:\SQLServer\referral_binary_22.ndf'),
(FILENAME = 'C:\SQLServer\referral_binary_history_23.ndf'),
(FILENAME = 'C:\SQLServer\referral_history_24.ndf')
    FOR ATTACH;  
GO 