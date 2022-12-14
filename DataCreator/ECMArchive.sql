
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DocumentVersion', N'COLUMN',N'ChangeAction'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentVersion', @level2type=N'COLUMN',@level2name=N'ChangeAction'

GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue] DROP CONSTRAINT [FK_TableFieldValue_FieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SearchQueryExpression_SearchQuery]') AND parent_object_id = OBJECT_ID(N'[dbo].[SearchQueryExpression]'))
ALTER TABLE [dbo].[SearchQueryExpression] DROP CONSTRAINT [FK_SearchQueryExpression_SearchQuery]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SearchQuery_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SearchQuery]'))
ALTER TABLE [dbo].[SearchQuery] DROP CONSTRAINT [FK_SearchQuery_DocumentType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Picklist_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[Picklist]'))
ALTER TABLE [dbo].[Picklist] DROP CONSTRAINT [FK_Picklist_FieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PageVersion_DocumentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[PageVersion]'))
ALTER TABLE [dbo].[PageVersion] DROP CONSTRAINT [FK_PageVersion_DocumentVersion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[Page]'))
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [FK_Page_Document]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_OCRTemplatePage]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone] DROP CONSTRAINT [FK_OCRTemplateZone_OCRTemplatePage]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone] DROP CONSTRAINT [FK_OCRTemplateZone_FieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplatePage_OCRTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]'))
ALTER TABLE [dbo].[OCRTemplatePage] DROP CONSTRAINT [FK_OCRTemplatePage_OCRTemplate]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplate_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplate]'))
ALTER TABLE [dbo].[OCRTemplate] DROP CONSTRAINT [FK_OCRTemplate_DocumentType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LookupMap_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[LookupMap]'))
ALTER TABLE [dbo].[LookupMap] DROP CONSTRAINT [FK_LookupMap_FieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LookupInfo_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[LookupInfo]'))
ALTER TABLE [dbo].[LookupInfo] DROP CONSTRAINT [FK_LookupInfo_FieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldValue_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldValue]'))
ALTER TABLE [dbo].[FieldValue] DROP CONSTRAINT [FK_FieldValue_FieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldValue]'))
ALTER TABLE [dbo].[FieldValue] DROP CONSTRAINT [FK_FieldValue_Document]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldMetadataVersion_DocumentTypeVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldMetadataVersion]'))
ALTER TABLE [dbo].[FieldMetadataVersion] DROP CONSTRAINT [FK_FieldMetadataVersion_DocumentTypeVersion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldMetaData_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldMetaData]'))
ALTER TABLE [dbo].[FieldMetaData] DROP CONSTRAINT [FK_FieldMetaData_FieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldMetaData_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldMetaData]'))
ALTER TABLE [dbo].[FieldMetaData] DROP CONSTRAINT [FK_FieldMetaData_DocumentType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentVersion_DocumentTypeVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentVersion]'))
ALTER TABLE [dbo].[DocumentVersion] DROP CONSTRAINT [FK_DocumentVersion_DocumentTypeVersion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentTypePermission_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypePermission]'))
ALTER TABLE [dbo].[DocumentTypePermission] DROP CONSTRAINT [FK_DocumentTypePermission_DocumentType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldVersion_DocumentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldVersion]'))
ALTER TABLE [dbo].[DocumentFieldVersion] DROP CONSTRAINT [FK_DocumentFieldVersion_DocumentVersion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Document_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Document]'))
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [FK_Document_DocumentType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BarcodeConfiguration_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[BarcodeConfiguration]'))
ALTER TABLE [dbo].[BarcodeConfiguration] DROP CONSTRAINT [FK_BarcodeConfiguration_FieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BarcodeConfiguration_DocumentType1]') AND parent_object_id = OBJECT_ID(N'[dbo].[BarcodeConfiguration]'))
ALTER TABLE [dbo].[BarcodeConfiguration] DROP CONSTRAINT [FK_BarcodeConfiguration_DocumentType1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditPermission_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditPermission]'))
ALTER TABLE [dbo].[AuditPermission] DROP CONSTRAINT [FK_AuditPermission_DocumentType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AnnotationVersion_PageVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[AnnotationVersion]'))
ALTER TABLE [dbo].[AnnotationVersion] DROP CONSTRAINT [FK_AnnotationVersion_PageVersion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AnnotationPermission_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AnnotationPermission]'))
ALTER TABLE [dbo].[AnnotationPermission] DROP CONSTRAINT [FK_AnnotationPermission_DocumentType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Annotation_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[Annotation]'))
ALTER TABLE [dbo].[Annotation] DROP CONSTRAINT [FK_Annotation_Page]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__TableFieldVa__Id__6FE99F9F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TableFieldValue] DROP CONSTRAINT [DF__TableFieldVa__Id__6FE99F9F]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__SearchQueryE__Id__6EF57B66]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SearchQueryExpression] DROP CONSTRAINT [DF__SearchQueryE__Id__6EF57B66]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__SearchQuery__Id__6E01572D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SearchQuery] DROP CONSTRAINT [DF__SearchQuery__Id__6E01572D]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Picklist__Id__6D0D32F4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Picklist] DROP CONSTRAINT [DF__Picklist__Id__6D0D32F4]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__PageVersion__Id__24134F1B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PageVersion] DROP CONSTRAINT [DF__PageVersion__Id__24134F1B]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Page_Width]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_Width]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Page_Height]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_Height]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Page__Id__26EFBBC6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF__Page__Id__26EFBBC6]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OutlookPictu__Id__68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OutlookPictures] DROP CONSTRAINT [DF__OutlookPictu__Id__68487DD7]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OCRTempla__Field__6754599E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OCRTemplateZone] DROP CONSTRAINT [DF__OCRTempla__Field__6754599E]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OCRTemplateP__Id__66603565]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OCRTemplatePage] DROP CONSTRAINT [DF__OCRTemplateP__Id__66603565]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OCRTempla__DocTy__656C112C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OCRTemplate] DROP CONSTRAINT [DF__OCRTempla__DocTy__656C112C]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LookupMap__Id__6477ECF3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LookupMap] DROP CONSTRAINT [DF__LookupMap__Id__6477ECF3]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_LinkDocument_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LinkDocument] DROP CONSTRAINT [DF_LinkDocument_ID]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__FieldValue__Id__628FA481]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldValue] DROP CONSTRAINT [DF__FieldValue__Id__628FA481]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FieldMetadataVersion_IsSystemField]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetadataVersion] DROP CONSTRAINT [DF_FieldMetadataVersion_IsSystemField]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FieldMetadataVersion_MaxLength]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetadataVersion] DROP CONSTRAINT [DF_FieldMetadataVersion_MaxLength]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__FieldMetadat__ID__5FB337D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetadataVersion] DROP CONSTRAINT [DF__FieldMetadat__ID__5FB337D6]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FieldMetaData_UseCurrentDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetaData] DROP CONSTRAINT [DF_FieldMetaData_UseCurrentDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FieldMetaData_MaxLength]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetaData] DROP CONSTRAINT [DF_FieldMetaData_MaxLength]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FieldMetaData_IsSytemField]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetaData] DROP CONSTRAINT [DF_FieldMetaData_IsSytemField]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__FieldMetaDat__Id__33D4B598]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetaData] DROP CONSTRAINT [DF__FieldMetaDat__Id__33D4B598]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DocumentVersion_MajorVersion]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentVersion] DROP CONSTRAINT [DF_DocumentVersion_MajorVersion]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__DocumentVers__Id__59FA5E80]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentVersion] DROP CONSTRAINT [DF__DocumentVers__Id__59FA5E80]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__DocumentType__ID__59063A47]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentTypeVersion] DROP CONSTRAINT [DF__DocumentType__ID__59063A47]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DocumentTypePermission_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentTypePermission] DROP CONSTRAINT [DF_DocumentTypePermission_Id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DocumentType_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentType] DROP CONSTRAINT [DF_DocumentType_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__DocumentType__ID__5629CD9C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentType] DROP CONSTRAINT [DF__DocumentType__ID__5629CD9C]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__DocumentFiel__Id__5535A963]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldVersion] DROP CONSTRAINT [DF__DocumentFiel__Id__5535A963]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Document__ID__5441852A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [DF__Document__ID__5441852A]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BarcodeConfiguration_BarcodePosition]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BarcodeConfiguration] DROP CONSTRAINT [DF_BarcodeConfiguration_BarcodePosition]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BarcodeConfiguration_HasDoLookup]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BarcodeConfiguration] DROP CONSTRAINT [DF_BarcodeConfiguration_HasDoLookup]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BarcodeConfiguration_RemoveSeparatorPage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BarcodeConfiguration] DROP CONSTRAINT [DF_BarcodeConfiguration_RemoveSeparatorPage]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BarcodeConfiguration_IsDocumentSeparator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BarcodeConfiguration] DROP CONSTRAINT [DF_BarcodeConfiguration_IsDocumentSeparator]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__BarcodeConfi__Id__4F7CD00D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BarcodeConfiguration] DROP CONSTRAINT [DF__BarcodeConfi__Id__4F7CD00D]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AuditPermiss__Id__4E88ABD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AuditPermission] DROP CONSTRAINT [DF__AuditPermiss__Id__4E88ABD4]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AnnotationVe__Id__4D94879B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AnnotationVersion] DROP CONSTRAINT [DF__AnnotationVe__Id__4D94879B]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AnnotationPe__ID__4CA06362]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AnnotationPermission] DROP CONSTRAINT [DF__AnnotationPe__ID__4CA06362]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Annotation__Id__4BAC3F29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Annotation] DROP CONSTRAINT [DF__Annotation__Id__4BAC3F29]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AmbiguousDef__ID__4AB81AF0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AmbiguousDefinition] DROP CONSTRAINT [DF__AmbiguousDef__ID__4AB81AF0]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ActionLog__Id__49C3F6B7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ActionLog] DROP CONSTRAINT [DF__ActionLog__Id__49C3F6B7]
END

GO
/****** Object:  Table [dbo].[TableFieldValue]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TableFieldValue]') AND type in (N'U'))
DROP TABLE [dbo].[TableFieldValue]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Setting]') AND type in (N'U'))
DROP TABLE [dbo].[Setting]
GO
/****** Object:  Table [dbo].[SearchQueryExpression]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchQueryExpression]') AND type in (N'U'))
DROP TABLE [dbo].[SearchQueryExpression]
GO
/****** Object:  Table [dbo].[SearchQuery]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchQuery]') AND type in (N'U'))
DROP TABLE [dbo].[SearchQuery]
GO
/****** Object:  Table [dbo].[Picklist]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Picklist]') AND type in (N'U'))
DROP TABLE [dbo].[Picklist]
GO
/****** Object:  Table [dbo].[PageVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageVersion]') AND type in (N'U'))
DROP TABLE [dbo].[PageVersion]
GO
/****** Object:  Table [dbo].[Page]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Page]') AND type in (N'U'))
DROP TABLE [dbo].[Page]
GO
/****** Object:  Table [dbo].[OutlookPictures]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OutlookPictures]') AND type in (N'U'))
DROP TABLE [dbo].[OutlookPictures]
GO
/****** Object:  Table [dbo].[OCRTemplateZone]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]') AND type in (N'U'))
DROP TABLE [dbo].[OCRTemplateZone]
GO
/****** Object:  Table [dbo].[OCRTemplatePage]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]') AND type in (N'U'))
DROP TABLE [dbo].[OCRTemplatePage]
GO
/****** Object:  Table [dbo].[OCRTemplate]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplate]') AND type in (N'U'))
DROP TABLE [dbo].[OCRTemplate]
GO
/****** Object:  Table [dbo].[LookupMap]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupMap]') AND type in (N'U'))
DROP TABLE [dbo].[LookupMap]
GO
/****** Object:  Table [dbo].[LookupInfo]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupInfo]') AND type in (N'U'))
DROP TABLE [dbo].[LookupInfo]
GO
/****** Object:  Table [dbo].[LinkDocument]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkDocument]') AND type in (N'U'))
DROP TABLE [dbo].[LinkDocument]
GO
/****** Object:  Table [dbo].[FieldValue]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FieldValue]') AND type in (N'U'))
DROP TABLE [dbo].[FieldValue]
GO
/****** Object:  Table [dbo].[FieldMetadataVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FieldMetadataVersion]') AND type in (N'U'))
DROP TABLE [dbo].[FieldMetadataVersion]
GO
/****** Object:  Table [dbo].[FieldMetaData]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FieldMetaData]') AND type in (N'U'))
DROP TABLE [dbo].[FieldMetaData]
GO
/****** Object:  Table [dbo].[DocumentVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentVersion]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentVersion]
GO
/****** Object:  Table [dbo].[DocumentTypeVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypeVersion]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentTypeVersion]
GO
/****** Object:  Table [dbo].[DocumentTypePermission]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypePermission]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentTypePermission]
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentType]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentType]
GO
/****** Object:  Table [dbo].[DocumentFieldVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentFieldVersion]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentFieldVersion]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Document]') AND type in (N'U'))
DROP TABLE [dbo].[Document]
GO
/****** Object:  Table [dbo].[BarcodeConfiguration]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BarcodeConfiguration]') AND type in (N'U'))
DROP TABLE [dbo].[BarcodeConfiguration]
GO
/****** Object:  Table [dbo].[AuditPermission]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuditPermission]') AND type in (N'U'))
DROP TABLE [dbo].[AuditPermission]
GO
/****** Object:  Table [dbo].[AnnotationVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnnotationVersion]') AND type in (N'U'))
DROP TABLE [dbo].[AnnotationVersion]
GO
/****** Object:  Table [dbo].[AnnotationPermission]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnnotationPermission]') AND type in (N'U'))
DROP TABLE [dbo].[AnnotationPermission]
GO
/****** Object:  Table [dbo].[Annotation]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Annotation]') AND type in (N'U'))
DROP TABLE [dbo].[Annotation]
GO
/****** Object:  Table [dbo].[AmbiguousDefinition]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AmbiguousDefinition]') AND type in (N'U'))
DROP TABLE [dbo].[AmbiguousDefinition]
GO
/****** Object:  Table [dbo].[ActionLog]    Script Date: 2/27/2018 1:12:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActionLog]') AND type in (N'U'))
DROP TABLE [dbo].[ActionLog]
GO
/****** Object:  Table [dbo].[ActionLog]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActionLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ActionLog](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[IpAddress] [varchar](255) NOT NULL,
	[LoggedDate] [datetime] NOT NULL,
	[ActionName] [varchar](550) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[ObjectType] [varchar](50) NULL,
	[ObjectId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ActionLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AmbiguousDefinition]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AmbiguousDefinition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AmbiguousDefinition](
	[ID] [uniqueidentifier] NOT NULL,
	[LanguageId] [uniqueidentifier] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Unicode] [bit] NOT NULL,
 CONSTRAINT [PK_AmbiguousDefinition] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Annotation]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Annotation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Annotation](
	[Id] [uniqueidentifier] NOT NULL,
	[PageId] [uniqueidentifier] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Height] [float] NOT NULL,
	[Width] [float] NOT NULL,
	[Left] [float] NOT NULL,
	[LineEndAt] [varchar](50) NOT NULL,
	[LineStartAt] [varchar](50) NOT NULL,
	[LineStyle] [varchar](50) NOT NULL,
	[LineWeight] [int] NOT NULL,
	[RotateAngle] [float] NOT NULL,
	[Top] [float] NOT NULL,
	[LineColor] [varchar](50) NULL,
	[Content] [ntext] NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[DocId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Annotation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AnnotationPermission]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnnotationPermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AnnotationPermission](
	[ID] [uniqueidentifier] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[UserGroupId] [uniqueidentifier] NOT NULL,
	[AllowedSeeText] [bit] NOT NULL,
	[AllowedAddText] [bit] NOT NULL,
	[AllowedDeleteText] [bit] NOT NULL,
	[AllowedSeeHighlight] [bit] NOT NULL,
	[AllowedAddHighlight] [bit] NOT NULL,
	[AllowedDeleteHighlight] [bit] NOT NULL,
	[AllowedHideRedaction] [bit] NOT NULL,
	[AllowedAddRedaction] [bit] NOT NULL,
	[AllowedDeleteRedaction] [bit] NOT NULL,
 CONSTRAINT [PK_AnnotationPermission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AnnotationVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnnotationVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AnnotationVersion](
	[Id] [uniqueidentifier] NOT NULL,
	[PageVersionId] [uniqueidentifier] NOT NULL,
	[AnnotationId] [uniqueidentifier] NOT NULL,
	[PageId] [uniqueidentifier] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Height] [float] NOT NULL,
	[Width] [float] NULL,
	[Left] [float] NOT NULL,
	[LineEndAt] [varchar](50) NOT NULL,
	[LineStartAt] [varchar](50) NOT NULL,
	[LineStyle] [varchar](50) NOT NULL,
	[LineWeight] [int] NOT NULL,
	[RotateAngle] [float] NOT NULL,
	[Top] [float] NOT NULL,
	[LineColor] [varchar](50) NULL,
	[Content] [ntext] NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_AnnotationVersion_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AuditPermission]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuditPermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AuditPermission](
	[Id] [uniqueidentifier] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[UserGroupId] [uniqueidentifier] NOT NULL,
	[AllowedAudit] [bit] NULL,
	[AllowedViewLog] [bit] NULL,
	[AllowedDeleteLog] [bit] NULL,
	[AllowedViewReport] [bit] NULL,
	[AllowedRestoreDocument] [bit] NULL,
 CONSTRAINT [PK_AuditPermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BarcodeConfiguration]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BarcodeConfiguration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BarcodeConfiguration](
	[Id] [uniqueidentifier] NOT NULL,
	[DocumentTypeId] [uniqueidentifier] NOT NULL,
	[BarcodeType] [varchar](50) NOT NULL,
	[IsDocumentSeparator] [bit] NOT NULL,
	[RemoveSeparatorPage] [bit] NOT NULL,
	[HasDoLookup] [bit] NOT NULL,
	[MapValueToFieldId] [uniqueidentifier] NULL,
	[BarcodePosition] [int] NOT NULL,
 CONSTRAINT [PK_BarcodeConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Document]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Document]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Document](
	[ID] [uniqueidentifier] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[PageCount] [int] NOT NULL,
	[Version] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[BinaryType] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentFieldVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentFieldVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentFieldVersion](
	[Id] [uniqueidentifier] NOT NULL,
	[DocVersionId] [uniqueidentifier] NOT NULL,
	[DocId] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_DocumentFieldVersion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentType](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[IsOutlook] [bit] NOT NULL,
	[Icon] [varbinary](max) NULL,
 CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_DocumentTypeName] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentTypePermission]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypePermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentTypePermission](
	[Id] [uniqueidentifier] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[UserGroupId] [uniqueidentifier] NOT NULL,
	[AllowedDeletePage] [bit] NOT NULL,
	[AllowedAppendPage] [bit] NOT NULL,
	[AllowedReplacePage] [bit] NOT NULL,
	[AllowedSeeRetrictedField] [bit] NOT NULL,
	[AllowedUpdateFieldValue] [bit] NOT NULL,
	[AlowedPrintDocument] [bit] NOT NULL,
	[AllowedEmailDocument] [bit] NOT NULL,
	[AllowedRotatePage] [bit] NOT NULL,
	[AllowedExportFieldValue] [bit] NOT NULL,
	[AllowedDownloadOffline] [bit] NOT NULL,
	[AllowedHideAllAnnotation] [bit] NOT NULL,
	[AllowedCapture] [bit] NOT NULL,
	[AllowedSearch] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentTypePermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentTypeVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypeVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentTypeVersion](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[IsOutlook] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentTypeVersion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentVersion](
	[Id] [uniqueidentifier] NOT NULL,
	[DocTypeVersionId] [uniqueidentifier] NULL,
	[DocId] [uniqueidentifier] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[PageCount] [int] NOT NULL,
	[Version] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ChangeAction] [int] NOT NULL,
	[BinaryType] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DocumentVersion_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldMetaData]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FieldMetaData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FieldMetaData](
	[Id] [uniqueidentifier] NOT NULL,
	[ParentFieldId] [uniqueidentifier] NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[DefautValue] [nvarchar](4000) NULL,
	[DataType] [varchar](50) NOT NULL,
	[IsLookup] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsRestricted] [bit] NOT NULL,
	[IsRequired] [bit] NOT NULL,
	[IsSystemField] [bit] NOT NULL,
	[MaxLength] [int] NOT NULL,
	[UseCurrentDate] [bit] NOT NULL,
	[LookupXml] [xml] NULL,
 CONSTRAINT [PK_FieldMetaData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_FieldNameUnique] UNIQUE NONCLUSTERED 
(
	[DocTypeId] ASC,
	[Name] ASC,
	[ParentFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldMetadataVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FieldMetadataVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FieldMetadataVersion](
	[ID] [uniqueidentifier] NOT NULL,
	[MaxLength] [int] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[DefautValue] [nvarchar](4000) NULL,
	[DataType] [varchar](50) NOT NULL,
	[IsLookup] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsRestricted] [bit] NOT NULL,
	[IsRequired] [bit] NOT NULL,
	[IsSystemField] [bit] NOT NULL,
 CONSTRAINT [PK_FieldMetadataVersion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FieldValue]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FieldValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FieldValue](
	[Id] [uniqueidentifier] NOT NULL,
	[DocId] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_DocumentField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LinkDocument]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkDocument]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkDocument](
	[ID] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[LinkDocumentId] [uniqueidentifier] NOT NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_LinkDocument] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LookupInfo]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LookupInfo](
	[FieldId] [uniqueidentifier] NOT NULL,
	[ServerName] [varchar](100) NOT NULL,
	[DataProvider] [varchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[LookupType] [varchar](50) NOT NULL,
	[SqlCommand] [nvarchar](max) NOT NULL,
	[LookupColumn] [varchar](150) NULL,
	[SourceName] [varchar](150) NOT NULL,
	[DatabaseName] [varchar](150) NOT NULL,
	[MinPrefixLength] [int] NULL,
	[MaxLookupRow] [int] NULL,
	[ConnectionString] [varchar](500) NOT NULL,
	[LookupOperator] [varchar](50) NULL,
	[ParameterValue] [xml] NULL,
 CONSTRAINT [PK_LookupInfo] PRIMARY KEY CLUSTERED 
(
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LookupMap]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupMap]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LookupMap](
	[Id] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[DataColumn] [varchar](50) NOT NULL,
	[ArchiveFieldId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_LookupMap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OCRTemplate]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OCRTemplate](
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[LanguageId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_OCRTemplate] PRIMARY KEY CLUSTERED 
(
	[DocTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OCRTemplatePage]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OCRTemplatePage](
	[Id] [uniqueidentifier] NOT NULL,
	[PageIndex] [int] NOT NULL,
	[Binary] [varbinary](max) NOT NULL,
	[DPI] [float] NOT NULL,
	[OCRTemplateId] [uniqueidentifier] NOT NULL,
	[Width] [float] NULL,
	[Height] [float] NULL,
	[RotateAngle] [float] NULL,
	[FileExtension] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OCRTemplatePage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OCRTemplateZone]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OCRTemplateZone](
	[FieldMetaDataId] [uniqueidentifier] NOT NULL,
	[OCRTemplatePageId] [uniqueidentifier] NOT NULL,
	[Top] [float] NOT NULL,
	[Left] [float] NOT NULL,
	[Width] [float] NOT NULL,
	[Height] [float] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_OCRTemplateZone] PRIMARY KEY CLUSTERED 
(
	[FieldMetaDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OutlookPictures]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OutlookPictures]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OutlookPictures](
	[Id] [uniqueidentifier] NOT NULL,
	[DocId] [uniqueidentifier] NOT NULL,
	[FileName] [varchar](50) NOT NULL,
	[FileBinary] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_PagePictures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Page]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Page]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Page](
	[Id] [uniqueidentifier] NOT NULL,
	[DocId] [uniqueidentifier] NOT NULL,
	[PageNumber] [int] NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileBinary] [varbinary](max) NULL,
	[FileHeader] [varbinary](max) NULL,
	[FilePath] [nvarchar](1024) NULL,
	[FileHash] [varchar](100) NOT NULL,
	[RotateAngle] [float] NOT NULL,
	[Height] [float] NOT NULL,
	[Width] [float] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[ContentLanguageCode] [varchar](50) NULL,
	[OriginalFileName] [nvarchar](550) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PageVersion]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PageVersion](
	[Id] [uniqueidentifier] NOT NULL,
	[DocVersionId] [uniqueidentifier] NOT NULL,
	[PageId] [uniqueidentifier] NOT NULL,
	[DocId] [uniqueidentifier] NOT NULL,
	[PageNumber] [int] NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileBinary] [varbinary](max) NULL,
	[FileHeader] [varbinary](max) NULL,
	[FilePath] [nvarchar](1024) NULL,
	[FileHash] [varchar](100) NOT NULL,
	[Height] [float] NOT NULL,
	[Width] [float] NOT NULL,
	[RotateAngle] [float] NOT NULL,
 CONSTRAINT [PK_PageVersion_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Picklist]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Picklist]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Picklist](
	[Id] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Picklist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SearchQuery]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchQuery]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SearchQuery](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_SearchQuery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SearchQueryExpression]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchQueryExpression]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SearchQueryExpression](
	[Id] [uniqueidentifier] NOT NULL,
	[SearchQueryId] [uniqueidentifier] NOT NULL,
	[Condition] [varchar](50) NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[Operator] [varchar](50) NOT NULL,
	[Value1] [varchar](100) NULL,
	[Value2] [varchar](100) NULL,
	[FieldUniqueId] [varchar](50) NULL,
 CONSTRAINT [PK_SearchQueryExpression] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Setting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Setting](
	[Key] [varchar](255) NOT NULL,
	[Value] [varchar](max) NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TableFieldValue]    Script Date: 2/27/2018 1:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TableFieldValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TableFieldValue](
	[Id] [uniqueidentifier] NOT NULL,
	[DocId] [uniqueidentifier] NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[RowNumber] [int] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_TableFieldValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ActionLog__Id__49C3F6B7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ActionLog] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AmbiguousDef__ID__4AB81AF0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AmbiguousDefinition] ADD  DEFAULT (newsequentialid()) FOR [ID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Annotation__Id__4BAC3F29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Annotation] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AnnotationPe__ID__4CA06362]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AnnotationPermission] ADD  DEFAULT (newsequentialid()) FOR [ID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AnnotationVe__Id__4D94879B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AnnotationVersion] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AuditPermiss__Id__4E88ABD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AuditPermission] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__BarcodeConfi__Id__4F7CD00D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BarcodeConfiguration] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BarcodeConfiguration_IsDocumentSeparator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BarcodeConfiguration] ADD  CONSTRAINT [DF_BarcodeConfiguration_IsDocumentSeparator]  DEFAULT ((0)) FOR [IsDocumentSeparator]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BarcodeConfiguration_RemoveSeparatorPage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BarcodeConfiguration] ADD  CONSTRAINT [DF_BarcodeConfiguration_RemoveSeparatorPage]  DEFAULT ((0)) FOR [RemoveSeparatorPage]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BarcodeConfiguration_HasDoLookup]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BarcodeConfiguration] ADD  CONSTRAINT [DF_BarcodeConfiguration_HasDoLookup]  DEFAULT ((0)) FOR [HasDoLookup]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BarcodeConfiguration_BarcodePosition]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BarcodeConfiguration] ADD  CONSTRAINT [DF_BarcodeConfiguration_BarcodePosition]  DEFAULT ((1)) FOR [BarcodePosition]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Document__ID__5441852A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Document] ADD  DEFAULT (newsequentialid()) FOR [ID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__DocumentFiel__Id__5535A963]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldVersion] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__DocumentType__ID__5629CD9C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentType] ADD  DEFAULT (newsequentialid()) FOR [ID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DocumentType_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentType] ADD  CONSTRAINT [DF_DocumentType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DocumentTypePermission_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentTypePermission] ADD  CONSTRAINT [DF_DocumentTypePermission_Id]  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__DocumentType__ID__59063A47]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentTypeVersion] ADD  DEFAULT (newsequentialid()) FOR [ID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__DocumentVers__Id__59FA5E80]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentVersion] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DocumentVersion_MajorVersion]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentVersion] ADD  CONSTRAINT [DF_DocumentVersion_MajorVersion]  DEFAULT ((0)) FOR [Version]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__FieldMetaDat__Id__33D4B598]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetaData] ADD  CONSTRAINT [DF__FieldMetaDat__Id__33D4B598]  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FieldMetaData_IsSytemField]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetaData] ADD  CONSTRAINT [DF_FieldMetaData_IsSytemField]  DEFAULT ((0)) FOR [IsSystemField]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FieldMetaData_MaxLength]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetaData] ADD  CONSTRAINT [DF_FieldMetaData_MaxLength]  DEFAULT ((50)) FOR [MaxLength]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FieldMetaData_UseCurrentDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetaData] ADD  CONSTRAINT [DF_FieldMetaData_UseCurrentDate]  DEFAULT ((0)) FOR [UseCurrentDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__FieldMetadat__ID__5FB337D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetadataVersion] ADD  DEFAULT (newsequentialid()) FOR [ID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FieldMetadataVersion_MaxLength]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetadataVersion] ADD  CONSTRAINT [DF_FieldMetadataVersion_MaxLength]  DEFAULT ((50)) FOR [MaxLength]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FieldMetadataVersion_IsSystemField]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldMetadataVersion] ADD  CONSTRAINT [DF_FieldMetadataVersion_IsSystemField]  DEFAULT ((0)) FOR [IsSystemField]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__FieldValue__Id__628FA481]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FieldValue] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_LinkDocument_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LinkDocument] ADD  CONSTRAINT [DF_LinkDocument_ID]  DEFAULT (newsequentialid()) FOR [ID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LookupMap__Id__6477ECF3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LookupMap] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OCRTempla__DocTy__656C112C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OCRTemplate] ADD  DEFAULT (newsequentialid()) FOR [DocTypeId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OCRTemplateP__Id__66603565]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OCRTemplatePage] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OCRTempla__Field__6754599E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OCRTemplateZone] ADD  DEFAULT (newsequentialid()) FOR [FieldMetaDataId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OutlookPictu__Id__68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OutlookPictures] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Page__Id__26EFBBC6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF__Page__Id__26EFBBC6]  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Page_Height]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_Height]  DEFAULT ((0)) FOR [Height]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Page_Width]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_Width]  DEFAULT ((0)) FOR [Width]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__PageVersion__Id__24134F1B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PageVersion] ADD  CONSTRAINT [DF__PageVersion__Id__24134F1B]  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Picklist__Id__6D0D32F4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Picklist] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__SearchQuery__Id__6E01572D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SearchQuery] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__SearchQueryE__Id__6EF57B66]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SearchQueryExpression] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__TableFieldVa__Id__6FE99F9F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TableFieldValue] ADD  DEFAULT (newsequentialid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Annotation_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[Annotation]'))
ALTER TABLE [dbo].[Annotation]  WITH CHECK ADD  CONSTRAINT [FK_Annotation_Page] FOREIGN KEY([PageId])
REFERENCES [dbo].[Page] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Annotation_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[Annotation]'))
ALTER TABLE [dbo].[Annotation] CHECK CONSTRAINT [FK_Annotation_Page]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AnnotationPermission_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AnnotationPermission]'))
ALTER TABLE [dbo].[AnnotationPermission]  WITH CHECK ADD  CONSTRAINT [FK_AnnotationPermission_DocumentType] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[DocumentType] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AnnotationPermission_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AnnotationPermission]'))
ALTER TABLE [dbo].[AnnotationPermission] CHECK CONSTRAINT [FK_AnnotationPermission_DocumentType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AnnotationVersion_PageVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[AnnotationVersion]'))
ALTER TABLE [dbo].[AnnotationVersion]  WITH CHECK ADD  CONSTRAINT [FK_AnnotationVersion_PageVersion] FOREIGN KEY([PageVersionId])
REFERENCES [dbo].[PageVersion] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AnnotationVersion_PageVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[AnnotationVersion]'))
ALTER TABLE [dbo].[AnnotationVersion] CHECK CONSTRAINT [FK_AnnotationVersion_PageVersion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditPermission_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditPermission]'))
ALTER TABLE [dbo].[AuditPermission]  WITH CHECK ADD  CONSTRAINT [FK_AuditPermission_DocumentType] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[DocumentType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditPermission_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditPermission]'))
ALTER TABLE [dbo].[AuditPermission] CHECK CONSTRAINT [FK_AuditPermission_DocumentType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BarcodeConfiguration_DocumentType1]') AND parent_object_id = OBJECT_ID(N'[dbo].[BarcodeConfiguration]'))
ALTER TABLE [dbo].[BarcodeConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_BarcodeConfiguration_DocumentType1] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BarcodeConfiguration_DocumentType1]') AND parent_object_id = OBJECT_ID(N'[dbo].[BarcodeConfiguration]'))
ALTER TABLE [dbo].[BarcodeConfiguration] CHECK CONSTRAINT [FK_BarcodeConfiguration_DocumentType1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BarcodeConfiguration_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[BarcodeConfiguration]'))
ALTER TABLE [dbo].[BarcodeConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_BarcodeConfiguration_FieldMetaData] FOREIGN KEY([MapValueToFieldId])
REFERENCES [dbo].[FieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BarcodeConfiguration_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[BarcodeConfiguration]'))
ALTER TABLE [dbo].[BarcodeConfiguration] CHECK CONSTRAINT [FK_BarcodeConfiguration_FieldMetaData]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Document_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Document]'))
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[DocumentType] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Document_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Document]'))
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_DocumentType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldVersion_DocumentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldVersion]'))
ALTER TABLE [dbo].[DocumentFieldVersion]  WITH CHECK ADD  CONSTRAINT [FK_DocumentFieldVersion_DocumentVersion] FOREIGN KEY([DocVersionId])
REFERENCES [dbo].[DocumentVersion] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldVersion_DocumentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldVersion]'))
ALTER TABLE [dbo].[DocumentFieldVersion] CHECK CONSTRAINT [FK_DocumentFieldVersion_DocumentVersion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentTypePermission_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypePermission]'))
ALTER TABLE [dbo].[DocumentTypePermission]  WITH CHECK ADD  CONSTRAINT [FK_DocumentTypePermission_DocumentType] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[DocumentType] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentTypePermission_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypePermission]'))
ALTER TABLE [dbo].[DocumentTypePermission] CHECK CONSTRAINT [FK_DocumentTypePermission_DocumentType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentVersion_DocumentTypeVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentVersion]'))
ALTER TABLE [dbo].[DocumentVersion]  WITH CHECK ADD  CONSTRAINT [FK_DocumentVersion_DocumentTypeVersion] FOREIGN KEY([DocTypeVersionId])
REFERENCES [dbo].[DocumentTypeVersion] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentVersion_DocumentTypeVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentVersion]'))
ALTER TABLE [dbo].[DocumentVersion] CHECK CONSTRAINT [FK_DocumentVersion_DocumentTypeVersion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldMetaData_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldMetaData]'))
ALTER TABLE [dbo].[FieldMetaData]  WITH CHECK ADD  CONSTRAINT [FK_FieldMetaData_DocumentType] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[DocumentType] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldMetaData_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldMetaData]'))
ALTER TABLE [dbo].[FieldMetaData] CHECK CONSTRAINT [FK_FieldMetaData_DocumentType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldMetaData_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldMetaData]'))
ALTER TABLE [dbo].[FieldMetaData]  WITH CHECK ADD  CONSTRAINT [FK_FieldMetaData_FieldMetaData] FOREIGN KEY([ParentFieldId])
REFERENCES [dbo].[FieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldMetaData_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldMetaData]'))
ALTER TABLE [dbo].[FieldMetaData] CHECK CONSTRAINT [FK_FieldMetaData_FieldMetaData]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldMetadataVersion_DocumentTypeVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldMetadataVersion]'))
ALTER TABLE [dbo].[FieldMetadataVersion]  WITH CHECK ADD  CONSTRAINT [FK_FieldMetadataVersion_DocumentTypeVersion] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[DocumentTypeVersion] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldMetadataVersion_DocumentTypeVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldMetadataVersion]'))
ALTER TABLE [dbo].[FieldMetadataVersion] CHECK CONSTRAINT [FK_FieldMetadataVersion_DocumentTypeVersion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldValue]'))
ALTER TABLE [dbo].[FieldValue]  WITH CHECK ADD  CONSTRAINT [FK_FieldValue_Document] FOREIGN KEY([DocId])
REFERENCES [dbo].[Document] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldValue]'))
ALTER TABLE [dbo].[FieldValue] CHECK CONSTRAINT [FK_FieldValue_Document]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldValue_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldValue]'))
ALTER TABLE [dbo].[FieldValue]  WITH CHECK ADD  CONSTRAINT [FK_FieldValue_FieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[FieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FieldValue_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[FieldValue]'))
ALTER TABLE [dbo].[FieldValue] CHECK CONSTRAINT [FK_FieldValue_FieldMetaData]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LookupInfo_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[LookupInfo]'))
ALTER TABLE [dbo].[LookupInfo]  WITH CHECK ADD  CONSTRAINT [FK_LookupInfo_FieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[FieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LookupInfo_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[LookupInfo]'))
ALTER TABLE [dbo].[LookupInfo] CHECK CONSTRAINT [FK_LookupInfo_FieldMetaData]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LookupMap_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[LookupMap]'))
ALTER TABLE [dbo].[LookupMap]  WITH CHECK ADD  CONSTRAINT [FK_LookupMap_FieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[FieldMetaData] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LookupMap_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[LookupMap]'))
ALTER TABLE [dbo].[LookupMap] CHECK CONSTRAINT [FK_LookupMap_FieldMetaData]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplate_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplate]'))
ALTER TABLE [dbo].[OCRTemplate]  WITH CHECK ADD  CONSTRAINT [FK_OCRTemplate_DocumentType] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[DocumentType] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplate_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplate]'))
ALTER TABLE [dbo].[OCRTemplate] CHECK CONSTRAINT [FK_OCRTemplate_DocumentType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplatePage_OCRTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]'))
ALTER TABLE [dbo].[OCRTemplatePage]  WITH CHECK ADD  CONSTRAINT [FK_OCRTemplatePage_OCRTemplate] FOREIGN KEY([OCRTemplateId])
REFERENCES [dbo].[OCRTemplate] ([DocTypeId])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplatePage_OCRTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]'))
ALTER TABLE [dbo].[OCRTemplatePage] CHECK CONSTRAINT [FK_OCRTemplatePage_OCRTemplate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone]  WITH CHECK ADD  CONSTRAINT [FK_OCRTemplateZone_FieldMetaData] FOREIGN KEY([FieldMetaDataId])
REFERENCES [dbo].[FieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone] CHECK CONSTRAINT [FK_OCRTemplateZone_FieldMetaData]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_OCRTemplatePage]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone]  WITH CHECK ADD  CONSTRAINT [FK_OCRTemplateZone_OCRTemplatePage] FOREIGN KEY([OCRTemplatePageId])
REFERENCES [dbo].[OCRTemplatePage] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_OCRTemplatePage]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone] CHECK CONSTRAINT [FK_OCRTemplateZone_OCRTemplatePage]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[Page]'))
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_Page_Document] FOREIGN KEY([DocId])
REFERENCES [dbo].[Document] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[Page]'))
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [FK_Page_Document]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PageVersion_DocumentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[PageVersion]'))
ALTER TABLE [dbo].[PageVersion]  WITH CHECK ADD  CONSTRAINT [FK_PageVersion_DocumentVersion] FOREIGN KEY([DocVersionId])
REFERENCES [dbo].[DocumentVersion] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PageVersion_DocumentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[PageVersion]'))
ALTER TABLE [dbo].[PageVersion] CHECK CONSTRAINT [FK_PageVersion_DocumentVersion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Picklist_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[Picklist]'))
ALTER TABLE [dbo].[Picklist]  WITH CHECK ADD  CONSTRAINT [FK_Picklist_FieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[FieldMetaData] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Picklist_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[Picklist]'))
ALTER TABLE [dbo].[Picklist] CHECK CONSTRAINT [FK_Picklist_FieldMetaData]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SearchQuery_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SearchQuery]'))
ALTER TABLE [dbo].[SearchQuery]  WITH CHECK ADD  CONSTRAINT [FK_SearchQuery_DocumentType] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[DocumentType] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SearchQuery_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SearchQuery]'))
ALTER TABLE [dbo].[SearchQuery] CHECK CONSTRAINT [FK_SearchQuery_DocumentType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SearchQueryExpression_SearchQuery]') AND parent_object_id = OBJECT_ID(N'[dbo].[SearchQueryExpression]'))
ALTER TABLE [dbo].[SearchQueryExpression]  WITH CHECK ADD  CONSTRAINT [FK_SearchQueryExpression_SearchQuery] FOREIGN KEY([SearchQueryId])
REFERENCES [dbo].[SearchQuery] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SearchQueryExpression_SearchQuery]') AND parent_object_id = OBJECT_ID(N'[dbo].[SearchQueryExpression]'))
ALTER TABLE [dbo].[SearchQueryExpression] CHECK CONSTRAINT [FK_SearchQueryExpression_SearchQuery]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_TableFieldValue_FieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[FieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_FieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue] CHECK CONSTRAINT [FK_TableFieldValue_FieldMetaData]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DocumentVersion', N'COLUMN',N'ChangeAction'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Change what? Page or Annotation or Index values' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DocumentVersion', @level2type=N'COLUMN',@level2name=N'ChangeAction'
GO
