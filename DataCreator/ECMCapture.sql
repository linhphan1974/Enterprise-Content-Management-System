/****** Object:  ForeignKey [FK_Annotation_Page]    Script Date: 10/09/2014 09:37:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Annotation_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[Annotation]'))
ALTER TABLE [dbo].[Annotation] DROP CONSTRAINT [FK_Annotation_Page]
GO
/****** Object:  ForeignKey [FK_Batch_BatchType]    Script Date: 10/09/2014 09:37:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Batch_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Batch]'))
ALTER TABLE [dbo].[Batch] DROP CONSTRAINT [FK_Batch_BatchType]
GO
/****** Object:  ForeignKey [FK_BatchFieldMetaData_BatchType]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldMetaData_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldMetaData]'))
ALTER TABLE [dbo].[BatchFieldMetaData] DROP CONSTRAINT [FK_BatchFieldMetaData_BatchType]
GO
/****** Object:  ForeignKey [FK_BatchFieldValue_Batch]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldValue_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldValue]'))
ALTER TABLE [dbo].[BatchFieldValue] DROP CONSTRAINT [FK_BatchFieldValue_Batch]
GO
/****** Object:  ForeignKey [FK_BatchFieldValue_BatchFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldValue_BatchFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldValue]'))
ALTER TABLE [dbo].[BatchFieldValue] DROP CONSTRAINT [FK_BatchFieldValue_BatchFieldMetaData]
GO
/****** Object:  ForeignKey [FK_BatchTypePermission_BatchType]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchTypePermission_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchTypePermission]'))
ALTER TABLE [dbo].[BatchTypePermission] DROP CONSTRAINT [FK_BatchTypePermission_BatchType]
GO
/****** Object:  ForeignKey [FK_Document_Batch]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Document_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[Document]'))
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [FK_Document_Batch]
GO
/****** Object:  ForeignKey [FK_DocumentFieldMetaData_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldMetaData_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldMetaData]'))
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [FK_DocumentFieldMetaData_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_DocumentFieldMetaData_DocumentType]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldMetaData_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldMetaData]'))
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [FK_DocumentFieldMetaData_DocumentType]
GO
/****** Object:  ForeignKey [FK_DocumentFiedPermission_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFiedPermission_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldPermission]'))
ALTER TABLE [dbo].[DocumentFieldPermission] DROP CONSTRAINT [FK_DocumentFiedPermission_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_DocumentFiedPermission_DocumentFieldMetaData1]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFiedPermission_DocumentFieldMetaData1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldPermission]'))
ALTER TABLE [dbo].[DocumentFieldPermission] DROP CONSTRAINT [FK_DocumentFiedPermission_DocumentFieldMetaData1]
GO
/****** Object:  ForeignKey [FK_DocumentFieldValue_Document]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldValue]'))
ALTER TABLE [dbo].[DocumentFieldValue] DROP CONSTRAINT [FK_DocumentFieldValue_Document]
GO
/****** Object:  ForeignKey [FK_DocumentFieldValue_DocumentFieldMetaData1]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldValue_DocumentFieldMetaData1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldValue]'))
ALTER TABLE [dbo].[DocumentFieldValue] DROP CONSTRAINT [FK_DocumentFieldValue_DocumentFieldMetaData1]
GO
/****** Object:  ForeignKey [FK_DocumentType_BatchType]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentType_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentType]'))
ALTER TABLE [dbo].[DocumentType] DROP CONSTRAINT [FK_DocumentType_BatchType]
GO
/****** Object:  ForeignKey [FK_OCRTemplatePage_OCRTemplate]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplatePage_OCRTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]'))
ALTER TABLE [dbo].[OCRTemplatePage] DROP CONSTRAINT [FK_OCRTemplatePage_OCRTemplate]
GO
/****** Object:  ForeignKey [FK_OCRTemplateZone_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone] DROP CONSTRAINT [FK_OCRTemplateZone_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_OCRTemplateZone_OCRTemplatePage]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_OCRTemplatePage]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone] DROP CONSTRAINT [FK_OCRTemplateZone_OCRTemplatePage]
GO
/****** Object:  ForeignKey [FK_Page_Document]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[Page]'))
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [FK_Page_Document]
GO
/****** Object:  ForeignKey [FK_Picklist_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Picklist_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[Picklist]'))
ALTER TABLE [dbo].[Picklist] DROP CONSTRAINT [FK_Picklist_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_BackupAnnotation_BackupPage]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupAnnotation_BackupPage]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseAnnotation]'))
ALTER TABLE [dbo].[ReleaseAnnotation] DROP CONSTRAINT [FK_BackupAnnotation_BackupPage]
GO
/****** Object:  ForeignKey [FK_BackupBatch_BatchType]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatch_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatch]'))
ALTER TABLE [dbo].[ReleaseBatch] DROP CONSTRAINT [FK_BackupBatch_BatchType]
GO
/****** Object:  ForeignKey [FK_BackupBatchFieldValue_BackupBatch]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatchFieldValue_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatchFieldValue]'))
ALTER TABLE [dbo].[ReleaseBatchFieldValue] DROP CONSTRAINT [FK_BackupBatchFieldValue_BackupBatch]
GO
/****** Object:  ForeignKey [FK_BackupBatchFieldValue_BatchFieldMetaData]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatchFieldValue_BatchFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatchFieldValue]'))
ALTER TABLE [dbo].[ReleaseBatchFieldValue] DROP CONSTRAINT [FK_BackupBatchFieldValue_BatchFieldMetaData]
GO
/****** Object:  ForeignKey [FK_BackupComment_BackupBatch]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupComment_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseComment]'))
ALTER TABLE [dbo].[ReleaseComment] DROP CONSTRAINT [FK_BackupComment_BackupBatch]
GO
/****** Object:  ForeignKey [FK_BackupComment_BackupDocument]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupComment_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseComment]'))
ALTER TABLE [dbo].[ReleaseComment] DROP CONSTRAINT [FK_BackupComment_BackupDocument]
GO
/****** Object:  ForeignKey [FK_BackupDocument_BackupBatch]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocument_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocument]'))
ALTER TABLE [dbo].[ReleaseDocument] DROP CONSTRAINT [FK_BackupDocument_BackupBatch]
GO
/****** Object:  ForeignKey [FK_BackupDocumentFieldValue_BackupDocument]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocumentFieldValue_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocumentFieldValue]'))
ALTER TABLE [dbo].[ReleaseDocumentFieldValue] DROP CONSTRAINT [FK_BackupDocumentFieldValue_BackupDocument]
GO
/****** Object:  ForeignKey [FK_BackupDocumentFieldValue_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocumentFieldValue_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocumentFieldValue]'))
ALTER TABLE [dbo].[ReleaseDocumentFieldValue] DROP CONSTRAINT [FK_BackupDocumentFieldValue_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_BackupPage_BackupDocument]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupPage_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleasePage]'))
ALTER TABLE [dbo].[ReleasePage] DROP CONSTRAINT [FK_BackupPage_BackupDocument]
GO
/****** Object:  ForeignKey [FK_TableFieldValue_Document]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue] DROP CONSTRAINT [FK_TableFieldValue_Document]
GO
/****** Object:  ForeignKey [FK_TableFieldValue_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue] DROP CONSTRAINT [FK_TableFieldValue_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_WorkflowDefinition_BatchType]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowDefinition_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowDefinition]'))
ALTER TABLE [dbo].[WorkflowDefinition] DROP CONSTRAINT [FK_WorkflowDefinition_BatchType]
GO
/****** Object:  ForeignKey [FK_WorkflowHumanStepDocumentTypePermission_WorkflowDefinition]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowHumanStepDocumentTypePermission_WorkflowDefinition]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepDocumentTypePermission]'))
ALTER TABLE [dbo].[WorkflowHumanStepDocumentTypePermission] DROP CONSTRAINT [FK_WorkflowHumanStepDocumentTypePermission_WorkflowDefinition]
GO
/****** Object:  ForeignKey [FK_WorkflowHumanStepPermission_WorkflowDefinition]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowHumanStepPermission_WorkflowDefinition]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepPermission]'))
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [FK_WorkflowHumanStepPermission_WorkflowDefinition]
GO
/****** Object:  Table [dbo].[Annotation]    Script Date: 10/09/2014 09:37:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Annotation_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[Annotation]'))
ALTER TABLE [dbo].[Annotation] DROP CONSTRAINT [FK_Annotation_Page]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Annotation__Id__6D381B7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Annotation] DROP CONSTRAINT [DF__Annotation__Id__6D381B7D]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Annotation]') AND type in (N'U'))
DROP TABLE [dbo].[Annotation]
GO
/****** Object:  Table [dbo].[ReleaseAnnotation]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupAnnotation_BackupPage]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseAnnotation]'))
ALTER TABLE [dbo].[ReleaseAnnotation] DROP CONSTRAINT [FK_BackupAnnotation_BackupPage]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ReleaseAnnot__Id__6A5BAED2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReleaseAnnotation] DROP CONSTRAINT [DF__ReleaseAnnot__Id__6A5BAED2]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseAnnotation]') AND type in (N'U'))
DROP TABLE [dbo].[ReleaseAnnotation]
GO
/****** Object:  Table [dbo].[OCRTemplateZone]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone] DROP CONSTRAINT [FK_OCRTemplateZone_DocumentFieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_OCRTemplatePage]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone] DROP CONSTRAINT [FK_OCRTemplateZone_OCRTemplatePage]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__OCRTempla__Field__677F4227]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OCRTemplateZone] DROP CONSTRAINT [DF__OCRTempla__Field__677F4227]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]') AND type in (N'U'))
DROP TABLE [dbo].[OCRTemplateZone]
GO
/****** Object:  Table [dbo].[ReleaseComment]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupComment_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseComment]'))
ALTER TABLE [dbo].[ReleaseComment] DROP CONSTRAINT [FK_BackupComment_BackupBatch]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupComment_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseComment]'))
ALTER TABLE [dbo].[ReleaseComment] DROP CONSTRAINT [FK_BackupComment_BackupDocument]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ReleaseComme__Id__5D01B3B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReleaseComment] DROP CONSTRAINT [DF__ReleaseComme__Id__5D01B3B4]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_BackupComment_IsBatchID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReleaseComment] DROP CONSTRAINT [DF_BackupComment_IsBatchID]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseComment]') AND type in (N'U'))
DROP TABLE [dbo].[ReleaseComment]
GO
/****** Object:  Table [dbo].[ReleaseDocumentFieldValue]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocumentFieldValue_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocumentFieldValue]'))
ALTER TABLE [dbo].[ReleaseDocumentFieldValue] DROP CONSTRAINT [FK_BackupDocumentFieldValue_BackupDocument]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocumentFieldValue_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocumentFieldValue]'))
ALTER TABLE [dbo].[ReleaseDocumentFieldValue] DROP CONSTRAINT [FK_BackupDocumentFieldValue_DocumentFieldMetaData]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ReleaseDocum__Id__5A254709]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReleaseDocumentFieldValue] DROP CONSTRAINT [DF__ReleaseDocum__Id__5A254709]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseDocumentFieldValue]') AND type in (N'U'))
DROP TABLE [dbo].[ReleaseDocumentFieldValue]
GO
/****** Object:  Table [dbo].[ReleasePage]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupPage_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleasePage]'))
ALTER TABLE [dbo].[ReleasePage] DROP CONSTRAINT [FK_BackupPage_BackupDocument]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ReleasePage__Id__5748DA5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReleasePage] DROP CONSTRAINT [DF__ReleasePage__Id__5748DA5E]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleasePage]') AND type in (N'U'))
DROP TABLE [dbo].[ReleasePage]
GO
/****** Object:  Table [dbo].[TableFieldValue]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue] DROP CONSTRAINT [FK_TableFieldValue_Document]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue] DROP CONSTRAINT [FK_TableFieldValue_DocumentFieldMetaData]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__TableFieldVa__Id__71C7C670]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TableFieldValue] DROP CONSTRAINT [DF__TableFieldVa__Id__71C7C670]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TableFieldValue]') AND type in (N'U'))
DROP TABLE [dbo].[TableFieldValue]
GO
/****** Object:  Table [dbo].[Page]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[Page]'))
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [FK_Page_Document]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Page__Id__63AEB143]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF__Page__Id__63AEB143]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Page_IsRejected]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Page] DROP CONSTRAINT [DF_Page_IsRejected]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Page]') AND type in (N'U'))
DROP TABLE [dbo].[Page]
GO
/****** Object:  Table [dbo].[Picklist]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Picklist_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[Picklist]'))
ALTER TABLE [dbo].[Picklist] DROP CONSTRAINT [FK_Picklist_DocumentFieldMetaData]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Picklist__Id__60D24498]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Picklist] DROP CONSTRAINT [DF__Picklist__Id__60D24498]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Picklist]') AND type in (N'U'))
DROP TABLE [dbo].[Picklist]
GO
/****** Object:  Table [dbo].[DocumentFieldPermission]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFiedPermission_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldPermission]'))
ALTER TABLE [dbo].[DocumentFieldPermission] DROP CONSTRAINT [FK_DocumentFiedPermission_DocumentFieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFiedPermission_DocumentFieldMetaData1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldPermission]'))
ALTER TABLE [dbo].[DocumentFieldPermission] DROP CONSTRAINT [FK_DocumentFiedPermission_DocumentFieldMetaData1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DocumentFiel__Id__546C6DB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldPermission] DROP CONSTRAINT [DF__DocumentFiel__Id__546C6DB3]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentFieldPermission]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentFieldPermission]
GO
/****** Object:  Table [dbo].[DocumentFieldValue]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldValue]'))
ALTER TABLE [dbo].[DocumentFieldValue] DROP CONSTRAINT [FK_DocumentFieldValue_Document]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldValue_DocumentFieldMetaData1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldValue]'))
ALTER TABLE [dbo].[DocumentFieldValue] DROP CONSTRAINT [FK_DocumentFieldValue_DocumentFieldMetaData1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DocumentFiel__Id__51900108]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldValue] DROP CONSTRAINT [DF__DocumentFiel__Id__51900108]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentFieldValue]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentFieldValue]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Document_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[Document]'))
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [FK_Document_Batch]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Document__Id__4CCB4BEB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [DF__Document__Id__4CCB4BEB]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Document_PageCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [DF_Document_PageCount]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Document_IsRejected]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [DF_Document_IsRejected]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Document]') AND type in (N'U'))
DROP TABLE [dbo].[Document]
GO
/****** Object:  Table [dbo].[DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldMetaData_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldMetaData]'))
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [FK_DocumentFieldMetaData_DocumentFieldMetaData]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldMetaData_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldMetaData]'))
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [FK_DocumentFieldMetaData_DocumentType]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DocumentFiel__Id__443605EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [DF__DocumentFiel__Id__443605EA]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DocumentFieldMetaData_IsRequired]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [DF_DocumentFieldMetaData_IsRequired]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DocumentFieldMetaData_IsRestricted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [DF_DocumentFieldMetaData_IsRestricted]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DocumentFieldMetaData_IsSystemField]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [DF_DocumentFieldMetaData_IsSystemField]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DocumentFieldMetaData_MaxLength]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [DF_DocumentFieldMetaData_MaxLength]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DocumentFieldMetaData_UseCurrentDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [DF_DocumentFieldMetaData_UseCurrentDate]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_DocumentFieldMetaData_IsLookup]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentFieldMetaData] DROP CONSTRAINT [DF_DocumentFieldMetaData_IsLookup]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentFieldMetaData]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentFieldMetaData]
GO
/****** Object:  Table [dbo].[BatchFieldValue]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldValue_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldValue]'))
ALTER TABLE [dbo].[BatchFieldValue] DROP CONSTRAINT [FK_BatchFieldValue_Batch]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldValue_BatchFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldValue]'))
ALTER TABLE [dbo].[BatchFieldValue] DROP CONSTRAINT [FK_BatchFieldValue_BatchFieldMetaData]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__BatchFieldVa__Id__4159993F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BatchFieldValue] DROP CONSTRAINT [DF__BatchFieldVa__Id__4159993F]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BatchFieldValue]') AND type in (N'U'))
DROP TABLE [dbo].[BatchFieldValue]
GO
/****** Object:  Table [dbo].[WorkflowHumanStepDocumentTypePermission]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowHumanStepDocumentTypePermission_WorkflowDefinition]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepDocumentTypePermission]'))
ALTER TABLE [dbo].[WorkflowHumanStepDocumentTypePermission] DROP CONSTRAINT [FK_WorkflowHumanStepDocumentTypePermission_WorkflowDefinition]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowHumanStepDocumentTypePermission_CanAccess]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepDocumentTypePermission] DROP CONSTRAINT [DF_WorkflowHumanStepDocumentTypePermission_CanAccess]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowHumanStepDocumentTypePermission_CanSeeRestrictedField]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepDocumentTypePermission] DROP CONSTRAINT [DF_WorkflowHumanStepDocumentTypePermission_CanSeeRestrictedField]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepDocumentTypePermission]') AND type in (N'U'))
DROP TABLE [dbo].[WorkflowHumanStepDocumentTypePermission]
GO
/****** Object:  Table [dbo].[WorkflowHumanStepPermission]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowHumanStepPermission_WorkflowDefinition]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepPermission]'))
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [FK_WorkflowHumanStepPermission_WorkflowDefinition]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__WorkflowH__Human__2D52A092]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF__WorkflowH__Human__2D52A092]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowActivityPermission_CanModifyDocument]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowActivityPermission_CanModifyDocument]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowActivityPermission_CanModifyIndexes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowActivityPermission_CanModifyIndexes]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowActivityPermission_CanDelete]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowActivityPermission_CanDelete]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowActivityPermission_CanAnnotate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowActivityPermission_CanAnnotate]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowActivityPermission_CanPrint]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowActivityPermission_CanPrint]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowActivityPermission_CanEmail]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowActivityPermission_CanEmail]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowActivityPermission_CanSendLink]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowActivityPermission_CanSendLink]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowActivityPermission_CanDownloadFilesOnDemand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowActivityPermission_CanDownloadFilesOnDemand]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowActivityPermission_CanReleaseLoosePage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowActivityPermission_CanReleaseLoosePage]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowActivityPermission_CanReject]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowActivityPermission_CanReject]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_WorkflowHumanStepPermission_CanDelegateItems]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowHumanStepPermission] DROP CONSTRAINT [DF_WorkflowHumanStepPermission_CanDelegateItems]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepPermission]') AND type in (N'U'))
DROP TABLE [dbo].[WorkflowHumanStepPermission]
GO
/****** Object:  Table [dbo].[ReleaseBatchFieldValue]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatchFieldValue_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatchFieldValue]'))
ALTER TABLE [dbo].[ReleaseBatchFieldValue] DROP CONSTRAINT [FK_BackupBatchFieldValue_BackupBatch]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatchFieldValue_BatchFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatchFieldValue]'))
ALTER TABLE [dbo].[ReleaseBatchFieldValue] DROP CONSTRAINT [FK_BackupBatchFieldValue_BatchFieldMetaData]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ReleaseBatch__Id__2A7633E7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReleaseBatchFieldValue] DROP CONSTRAINT [DF__ReleaseBatch__Id__2A7633E7]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseBatchFieldValue]') AND type in (N'U'))
DROP TABLE [dbo].[ReleaseBatchFieldValue]
GO
/****** Object:  Table [dbo].[ReleaseDocument]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocument_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocument]'))
ALTER TABLE [dbo].[ReleaseDocument] DROP CONSTRAINT [FK_BackupDocument_BackupBatch]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ReleaseDocum__Id__3E7D2C94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReleaseDocument] DROP CONSTRAINT [DF__ReleaseDocum__Id__3E7D2C94]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseDocument]') AND type in (N'U'))
DROP TABLE [dbo].[ReleaseDocument]
GO
/****** Object:  Table [dbo].[OCRTemplatePage]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplatePage_OCRTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]'))
ALTER TABLE [dbo].[OCRTemplatePage] DROP CONSTRAINT [FK_OCRTemplatePage_OCRTemplate]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__OCRTemplateP__Id__2799C73C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OCRTemplatePage] DROP CONSTRAINT [DF__OCRTemplateP__Id__2799C73C]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]') AND type in (N'U'))
DROP TABLE [dbo].[OCRTemplatePage]
GO
/****** Object:  Table [dbo].[ReleaseBatch]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatch_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatch]'))
ALTER TABLE [dbo].[ReleaseBatch] DROP CONSTRAINT [FK_BackupBatch_BatchType]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ReleaseBatch__Id__21E0EDE6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReleaseBatch] DROP CONSTRAINT [DF__ReleaseBatch__Id__21E0EDE6]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseBatch]') AND type in (N'U'))
DROP TABLE [dbo].[ReleaseBatch]
GO
/****** Object:  Table [dbo].[WorkflowDefinition]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowDefinition_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowDefinition]'))
ALTER TABLE [dbo].[WorkflowDefinition] DROP CONSTRAINT [FK_WorkflowDefinition_BatchType]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__WorkflowDefi__Id__24BD5A91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WorkflowDefinition] DROP CONSTRAINT [DF__WorkflowDefi__Id__24BD5A91]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowDefinition]') AND type in (N'U'))
DROP TABLE [dbo].[WorkflowDefinition]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 10/09/2014 09:37:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Batch_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Batch]'))
ALTER TABLE [dbo].[Batch] DROP CONSTRAINT [FK_Batch_BatchType]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Batch__Id__194BA7E5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Batch] DROP CONSTRAINT [DF__Batch__Id__194BA7E5]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Batch_DocCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Batch] DROP CONSTRAINT [DF_Batch_DocCount]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Batch_PageCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Batch] DROP CONSTRAINT [DF_Batch_PageCount]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Batch_IsProcessing]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Batch] DROP CONSTRAINT [DF_Batch_IsProcessing]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Batch_IsCompleted_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Batch] DROP CONSTRAINT [DF_Batch_IsCompleted_1]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Batch_IsRejected]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Batch] DROP CONSTRAINT [DF_Batch_IsRejected]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Batch_HasError]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Batch] DROP CONSTRAINT [DF_Batch_HasError]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Batch]') AND type in (N'U'))
DROP TABLE [dbo].[Batch]
GO
/****** Object:  Table [dbo].[BatchFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldMetaData_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldMetaData]'))
ALTER TABLE [dbo].[BatchFieldMetaData] DROP CONSTRAINT [FK_BatchFieldMetaData_BatchType]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__BatchFieldMe__Id__1392CE8F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BatchFieldMetaData] DROP CONSTRAINT [DF__BatchFieldMe__Id__1392CE8F]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_BatchFieldMetaData_IsSystemField]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BatchFieldMetaData] DROP CONSTRAINT [DF_BatchFieldMetaData_IsSystemField]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_BatchFieldMetaData_UseCurrentDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BatchFieldMetaData] DROP CONSTRAINT [DF_BatchFieldMetaData_UseCurrentDate]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_BatchFieldMetaData_IsLookup]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BatchFieldMetaData] DROP CONSTRAINT [DF_BatchFieldMetaData_IsLookup]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BatchFieldMetaData]') AND type in (N'U'))
DROP TABLE [dbo].[BatchFieldMetaData]
GO
/****** Object:  Table [dbo].[BatchTypePermission]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchTypePermission_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchTypePermission]'))
ALTER TABLE [dbo].[BatchTypePermission] DROP CONSTRAINT [FK_BatchTypePermission_BatchType]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__BatchTypePer__Id__0FC23DAB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BatchTypePermission] DROP CONSTRAINT [DF__BatchTypePer__Id__0FC23DAB]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_BatchTypePermission_CanCapture]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BatchTypePermission] DROP CONSTRAINT [DF_BatchTypePermission_CanCapture]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BatchTypePermission]') AND type in (N'U'))
DROP TABLE [dbo].[BatchTypePermission]
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentType_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentType]'))
ALTER TABLE [dbo].[DocumentType] DROP CONSTRAINT [FK_DocumentType_BatchType]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DocumentType__Id__0CE5D100]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentType] DROP CONSTRAINT [DF__DocumentType__Id__0CE5D100]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentType]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentType]
GO
/****** Object:  Table [dbo].[DocumentTypePermission]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DocumentT__DocTy__0A096455]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentTypePermission] DROP CONSTRAINT [DF__DocumentT__DocTy__0A096455]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypePermission]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentTypePermission]
GO
/****** Object:  Table [dbo].[History]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__History__Id__072CF7AA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[History] DROP CONSTRAINT [DF__History__Id__072CF7AA]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[History]') AND type in (N'U'))
DROP TABLE [dbo].[History]
GO
/****** Object:  Table [dbo].[HumanStepAnnotationPermission]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HumanStepAnnotationPermission]') AND type in (N'U'))
DROP TABLE [dbo].[HumanStepAnnotationPermission]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Language__Id__04508AFF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Language] DROP CONSTRAINT [DF__Language__Id__04508AFF]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Language]') AND type in (N'U'))
DROP TABLE [dbo].[Language]
GO
/****** Object:  Table [dbo].[LoosePage]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_LoosePage_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LoosePage] DROP CONSTRAINT [DF_LoosePage_Id]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_LoosePage_IsRejected]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LoosePage] DROP CONSTRAINT [DF_LoosePage_IsRejected]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoosePage]') AND type in (N'U'))
DROP TABLE [dbo].[LoosePage]
GO
/****** Object:  Table [dbo].[OCRTemplate]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__OCRTempla__DocTy__01741E54]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OCRTemplate] DROP CONSTRAINT [DF__OCRTempla__DocTy__01741E54]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplate]') AND type in (N'U'))
DROP TABLE [dbo].[OCRTemplate]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Comment__Id__7DA38D70]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [DF__Comment__Id__7DA38D70]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Comment_IsBatchID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [DF_Comment_IsBatchID]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
DROP TABLE [dbo].[Comment]
GO
/****** Object:  Table [dbo].[CustomActivitySetting]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__CustomActivi__Id__7AC720C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CustomActivitySetting] DROP CONSTRAINT [DF__CustomActivi__Id__7AC720C5]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomActivitySetting]') AND type in (N'U'))
DROP TABLE [dbo].[CustomActivitySetting]
GO
/****** Object:  Table [dbo].[ActionLog]    Script Date: 10/09/2014 09:37:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ActionLog__Id__77EAB41A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ActionLog] DROP CONSTRAINT [DF__ActionLog__Id__77EAB41A]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActionLog]') AND type in (N'U'))
DROP TABLE [dbo].[ActionLog]
GO
/****** Object:  Table [dbo].[AmbiguousDefinition]    Script Date: 10/09/2014 09:37:31 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__AmbiguousDef__Id__750E476F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AmbiguousDefinition] DROP CONSTRAINT [DF__AmbiguousDef__Id__750E476F]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AmbiguousDefinition]') AND type in (N'U'))
DROP TABLE [dbo].[AmbiguousDefinition]
GO
/****** Object:  Table [dbo].[BatchType]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__BatchType__Id__713DB68B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BatchType] DROP CONSTRAINT [DF__BatchType__Id__713DB68B]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_BatchType_IsWorkflowDefined]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BatchType] DROP CONSTRAINT [DF_BatchType_IsWorkflowDefined]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BatchType]') AND type in (N'U'))
DROP TABLE [dbo].[BatchType]
GO
/****** Object:  Table [dbo].[OutlookPictures]    Script Date: 10/09/2014 09:37:32 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_OutlookPictures_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OutlookPictures] DROP CONSTRAINT [DF_OutlookPictures_Id]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OutlookPictures]') AND type in (N'U'))
DROP TABLE [dbo].[OutlookPictures]
GO
/****** Object:  Table [dbo].[ReleaseTableFieldValue]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ReleaseTableFieldValue_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReleaseTableFieldValue] DROP CONSTRAINT [DF_ReleaseTableFieldValue_Id]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseTableFieldValue]') AND type in (N'U'))
DROP TABLE [dbo].[ReleaseTableFieldValue]
GO
/****** Object:  Table [dbo].[SearchQuery]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SearchQuery__Id__6E6149E0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SearchQuery] DROP CONSTRAINT [DF__SearchQuery__Id__6E6149E0]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchQuery]') AND type in (N'U'))
DROP TABLE [dbo].[SearchQuery]
GO
/****** Object:  Table [dbo].[SearchQueryExpression]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SearchQueryE__Id__6B84DD35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SearchQueryExpression] DROP CONSTRAINT [DF__SearchQueryE__Id__6B84DD35]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchQueryExpression]') AND type in (N'U'))
DROP TABLE [dbo].[SearchQueryExpression]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 10/09/2014 09:37:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Setting]') AND type in (N'U'))
DROP TABLE [dbo].[Setting]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Setting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Setting](
	[Key] [varchar](250) NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SearchQueryExpression]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchQueryExpression]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SearchQueryExpression](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[SearchQueryId] [uniqueidentifier] NOT NULL,
	[Condition] [varchar](50) NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[Operator] [varchar](50) NOT NULL,
	[Value1] [varchar](100) NULL,
	[Value2] [varchar](100) NULL,
 CONSTRAINT [PK_SearchQueryExpression] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SearchQuery]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchQuery]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SearchQuery](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[UserId] [uniqueidentifier] NOT NULL,
	[BatchTypeId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_SearchQuery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ReleaseTableFieldValue]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseTableFieldValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReleaseTableFieldValue](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ReleaseTableFieldValue_Id]  DEFAULT (newsequentialid()),
	[DocId] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[RowNumber] [int] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ReleaseTableFieldValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OutlookPictures]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OutlookPictures]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OutlookPictures](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_OutlookPictures_Id]  DEFAULT (newsequentialid()),
	[DocId] [uniqueidentifier] NOT NULL,
	[FileName] [varchar](50) NOT NULL,
	[FileBinary] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_OutlookPictures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BatchType]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BatchType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BatchType](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Icon] [varbinary](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[WorkflowDefinitionID] [uniqueidentifier] NOT NULL,
	[IsWorkflowDefined] [bit] NOT NULL CONSTRAINT [DF_BatchType_IsWorkflowDefined]  DEFAULT ((0)),
	[UniqueID] [varchar](50) NOT NULL,
	[BarcodeConfigurationXml] [nvarchar](max) NULL,
	[IsApplyForOutlook] [bit] NULL,
 CONSTRAINT [PK_BatchType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AmbiguousDefinition]    Script Date: 10/09/2014 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AmbiguousDefinition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AmbiguousDefinition](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[LanguageId] [uniqueidentifier] NOT NULL,
	[Text] [nvarchar](500) NOT NULL,
	[Unicode] [bit] NOT NULL,
 CONSTRAINT [PK_AmbiguousDefinition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ActionLog]    Script Date: 10/09/2014 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActionLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ActionLog](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomActivitySetting]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomActivitySetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomActivitySetting](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[ActivityId] [uniqueidentifier] NOT NULL,
	[Value] [varchar](max) NOT NULL,
 CONSTRAINT [PK_CustomActivitySetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comment](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[InstanceId] [uniqueidentifier] NOT NULL,
	[IsBatchID] [bit] NOT NULL CONSTRAINT [DF_Comment_IsBatchID]  DEFAULT ((0)),
	[Note] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OCRTemplate]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OCRTemplate](
	[DocTypeId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[LanguageId] [uniqueidentifier] NOT NULL
 CONSTRAINT [PK_OCRTemplate] PRIMARY KEY CLUSTERED 
(
	[DocTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoosePage]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoosePage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoosePage](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_LoosePage_Id]  DEFAULT (newsequentialid()),
	[BatchId] [uniqueidentifier] NOT NULL,
	[PageNumber] [int] NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileBinary] [varbinary](max) NULL,
	[FileHeader] [varbinary](max) NULL,
	[FilePath] [nvarchar](1024) NULL,
	[FileHash] [varchar](100) NOT NULL,
	[RotateAngle] [float] NOT NULL,
	[Height] [float] NOT NULL,
	[Width] [float] NOT NULL,
	[IsRejected] [bit] NOT NULL CONSTRAINT [DF_LoosePage_IsRejected]  DEFAULT ((0)),
	[Content] [nvarchar](max) NULL,
	[ContentLanguageCode] [varchar](50) NULL,
 CONSTRAINT [PK_LoosePage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Language]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Language]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Language](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](50) NOT NULL,
	[Format] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HumanStepAnnotationPermission]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HumanStepAnnotationPermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HumanStepAnnotationPermission](
	[HumanStepId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionID] [uniqueidentifier] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[UserGroupId] [uniqueidentifier] NOT NULL,
	[CanSeeHighlight] [bit] NOT NULL,
	[CanAddHighlight] [bit] NOT NULL,
	[CanDeleteHighlight] [bit] NOT NULL,
	[CanSeeText] [bit] NOT NULL,
	[CanAddText] [bit] NOT NULL,
	[CanDeleteText] [bit] NOT NULL,
	[CanHideRedaction] [bit] NOT NULL,
	[CanAddRedaction] [bit] NOT NULL,
	[CanDeleteRedaction] [bit] NOT NULL,
 CONSTRAINT [PK_HumanStepAnnotationPermission] PRIMARY KEY CLUSTERED 
(
	[HumanStepId] ASC,
	[WorkflowDefinitionID] ASC,
	[DocTypeId] ASC,
	[UserGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[History]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[History]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[History](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Action] [nvarchar](100) NOT NULL,
	[ActionDate] [datetime] NOT NULL,
	[BatchId] [uniqueidentifier] NULL,
	[WorkflowStep] [nvarchar](100) NULL,
	[CustomMsg] [nvarchar](max) NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentTypePermission]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypePermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentTypePermission](
	[DocTypeId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[UserGroupId] [uniqueidentifier] NOT NULL,
	[CanAccess] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentTypePermission] PRIMARY KEY CLUSTERED 
(
	[DocTypeId] ASC,
	[UserGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentType](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[BatchTypeId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Icon] [varbinary](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[UniqueID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BatchTypePermission]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BatchTypePermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BatchTypePermission](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__BatchTypePer__Id__0FC23DAB]  DEFAULT (newsequentialid()),
	[BatchTypeID] [uniqueidentifier] NOT NULL,
	[UserGroupID] [uniqueidentifier] NOT NULL,
	[CanCapture] [bit] NOT NULL CONSTRAINT [DF_BatchTypePermission_CanCapture]  DEFAULT ((0)),
	[CanAccess] [bit] NOT NULL,
	[CanIndex] [bit] NOT NULL,
	[CanClassify] [bit] NOT NULL,
 CONSTRAINT [PK_BatchTypePermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BatchFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BatchFieldMetaData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BatchFieldMetaData](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[BatchTypeId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DefaultValue] [nvarchar](4000) NULL,
	[DataType] [varchar](50) NOT NULL,
	[IsSystemField] [bit] NOT NULL CONSTRAINT [DF_BatchFieldMetaData_IsSystemField]  DEFAULT ((0)),
	[MaxLength] [int] NOT NULL,
	[UseCurrentDate] [bit] NOT NULL CONSTRAINT [DF_BatchFieldMetaData_UseCurrentDate]  DEFAULT ((0)),
	[DisplayOrder] [int] NOT NULL,
	[UniqueID] [varchar](50) NOT NULL,
	[IsLookup] [bit] NULL CONSTRAINT [DF_BatchFieldMetaData_IsLookup]  DEFAULT ((0)),
	[LookupXml] [nvarchar](max) NULL,
	[LookupActivityId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_BatchFieldMetaData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 10/09/2014 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Batch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Batch](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[BatchName] [varchar](250) NOT NULL,
	[BatchTypeId] [uniqueidentifier] NOT NULL,
	[DocCount] [int] NOT NULL CONSTRAINT [DF_Batch_DocCount]  DEFAULT ((0)),
	[PageCount] [int] NOT NULL CONSTRAINT [DF_Batch_PageCount]  DEFAULT ((0)),
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[LockedBy] [nvarchar](50) NULL,
	[DelegatedBy] [varchar](50) NULL,
	[DelegatedTo] [varchar](50) NULL,
	[WorkflowDefinitionID] [uniqueidentifier] NULL,
	[WorkflowInstanceID] [uniqueidentifier] NULL,
	[BlockingBookmark] [nvarchar](50) NULL,
	[BlockingActivityName] [nvarchar](1024) NULL,
	[BlockingActivityDescription] [nvarchar](1024) NULL,
	[BlockingDate] [datetime] NULL,
	[LastAccessedDate] [datetime] NULL,
	[LastAccessedBy] [nvarchar](50) NULL,
	[IsProcessing] [bit] NOT NULL CONSTRAINT [DF_Batch_IsProcessing]  DEFAULT ((0)),
	[IsCompleted] [bit] NOT NULL CONSTRAINT [DF_Batch_IsCompleted_1]  DEFAULT ((0)),
	[IsRejected] [bit] NOT NULL CONSTRAINT [DF_Batch_IsRejected]  DEFAULT ((0)),
	[HasError] [bit] NULL CONSTRAINT [DF_Batch_HasError]  DEFAULT ((0)),
	[StatusMsg] [nvarchar](max) NULL,
	[TransactionId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkflowDefinition]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowDefinition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkflowDefinition](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[DefinitionXML] [xml] NOT NULL,
	[BatchTypeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_WorkflowDefinition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ReleaseBatch]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseBatch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReleaseBatch](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[BatchTypeId] [uniqueidentifier] NOT NULL,
	[DocCount] [int] NOT NULL,
	[PageCount] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[IsRejected] [bit] NULL,
 CONSTRAINT [PK_BackupBatch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OCRTemplatePage]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OCRTemplatePage](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[OCRTemplateId] [uniqueidentifier] NOT NULL,
	[PageIndex] [int] NOT NULL,
	[Binary] [varbinary](max) NOT NULL,
	[DPI] [float] NOT NULL,
	[Width] [float] NULL,
	[Height] [float] NULL,
	[RotateAngle] [float] NULL,
	[FileExtension] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OCRTemplatePage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReleaseDocument]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseDocument]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReleaseDocument](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[DocTypeId] [uniqueidentifier] NULL,
	[PageCount] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[BinaryType] [varchar](20) NOT NULL,
	[ReleaseBatchId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_BackupDocument] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReleaseBatchFieldValue]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseBatchFieldValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReleaseBatchFieldValue](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[ReleaseBatchId] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_BackupBatchFieldValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[WorkflowHumanStepPermission]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepPermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkflowHumanStepPermission](
	[HumanStepId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[UserGroupId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionId] [uniqueidentifier] NOT NULL,
	[CanModifyDocument] [bit] NOT NULL CONSTRAINT [DF_WorkflowActivityPermission_CanModifyDocument]  DEFAULT ((0)),
	[CanModifyIndexes] [bit] NOT NULL CONSTRAINT [DF_WorkflowActivityPermission_CanModifyIndexes]  DEFAULT ((0)),
	[CanDelete] [bit] NOT NULL CONSTRAINT [DF_WorkflowActivityPermission_CanDelete]  DEFAULT ((0)),
	[CanAnnotate] [bit] NOT NULL CONSTRAINT [DF_WorkflowActivityPermission_CanAnnotate]  DEFAULT ((0)),
	[CanPrint] [bit] NOT NULL CONSTRAINT [DF_WorkflowActivityPermission_CanPrint]  DEFAULT ((0)),
	[CanEmail] [bit] NOT NULL CONSTRAINT [DF_WorkflowActivityPermission_CanEmail]  DEFAULT ((0)),
	[CanSendLink] [bit] NOT NULL CONSTRAINT [DF_WorkflowActivityPermission_CanSendLink]  DEFAULT ((0)),
	[CanDownloadFilesOnDemand] [bit] NOT NULL CONSTRAINT [DF_WorkflowActivityPermission_CanDownloadFilesOnDemand]  DEFAULT ((0)),
	[CanReleaseLoosePage] [bit] NOT NULL CONSTRAINT [DF_WorkflowActivityPermission_CanReleaseLoosePage]  DEFAULT ((0)),
	[CanReject] [bit] NOT NULL CONSTRAINT [DF_WorkflowActivityPermission_CanReject]  DEFAULT ((0)),
	[CanViewOtherItems] [bit] NOT NULL,
	[CanDelegateItems] [bit] NOT NULL CONSTRAINT [DF_WorkflowHumanStepPermission_CanDelegateItems]  DEFAULT ((0)),
 CONSTRAINT [PK_WorkflowHumanStepPermission] PRIMARY KEY CLUSTERED 
(
	[HumanStepId] ASC,
	[UserGroupId] ASC,
	[WorkflowDefinitionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[WorkflowHumanStepDocumentTypePermission]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepDocumentTypePermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkflowHumanStepDocumentTypePermission](
	[HumanStepId] [uniqueidentifier] NOT NULL,
	[WorkflowDefinitionID] [uniqueidentifier] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[UserGroupId] [uniqueidentifier] NOT NULL,
	[CanAccess] [bit] NOT NULL CONSTRAINT [DF_WorkflowHumanStepDocumentTypePermission_CanAccess]  DEFAULT ((0)),
	[CanSeeRestrictedField] [bit] NOT NULL CONSTRAINT [DF_WorkflowHumanStepDocumentTypePermission_CanSeeRestrictedField]  DEFAULT ((0)),
 CONSTRAINT [PK_WorkflowHumanStepDocumentTypePermission] PRIMARY KEY CLUSTERED 
(
	[HumanStepId] ASC,
	[WorkflowDefinitionID] ASC,
	[DocTypeId] ASC,
	[UserGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BatchFieldValue]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BatchFieldValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BatchFieldValue](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[BatchId] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_BatchFieldValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentFieldMetaData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentFieldMetaData](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__DocumentFiel__Id__443605EA]  DEFAULT (newsequentialid()),
	[ParentFieldId] [uniqueidentifier] NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DefaultValue] [nvarchar](4000) NULL,
	[DataType] [varchar](50) NOT NULL,
	[IsRequired] [bit] NOT NULL CONSTRAINT [DF_DocumentFieldMetaData_IsRequired]  DEFAULT ((0)),
	[IsRestricted] [bit] NOT NULL CONSTRAINT [DF_DocumentFieldMetaData_IsRestricted]  DEFAULT ((0)),
	[IsSystemField] [bit] NOT NULL CONSTRAINT [DF_DocumentFieldMetaData_IsSystemField]  DEFAULT ((0)),
	[MaxLength] [int] NOT NULL CONSTRAINT [DF_DocumentFieldMetaData_MaxLength]  DEFAULT ((0)),
	[UseCurrentDate] [bit] NOT NULL CONSTRAINT [DF_DocumentFieldMetaData_UseCurrentDate]  DEFAULT ((0)),
	[IsLookup] [bit] NOT NULL CONSTRAINT [DF_DocumentFieldMetaData_IsLookup]  DEFAULT ((0)),
	[DisplayOrder] [int] NOT NULL,
	[UniqueID] [varchar](50) NOT NULL,
	[ValidationScript] [varchar](max) NULL,
	[ValidationPattern] [varchar](max) NULL,
	[LookupXml] [nvarchar](max) NULL,
	[LookupActivityId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DocumentFieldMetaData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Document]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Document]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Document](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[PageCount] [int] NOT NULL CONSTRAINT [DF_Document_PageCount]  DEFAULT ((0)),
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[IsRejected] [bit] NOT NULL CONSTRAINT [DF_Document_IsRejected]  DEFAULT ((0)),
	[BinaryType] [varchar](20) NOT NULL,
	[BatchId] [uniqueidentifier] NOT NULL,
	[DocName] [nvarchar](150) NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentFieldValue]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentFieldValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentFieldValue](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[DocId] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_DocumentFieldValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentFieldPermission]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentFieldPermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentFieldPermission](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[FieldId] [uniqueidentifier] NOT NULL,
	[UserGroupId] [uniqueidentifier] NOT NULL,
	[DocTypeId] [uniqueidentifier] NOT NULL,
	[CanRead] [bit] NOT NULL,
	[CanWrite] [bit] NOT NULL,
	[Hidden] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentFiedPermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Picklist]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Picklist]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Picklist](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[FieldId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Picklist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Page]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Page]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Page](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__Page__Id__63AEB143]  DEFAULT (newsequentialid()),
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
	[IsRejected] [bit] NOT NULL CONSTRAINT [DF_Page_IsRejected]  DEFAULT ((0)),
	[Content] [nvarchar](max) NULL,
	[ContentLanguageCode] [varchar](50) NULL,
	[OriginalFileName] [varchar](1024) NULL,
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TableFieldValue]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TableFieldValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TableFieldValue](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[DocId] [uniqueidentifier] NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[RowNumber] [int] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_TableFieldValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ReleasePage]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleasePage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReleasePage](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__ReleasePage__Id__5748DA5E]  DEFAULT (newsequentialid()),
	[ReleaseDocId] [uniqueidentifier] NOT NULL,
	[PageNumber] [int] NOT NULL,
	[FileBinary] [varbinary](max) NULL,
	[FileHeader] [varbinary](max) NULL,
	[FileExtension] [nvarchar](10) NOT NULL,
	[FilePath] [nvarchar](1024) NULL,
	[FileHash] [varchar](100) NOT NULL,
	[RotateAngle] [float] NOT NULL,
	[Height] [float] NOT NULL,
	[Width] [float] NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_BackupPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReleaseDocumentFieldValue]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseDocumentFieldValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReleaseDocumentFieldValue](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[ReleaseDocId] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_BackupDocumentFieldValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ReleaseComment]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseComment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReleaseComment](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[ReleaseInstanceId] [uniqueidentifier] NOT NULL,
	[IsBatchId] [bit] NOT NULL CONSTRAINT [DF_BackupComment_IsBatchID]  DEFAULT ((0)),
	[Note] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BackupComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OCRTemplateZone]    Script Date: 10/09/2014 09:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OCRTemplateZone](
	[FieldMetaDataId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReleaseAnnotation]    Script Date: 10/09/2014 09:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReleaseAnnotation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReleaseAnnotation](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[ReleasePageId] [uniqueidentifier] NOT NULL,
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
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BackupAnnotation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Annotation]    Script Date: 10/09/2014 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Annotation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Annotation](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Annotation_Page]    Script Date: 10/09/2014 09:37:31 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Annotation_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[Annotation]'))
ALTER TABLE [dbo].[Annotation]  WITH CHECK ADD  CONSTRAINT [FK_Annotation_Page] FOREIGN KEY([PageId])
REFERENCES [dbo].[Page] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Annotation_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[Annotation]'))
ALTER TABLE [dbo].[Annotation] CHECK CONSTRAINT [FK_Annotation_Page]
GO
/****** Object:  ForeignKey [FK_Batch_BatchType]    Script Date: 10/09/2014 09:37:31 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Batch_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Batch]'))
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD  CONSTRAINT [FK_Batch_BatchType] FOREIGN KEY([BatchTypeId])
REFERENCES [dbo].[BatchType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Batch_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Batch]'))
ALTER TABLE [dbo].[Batch] CHECK CONSTRAINT [FK_Batch_BatchType]
GO
/****** Object:  ForeignKey [FK_BatchFieldMetaData_BatchType]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldMetaData_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldMetaData]'))
ALTER TABLE [dbo].[BatchFieldMetaData]  WITH CHECK ADD  CONSTRAINT [FK_BatchFieldMetaData_BatchType] FOREIGN KEY([BatchTypeId])
REFERENCES [dbo].[BatchType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldMetaData_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldMetaData]'))
ALTER TABLE [dbo].[BatchFieldMetaData] CHECK CONSTRAINT [FK_BatchFieldMetaData_BatchType]
GO
/****** Object:  ForeignKey [FK_BatchFieldValue_Batch]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldValue_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldValue]'))
ALTER TABLE [dbo].[BatchFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_BatchFieldValue_Batch] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batch] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldValue_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldValue]'))
ALTER TABLE [dbo].[BatchFieldValue] CHECK CONSTRAINT [FK_BatchFieldValue_Batch]
GO
/****** Object:  ForeignKey [FK_BatchFieldValue_BatchFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldValue_BatchFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldValue]'))
ALTER TABLE [dbo].[BatchFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_BatchFieldValue_BatchFieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[BatchFieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchFieldValue_BatchFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchFieldValue]'))
ALTER TABLE [dbo].[BatchFieldValue] CHECK CONSTRAINT [FK_BatchFieldValue_BatchFieldMetaData]
GO
/****** Object:  ForeignKey [FK_BatchTypePermission_BatchType]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchTypePermission_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchTypePermission]'))
ALTER TABLE [dbo].[BatchTypePermission]  WITH CHECK ADD  CONSTRAINT [FK_BatchTypePermission_BatchType] FOREIGN KEY([BatchTypeID])
REFERENCES [dbo].[BatchType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BatchTypePermission_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BatchTypePermission]'))
ALTER TABLE [dbo].[BatchTypePermission] CHECK CONSTRAINT [FK_BatchTypePermission_BatchType]
GO
/****** Object:  ForeignKey [FK_Document_Batch]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Document_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[Document]'))
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Batch] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batch] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Document_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[Document]'))
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Batch]
GO
/****** Object:  ForeignKey [FK_DocumentFieldMetaData_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldMetaData_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldMetaData]'))
ALTER TABLE [dbo].[DocumentFieldMetaData]  WITH CHECK ADD  CONSTRAINT [FK_DocumentFieldMetaData_DocumentFieldMetaData] FOREIGN KEY([Id])
REFERENCES [dbo].[DocumentFieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldMetaData_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldMetaData]'))
ALTER TABLE [dbo].[DocumentFieldMetaData] CHECK CONSTRAINT [FK_DocumentFieldMetaData_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_DocumentFieldMetaData_DocumentType]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldMetaData_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldMetaData]'))
ALTER TABLE [dbo].[DocumentFieldMetaData]  WITH CHECK ADD  CONSTRAINT [FK_DocumentFieldMetaData_DocumentType] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[DocumentType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldMetaData_DocumentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldMetaData]'))
ALTER TABLE [dbo].[DocumentFieldMetaData] CHECK CONSTRAINT [FK_DocumentFieldMetaData_DocumentType]
GO
/****** Object:  ForeignKey [FK_DocumentFiedPermission_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFiedPermission_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldPermission]'))
ALTER TABLE [dbo].[DocumentFieldPermission]  WITH CHECK ADD  CONSTRAINT [FK_DocumentFiedPermission_DocumentFieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[DocumentFieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFiedPermission_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldPermission]'))
ALTER TABLE [dbo].[DocumentFieldPermission] CHECK CONSTRAINT [FK_DocumentFiedPermission_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_DocumentFiedPermission_DocumentFieldMetaData1]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFiedPermission_DocumentFieldMetaData1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldPermission]'))
ALTER TABLE [dbo].[DocumentFieldPermission]  WITH CHECK ADD  CONSTRAINT [FK_DocumentFiedPermission_DocumentFieldMetaData1] FOREIGN KEY([FieldId])
REFERENCES [dbo].[DocumentFieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFiedPermission_DocumentFieldMetaData1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldPermission]'))
ALTER TABLE [dbo].[DocumentFieldPermission] CHECK CONSTRAINT [FK_DocumentFiedPermission_DocumentFieldMetaData1]
GO
/****** Object:  ForeignKey [FK_DocumentFieldValue_Document]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldValue]'))
ALTER TABLE [dbo].[DocumentFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_DocumentFieldValue_Document] FOREIGN KEY([DocId])
REFERENCES [dbo].[Document] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldValue]'))
ALTER TABLE [dbo].[DocumentFieldValue] CHECK CONSTRAINT [FK_DocumentFieldValue_Document]
GO
/****** Object:  ForeignKey [FK_DocumentFieldValue_DocumentFieldMetaData1]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldValue_DocumentFieldMetaData1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldValue]'))
ALTER TABLE [dbo].[DocumentFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_DocumentFieldValue_DocumentFieldMetaData1] FOREIGN KEY([FieldId])
REFERENCES [dbo].[DocumentFieldMetaData] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentFieldValue_DocumentFieldMetaData1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentFieldValue]'))
ALTER TABLE [dbo].[DocumentFieldValue] CHECK CONSTRAINT [FK_DocumentFieldValue_DocumentFieldMetaData1]
GO
/****** Object:  ForeignKey [FK_DocumentType_BatchType]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentType_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentType]'))
ALTER TABLE [dbo].[DocumentType]  WITH CHECK ADD  CONSTRAINT [FK_DocumentType_BatchType] FOREIGN KEY([BatchTypeId])
REFERENCES [dbo].[BatchType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentType_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentType]'))
ALTER TABLE [dbo].[DocumentType] CHECK CONSTRAINT [FK_DocumentType_BatchType]
GO
/****** Object:  ForeignKey [FK_OCRTemplatePage_OCRTemplate]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplatePage_OCRTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]'))
ALTER TABLE [dbo].[OCRTemplatePage]  WITH CHECK ADD  CONSTRAINT [FK_OCRTemplatePage_OCRTemplate] FOREIGN KEY([OCRTemplateId])
REFERENCES [dbo].[OCRTemplate] ([DocTypeId])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplatePage_OCRTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplatePage]'))
ALTER TABLE [dbo].[OCRTemplatePage] CHECK CONSTRAINT [FK_OCRTemplatePage_OCRTemplate]
GO
/****** Object:  ForeignKey [FK_OCRTemplateZone_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone]  WITH CHECK ADD  CONSTRAINT [FK_OCRTemplateZone_DocumentFieldMetaData] FOREIGN KEY([FieldMetaDataId])
REFERENCES [dbo].[DocumentFieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone] CHECK CONSTRAINT [FK_OCRTemplateZone_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_OCRTemplateZone_OCRTemplatePage]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_OCRTemplatePage]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone]  WITH CHECK ADD  CONSTRAINT [FK_OCRTemplateZone_OCRTemplatePage] FOREIGN KEY([OCRTemplatePageId])
REFERENCES [dbo].[OCRTemplatePage] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OCRTemplateZone_OCRTemplatePage]') AND parent_object_id = OBJECT_ID(N'[dbo].[OCRTemplateZone]'))
ALTER TABLE [dbo].[OCRTemplateZone] CHECK CONSTRAINT [FK_OCRTemplateZone_OCRTemplatePage]
GO
/****** Object:  ForeignKey [FK_Page_Document]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[Page]'))
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_Page_Document] FOREIGN KEY([DocId])
REFERENCES [dbo].[Document] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[Page]'))
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [FK_Page_Document]
GO
/****** Object:  ForeignKey [FK_Picklist_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Picklist_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[Picklist]'))
ALTER TABLE [dbo].[Picklist]  WITH CHECK ADD  CONSTRAINT [FK_Picklist_DocumentFieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[DocumentFieldMetaData] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Picklist_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[Picklist]'))
ALTER TABLE [dbo].[Picklist] CHECK CONSTRAINT [FK_Picklist_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_BackupAnnotation_BackupPage]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupAnnotation_BackupPage]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseAnnotation]'))
ALTER TABLE [dbo].[ReleaseAnnotation]  WITH CHECK ADD  CONSTRAINT [FK_BackupAnnotation_BackupPage] FOREIGN KEY([ReleasePageId])
REFERENCES [dbo].[ReleasePage] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupAnnotation_BackupPage]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseAnnotation]'))
ALTER TABLE [dbo].[ReleaseAnnotation] CHECK CONSTRAINT [FK_BackupAnnotation_BackupPage]
GO
/****** Object:  ForeignKey [FK_BackupBatch_BatchType]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatch_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatch]'))
ALTER TABLE [dbo].[ReleaseBatch]  WITH CHECK ADD  CONSTRAINT [FK_BackupBatch_BatchType] FOREIGN KEY([BatchTypeId])
REFERENCES [dbo].[BatchType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatch_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatch]'))
ALTER TABLE [dbo].[ReleaseBatch] CHECK CONSTRAINT [FK_BackupBatch_BatchType]
GO
/****** Object:  ForeignKey [FK_BackupBatchFieldValue_BackupBatch]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatchFieldValue_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatchFieldValue]'))
ALTER TABLE [dbo].[ReleaseBatchFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_BackupBatchFieldValue_BackupBatch] FOREIGN KEY([ReleaseBatchId])
REFERENCES [dbo].[ReleaseBatch] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatchFieldValue_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatchFieldValue]'))
ALTER TABLE [dbo].[ReleaseBatchFieldValue] CHECK CONSTRAINT [FK_BackupBatchFieldValue_BackupBatch]
GO
/****** Object:  ForeignKey [FK_BackupBatchFieldValue_BatchFieldMetaData]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatchFieldValue_BatchFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatchFieldValue]'))
ALTER TABLE [dbo].[ReleaseBatchFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_BackupBatchFieldValue_BatchFieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[BatchFieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupBatchFieldValue_BatchFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseBatchFieldValue]'))
ALTER TABLE [dbo].[ReleaseBatchFieldValue] CHECK CONSTRAINT [FK_BackupBatchFieldValue_BatchFieldMetaData]
GO
/****** Object:  ForeignKey [FK_BackupComment_BackupBatch]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupComment_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseComment]'))
ALTER TABLE [dbo].[ReleaseComment]  WITH CHECK ADD  CONSTRAINT [FK_BackupComment_BackupBatch] FOREIGN KEY([ReleaseInstanceId])
REFERENCES [dbo].[ReleaseBatch] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupComment_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseComment]'))
ALTER TABLE [dbo].[ReleaseComment] CHECK CONSTRAINT [FK_BackupComment_BackupBatch]
GO
/****** Object:  ForeignKey [FK_BackupComment_BackupDocument]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupComment_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseComment]'))
ALTER TABLE [dbo].[ReleaseComment]  WITH CHECK ADD  CONSTRAINT [FK_BackupComment_BackupDocument] FOREIGN KEY([ReleaseInstanceId])
REFERENCES [dbo].[ReleaseDocument] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupComment_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseComment]'))
ALTER TABLE [dbo].[ReleaseComment] CHECK CONSTRAINT [FK_BackupComment_BackupDocument]
GO
/****** Object:  ForeignKey [FK_BackupDocument_BackupBatch]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocument_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocument]'))
ALTER TABLE [dbo].[ReleaseDocument]  WITH CHECK ADD  CONSTRAINT [FK_BackupDocument_BackupBatch] FOREIGN KEY([ReleaseBatchId])
REFERENCES [dbo].[ReleaseBatch] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocument_BackupBatch]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocument]'))
ALTER TABLE [dbo].[ReleaseDocument] CHECK CONSTRAINT [FK_BackupDocument_BackupBatch]
GO
/****** Object:  ForeignKey [FK_BackupDocumentFieldValue_BackupDocument]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocumentFieldValue_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocumentFieldValue]'))
ALTER TABLE [dbo].[ReleaseDocumentFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_BackupDocumentFieldValue_BackupDocument] FOREIGN KEY([ReleaseDocId])
REFERENCES [dbo].[ReleaseDocument] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocumentFieldValue_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocumentFieldValue]'))
ALTER TABLE [dbo].[ReleaseDocumentFieldValue] CHECK CONSTRAINT [FK_BackupDocumentFieldValue_BackupDocument]
GO
/****** Object:  ForeignKey [FK_BackupDocumentFieldValue_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocumentFieldValue_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocumentFieldValue]'))
ALTER TABLE [dbo].[ReleaseDocumentFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_BackupDocumentFieldValue_DocumentFieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[DocumentFieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupDocumentFieldValue_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleaseDocumentFieldValue]'))
ALTER TABLE [dbo].[ReleaseDocumentFieldValue] CHECK CONSTRAINT [FK_BackupDocumentFieldValue_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_BackupPage_BackupDocument]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupPage_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleasePage]'))
ALTER TABLE [dbo].[ReleasePage]  WITH CHECK ADD  CONSTRAINT [FK_BackupPage_BackupDocument] FOREIGN KEY([ReleaseDocId])
REFERENCES [dbo].[ReleaseDocument] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BackupPage_BackupDocument]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReleasePage]'))
ALTER TABLE [dbo].[ReleasePage] CHECK CONSTRAINT [FK_BackupPage_BackupDocument]
GO
/****** Object:  ForeignKey [FK_TableFieldValue_Document]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_TableFieldValue_Document] FOREIGN KEY([DocId])
REFERENCES [dbo].[Document] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_Document]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue] CHECK CONSTRAINT [FK_TableFieldValue_Document]
GO
/****** Object:  ForeignKey [FK_TableFieldValue_DocumentFieldMetaData]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_TableFieldValue_DocumentFieldMetaData] FOREIGN KEY([FieldId])
REFERENCES [dbo].[DocumentFieldMetaData] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TableFieldValue_DocumentFieldMetaData]') AND parent_object_id = OBJECT_ID(N'[dbo].[TableFieldValue]'))
ALTER TABLE [dbo].[TableFieldValue] CHECK CONSTRAINT [FK_TableFieldValue_DocumentFieldMetaData]
GO
/****** Object:  ForeignKey [FK_WorkflowDefinition_BatchType]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowDefinition_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowDefinition]'))
ALTER TABLE [dbo].[WorkflowDefinition]  WITH CHECK ADD  CONSTRAINT [FK_WorkflowDefinition_BatchType] FOREIGN KEY([BatchTypeId])
REFERENCES [dbo].[BatchType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowDefinition_BatchType]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowDefinition]'))
ALTER TABLE [dbo].[WorkflowDefinition] CHECK CONSTRAINT [FK_WorkflowDefinition_BatchType]
GO
/****** Object:  ForeignKey [FK_WorkflowHumanStepDocumentTypePermission_WorkflowDefinition]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowHumanStepDocumentTypePermission_WorkflowDefinition]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepDocumentTypePermission]'))
ALTER TABLE [dbo].[WorkflowHumanStepDocumentTypePermission]  WITH CHECK ADD  CONSTRAINT [FK_WorkflowHumanStepDocumentTypePermission_WorkflowDefinition] FOREIGN KEY([WorkflowDefinitionID])
REFERENCES [dbo].[WorkflowDefinition] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowHumanStepDocumentTypePermission_WorkflowDefinition]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepDocumentTypePermission]'))
ALTER TABLE [dbo].[WorkflowHumanStepDocumentTypePermission] CHECK CONSTRAINT [FK_WorkflowHumanStepDocumentTypePermission_WorkflowDefinition]
GO
/****** Object:  ForeignKey [FK_WorkflowHumanStepPermission_WorkflowDefinition]    Script Date: 10/09/2014 09:37:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowHumanStepPermission_WorkflowDefinition]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepPermission]'))
ALTER TABLE [dbo].[WorkflowHumanStepPermission]  WITH CHECK ADD  CONSTRAINT [FK_WorkflowHumanStepPermission_WorkflowDefinition] FOREIGN KEY([WorkflowDefinitionId])
REFERENCES [dbo].[WorkflowDefinition] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkflowHumanStepPermission_WorkflowDefinition]') AND parent_object_id = OBJECT_ID(N'[dbo].[WorkflowHumanStepPermission]'))
ALTER TABLE [dbo].[WorkflowHumanStepPermission] CHECK CONSTRAINT [FK_WorkflowHumanStepPermission_WorkflowDefinition]
GO
