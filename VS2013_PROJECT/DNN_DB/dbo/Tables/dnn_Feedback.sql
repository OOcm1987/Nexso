﻿CREATE TABLE [dbo].[dnn_Feedback] (
    [ModuleID]             INT            NOT NULL,
    [Status]               INT            NOT NULL,
    [Subject]              NVARCHAR (200) NULL,
    [SenderEmail]          NVARCHAR (256) NOT NULL,
    [ApprovedBy]           INT            DEFAULT ((0)) NULL,
    [Message]              NVARCHAR (MAX) NOT NULL,
    [CreatedOnDateServer]  DATETIME       DEFAULT (getdate()) NOT NULL,
    [FeedbackID]           INT            IDENTITY (1, 1) NOT NULL,
    [PortalID]             INT            DEFAULT ((0)) NOT NULL,
    [CategoryID]           NVARCHAR (100) DEFAULT (NULL) NULL,
    [SenderName]           NVARCHAR (200) DEFAULT (NULL) NULL,
    [PublishedOnDate]      DATETIME       DEFAULT (NULL) NULL,
    [CreatedByUserID]      INT            DEFAULT (NULL) NULL,
    [LastModifiedOnDate]   DATETIME       DEFAULT (NULL) NULL,
    [LastModifiedByUserID] INT            DEFAULT (NULL) NULL,
    [SenderStreet]         NVARCHAR (50)  DEFAULT (NULL) NULL,
    [SenderCity]           NVARCHAR (50)  DEFAULT (NULL) NULL,
    [SenderRegion]         NVARCHAR (50)  DEFAULT (NULL) NULL,
    [SenderCountry]        NVARCHAR (50)  DEFAULT (NULL) NULL,
    [SenderPostalCode]     NVARCHAR (50)  DEFAULT (NULL) NULL,
    [SenderTelephone]      NVARCHAR (20)  DEFAULT (NULL) NULL,
    [SenderRemoteAddr]     NVARCHAR (50)  DEFAULT (NULL) NULL,
    [CreatedOnDate]        DATETIME       DEFAULT (getutcdate()) NOT NULL,
    [Referrer]             NVARCHAR (255) NULL,
    [UserAgent]            NVARCHAR (255) NULL,
    [ContextKey]           NVARCHAR (200) NULL,
    CONSTRAINT [PK_dnn_Feedback] PRIMARY KEY CLUSTERED ([FeedbackID] ASC),
    CONSTRAINT [FK_dnn_Feedback_dnn_Modules] FOREIGN KEY ([ModuleID]) REFERENCES [dbo].[dnn_Modules] ([ModuleID]) ON DELETE CASCADE
);
