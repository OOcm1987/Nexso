﻿CREATE PROCEDURE [dbo].[dnn_AddTabModule]
    @TabId                  int,
    @ModuleId               int,
	@ModuleTitle			nvarchar(256),
	@Header					ntext,
	@Footer					ntext,
    @ModuleOrder            int,
    @PaneName               nvarchar(50),
    @CacheTime              int,
    @CacheMethod			varchar(50),
    @Alignment              nvarchar(10),
    @Color                  nvarchar(20),
    @Border                 nvarchar(1),
    @IconFile               nvarchar(100),
    @Visibility             int,
    @ContainerSrc           nvarchar(200),
    @DisplayTitle           bit,
    @DisplayPrint           bit,
    @DisplaySyndicate       bit,
    @IsWebSlice				bit,
    @WebSliceTitle			nvarchar(256),
    @WebSliceExpiryDate     datetime,
    @WebSliceTTL			int,
    @UniqueId				uniqueidentifier,
    @VersionGuid			uniqueidentifier,
    @DefaultLanguageGuid	uniqueidentifier,
    @LocalizedVersionGuid	uniqueidentifier,
    @CultureCode			nvarchar(10),
    @CreatedByUserID  		int

AS
    INSERT INTO dbo.dnn_TabModules ( 
        TabId,
        ModuleId,
        ModuleTitle,
        Header,
        Footer,
		ModuleOrder,
        PaneName,
        CacheTime,
        CacheMethod,
        Alignment,
        Color,
        Border,
        IconFile,
        Visibility,
        ContainerSrc,
        DisplayTitle,
        DisplayPrint,
        DisplaySyndicate,
        IsWebSlice,
        WebSliceTitle,
        WebSliceExpiryDate,
        WebSliceTTL,
        UniqueId,
        VersionGuid,
        DefaultLanguageGuid,
        LocalizedVersionGuid,
        CultureCode,
        CreatedByUserID,
        CreatedOnDate,
        LastModifiedByUserID,
        LastModifiedOnDate
    )
    VALUES (
        @TabId,
        @ModuleId,
        @ModuleTitle,
        @Header,
        @Footer,
        @ModuleOrder,
        @PaneName,
        @CacheTime,
        @CacheMethod,
        @Alignment,
        @Color,
        @Border,
        @IconFile,
        @Visibility,
        @ContainerSrc,
        @DisplayTitle,
        @DisplayPrint,
        @DisplaySyndicate,
        @IsWebSlice,
        @WebSliceTitle,
        @WebSliceExpiryDate,
        @WebSliceTTL,
        @UniqueId,
        @VersionGuid,
        @DefaultLanguageGuid,
        @LocalizedVersionGuid,
        @CultureCode,
        @CreatedByUserID,
        getdate(),
        @CreatedByUserID,
        getdate()
    )
