﻿/*
Deployment script for DW_REI_SALGADOS

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DW_REI_SALGADOS"
:setvar DefaultFilePrefix "DW_REI_SALGADOS"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Rename refactoring operation with key 08cc9f1b-9d0e-4ee3-a5ec-d2020d6cf61d is skipped, element [dbo].[Dim_Tempo].[Id] (SqlSimpleColumn) will not be renamed to Cod_Dia';


GO
PRINT N'Rename refactoring operation with key 4d21870b-54a2-4e1d-a058-fcf6a2653a29 is skipped, element [dbo].[Dim_Tempo].[Nome_Mes_Ano] (SqlSimpleColumn) will not be renamed to Cod_Mes_Ano';


GO
PRINT N'Rename refactoring operation with key 32644861-9c4f-467b-939e-2fc78535fb3f is skipped, element [dbo].[Dim_Tempo].[E_Dia_Semana] (SqlSimpleColumn) will not be renamed to Tipo_Dia';


GO
PRINT N'Creating [dbo].[Dim_Tempo]...';


GO
CREATE TABLE [dbo].[Dim_Tempo] (
    [Cod_Dia]            NVARCHAR (50) NOT NULL,
    [Data]               DATE          NULL,
    [Cod_Semana]         INT           NULL,
    [Nome_Dia_Semana]    NVARCHAR (50) NULL,
    [Cod_Mes]            INT           NULL,
    [Nome_Mes]           NVARCHAR (50) NULL,
    [Cod_Mes_Ano]        NVARCHAR (50) NULL,
    [Nome_Mes_Ano]       NVARCHAR (50) NULL,
    [Cod_Trimestre]      INT           NULL,
    [Nome_Trimestre]     NVARCHAR (50) NULL,
    [Cod_Trimestre_Ano]  NVARCHAR (50) NULL,
    [Nome_Trimestre_Ano] NVARCHAR (50) NULL,
    [Cod_Semestre]       INT           NULL,
    [Nome_Semestre]      NVARCHAR (50) NULL,
    [Cod_Semestre_Ano]   NVARCHAR (50) NULL,
    [Nome_Semestre_Ano]  NVARCHAR (50) NULL,
    [Ano]                NVARCHAR (50) NULL,
    [Tipo_Dia]           NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Cod_Dia] ASC)
);


GO
-- Refactoring step to update target server with deployed transaction logs
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '08cc9f1b-9d0e-4ee3-a5ec-d2020d6cf61d')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('08cc9f1b-9d0e-4ee3-a5ec-d2020d6cf61d')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '4d21870b-54a2-4e1d-a058-fcf6a2653a29')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('4d21870b-54a2-4e1d-a058-fcf6a2653a29')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '32644861-9c4f-467b-939e-2fc78535fb3f')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('32644861-9c4f-467b-939e-2fc78535fb3f')

GO

GO
PRINT N'Update complete.';


GO
