USE [Only]
GO
/****** Object:  Table [dbo].[BackgroundJob]    Script Date: 07/09/2017 15:30:59 ******/
DROP TABLE [dbo].[BackgroundJob]
GO
/****** Object:  Table [dbo].[BackgroundJobLog]    Script Date: 07/09/2017 15:30:59 ******/
DROP TABLE [dbo].[BackgroundJobLog]
GO
/****** Object:  Table [dbo].[BackgroundJobLog]    Script Date: 07/09/2017 15:30:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BackgroundJobLog](
	[BackgroundJobLogId] [uniqueidentifier] NOT NULL,
	[BackgroundJobId] [uniqueidentifier] NULL,
	[JobName] [nvarchar](255) NULL,
	[ExecutionTime] [datetime] NULL,
	[ExecutionDuration] [decimal](18, 2) NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[RunLog] [text] NULL,
 CONSTRAINT [PK_BACKGROUNDJOBLOG] PRIMARY KEY NONCLUSTERED 
(
	[BackgroundJobLogId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJobLog', @level2type=N'COLUMN',@level2name=N'BackgroundJobLogId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'JobId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJobLog', @level2type=N'COLUMN',@level2name=N'BackgroundJobId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJobLog', @level2type=N'COLUMN',@level2name=N'JobName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJobLog', @level2type=N'COLUMN',@level2name=N'ExecutionTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行持续时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJobLog', @level2type=N'COLUMN',@level2name=N'ExecutionDuration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJobLog', @level2type=N'COLUMN',@level2name=N'CreatedDateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJobLog', @level2type=N'COLUMN',@level2name=N'RunLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'后台任务运行日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJobLog'
GO
INSERT [dbo].[BackgroundJobLog] ([BackgroundJobLogId], [BackgroundJobId], [JobName], [ExecutionTime], [ExecutionDuration], [CreatedDateTime], [RunLog]) VALUES (N'1bc4e46a-2b30-470a-81b7-1069e14077e0', N'fb9f563b-6218-47a7-b34b-6b55f6b25257', N'TestC', CAST(0x0000A7AB00FF59A7 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A7AB00FF59BC AS DateTime), N'')
INSERT [dbo].[BackgroundJobLog] ([BackgroundJobLogId], [BackgroundJobId], [JobName], [ExecutionTime], [ExecutionDuration], [CreatedDateTime], [RunLog]) VALUES (N'42794175-1062-4ca5-a201-b576ab8cea75', N'ec464d8f-d873-4393-bed1-70b3219c2bb2', N'Job管理器', CAST(0x0000A7AB00FF59BD AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A7AB00FF59BF AS DateTime), N'')
INSERT [dbo].[BackgroundJobLog] ([BackgroundJobLogId], [BackgroundJobId], [JobName], [ExecutionTime], [ExecutionDuration], [CreatedDateTime], [RunLog]) VALUES (N'e81bd843-b08e-4b60-a0c3-7c60c3f9028f', N'55f2f0fc-8748-4381-b599-010b8ed35ba7', N'TestB', CAST(0x0000A7AB00FF5D0C AS DateTime), CAST(0.01 AS Decimal(18, 2)), CAST(0x0000A7AB00FF5D10 AS DateTime), N'')
INSERT [dbo].[BackgroundJobLog] ([BackgroundJobLogId], [BackgroundJobId], [JobName], [ExecutionTime], [ExecutionDuration], [CreatedDateTime], [RunLog]) VALUES (N'44c55d1b-5efb-40d4-96f7-008b66470f85', N'fb9f563b-6218-47a7-b34b-6b55f6b25257', N'TestC', CAST(0x0000A7AB00FF6091 AS DateTime), CAST(0.01 AS Decimal(18, 2)), CAST(0x0000A7AB00FF6097 AS DateTime), N'')
INSERT [dbo].[BackgroundJobLog] ([BackgroundJobLogId], [BackgroundJobId], [JobName], [ExecutionTime], [ExecutionDuration], [CreatedDateTime], [RunLog]) VALUES (N'56d949a1-a00b-480d-9119-817062600740', N'ec464d8f-d873-4393-bed1-70b3219c2bb2', N'Job管理器', CAST(0x0000A7AB00FF6090 AS DateTime), CAST(0.03 AS Decimal(18, 2)), CAST(0x0000A7AB00FF609A AS DateTime), N'')
INSERT [dbo].[BackgroundJobLog] ([BackgroundJobLogId], [BackgroundJobId], [JobName], [ExecutionTime], [ExecutionDuration], [CreatedDateTime], [RunLog]) VALUES (N'ab0c4e3d-0f99-4dd8-b1c0-c1abccb3494d', N'2ef0b3b0-0dcd-402f-937c-6a33c3e70c13', N'TestA', CAST(0x0000A7AB00FF6090 AS DateTime), CAST(0.02 AS Decimal(18, 2)), CAST(0x0000A7AB00FF609A AS DateTime), N'')
INSERT [dbo].[BackgroundJobLog] ([BackgroundJobLogId], [BackgroundJobId], [JobName], [ExecutionTime], [ExecutionDuration], [CreatedDateTime], [RunLog]) VALUES (N'6d9e0e4f-7023-44ec-b378-7d9ca639dc96', N'55f2f0fc-8748-4381-b599-010b8ed35ba7', N'TestB', CAST(0x0000A7AB00FF62E8 AS DateTime), CAST(0.01 AS Decimal(18, 2)), CAST(0x0000A7AB00FF62EC AS DateTime), N'')
INSERT [dbo].[BackgroundJobLog] ([BackgroundJobLogId], [BackgroundJobId], [JobName], [ExecutionTime], [ExecutionDuration], [CreatedDateTime], [RunLog]) VALUES (N'aef3a56f-9fbe-48fd-b172-da100c0bc54a', N'2ef0b3b0-0dcd-402f-937c-6a33c3e70c13', N'TestA', CAST(0x0000A7AB00FF5BE0 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A7AB00FF5BE2 AS DateTime), N'')
INSERT [dbo].[BackgroundJobLog] ([BackgroundJobLogId], [BackgroundJobId], [JobName], [ExecutionTime], [ExecutionDuration], [CreatedDateTime], [RunLog]) VALUES (N'f50d1235-4f8c-4e3a-a74e-aa22c7f64758', N'ec464d8f-d873-4393-bed1-70b3219c2bb2', N'Job管理器', CAST(0x0000A7AB00FF5D0C AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A7AB00FF5D10 AS DateTime), N'')
/****** Object:  Table [dbo].[BackgroundJob]    Script Date: 07/09/2017 15:30:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BackgroundJob](
	[BackgroundJobId] [uniqueidentifier] NOT NULL,
	[JobType] [nvarchar](50) NULL,
	[Name] [nvarchar](255) NULL,
	[AssemblyName] [nvarchar](255) NULL,
	[ClassName] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[JobArgs] [nvarchar](255) NULL,
	[CronExpression] [nvarchar](255) NULL,
	[CronExpressionDescription] [nvarchar](255) NULL,
	[NextRunTime] [datetime] NULL,
	[LastRunTime] [datetime] NULL,
	[RunCount] [int] NOT NULL,
	[State] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedByUserId] [nvarchar](40) NULL,
	[CreatedByUserName] [nvarchar](80) NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastUpdatedByUserId] [nvarchar](40) NULL,
	[LastUpdatedByUserName] [nvarchar](80) NULL,
	[LastUpdatedDateTime] [datetime] NOT NULL,
	[IsDelete] [int] NOT NULL,
 CONSTRAINT [PK_BACKGROUNDJOB] PRIMARY KEY NONCLUSTERED 
(
	[BackgroundJobId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'BackgroundJobId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'JobType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'程序集名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'AssemblyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'ClassName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'JobArgs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cron表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'CronExpression'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cron表达式描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'CronExpressionDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下次运行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'NextRunTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后运行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'LastRunTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总运行次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'RunCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0-运行   2-停止' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'DisplayOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'CreatedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'CreatedByUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'CreatedDateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后更新人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'LastUpdatedByUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后更新人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'LastUpdatedByUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'LastUpdatedDateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'后台任务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BackgroundJob'
GO
INSERT [dbo].[BackgroundJob] ([BackgroundJobId], [JobType], [Name], [AssemblyName], [ClassName], [Description], [JobArgs], [CronExpression], [CronExpressionDescription], [NextRunTime], [LastRunTime], [RunCount], [State], [DisplayOrder], [CreatedByUserId], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserId], [LastUpdatedByUserName], [LastUpdatedDateTime], [IsDelete]) VALUES (N'7af54417-ec88-4a9b-8e79-eb9e1dc1204d', NULL, N'11', N'11', N'11', N'11', N'11', N'1', N'111', NULL, NULL, 0, 0, 0, NULL, NULL, CAST(0x0000A7AA012F54E9 AS DateTime), NULL, NULL, CAST(0x0000A7AB00FEC3A4 AS DateTime), 1)
INSERT [dbo].[BackgroundJob] ([BackgroundJobId], [JobType], [Name], [AssemblyName], [ClassName], [Description], [JobArgs], [CronExpression], [CronExpressionDescription], [NextRunTime], [LastRunTime], [RunCount], [State], [DisplayOrder], [CreatedByUserId], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserId], [LastUpdatedByUserName], [LastUpdatedDateTime], [IsDelete]) VALUES (N'f9e367b5-0a5a-4126-9478-e738a67f9b65', N't', N'tt', N'tt', N'tt', N'ttt', N'tt', N'tt', N'ttt', NULL, NULL, 0, 3, 0, NULL, NULL, CAST(0x0000A7AA012F61E1 AS DateTime), NULL, NULL, CAST(0x0000A7AB00FE3FB1 AS DateTime), 1)
INSERT [dbo].[BackgroundJob] ([BackgroundJobId], [JobType], [Name], [AssemblyName], [ClassName], [Description], [JobArgs], [CronExpression], [CronExpressionDescription], [NextRunTime], [LastRunTime], [RunCount], [State], [DisplayOrder], [CreatedByUserId], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserId], [LastUpdatedByUserName], [LastUpdatedDateTime], [IsDelete]) VALUES (N'ec464d8f-d873-4393-bed1-70b3219c2bb2', N'Job管理', N'Job管理器', N'Only.Jobs.exe', N'Only.Jobs.JobItems.ManagerJob', N'负责Job的动态调度', NULL, N'0/3 * * * * ?', N'每隔3秒执行一次', CAST(0x0000A7AB00FF6414 AS DateTime), CAST(0x0000A7AB00FF6090 AS DateTime), 362, 1, 0, NULL, NULL, CAST(0x0000A7AA013C0B64 AS DateTime), NULL, NULL, CAST(0x0000A7AB00FE6D26 AS DateTime), 0)
INSERT [dbo].[BackgroundJob] ([BackgroundJobId], [JobType], [Name], [AssemblyName], [ClassName], [Description], [JobArgs], [CronExpression], [CronExpressionDescription], [NextRunTime], [LastRunTime], [RunCount], [State], [DisplayOrder], [CreatedByUserId], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserId], [LastUpdatedByUserName], [LastUpdatedDateTime], [IsDelete]) VALUES (N'2ef0b3b0-0dcd-402f-937c-6a33c3e70c13', N'Test', N'TestA', N'Only.Jobs.Items.TestA.dll', N'Only.Jobs.Items.TestA.JobTestA', N'TestA', NULL, N'0/4 * * * * ?', N'每隔4秒执行一次', CAST(0x0000A7AB00FF6540 AS DateTime), CAST(0x0000A7AB00FF6090 AS DateTime), 69, 1, 0, NULL, NULL, CAST(0x0000A7AB00D8426D AS DateTime), NULL, NULL, CAST(0x0000A7AB00FE75C3 AS DateTime), 0)
INSERT [dbo].[BackgroundJob] ([BackgroundJobId], [JobType], [Name], [AssemblyName], [ClassName], [Description], [JobArgs], [CronExpression], [CronExpressionDescription], [NextRunTime], [LastRunTime], [RunCount], [State], [DisplayOrder], [CreatedByUserId], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserId], [LastUpdatedByUserName], [LastUpdatedDateTime], [IsDelete]) VALUES (N'55f2f0fc-8748-4381-b599-010b8ed35ba7', N'Test', N'TestB', N'Only.Jobs.Items.TestB.dll', N'Only.Jobs.Items.TestB.JobTestB', N'TestB', NULL, N'0/5 * * * * ?', N'每隔5秒执行一次', CAST(0x0000A7AB00FF68C4 AS DateTime), CAST(0x0000A7AB00FF62E8 AS DateTime), 53, 1, 0, NULL, NULL, CAST(0x0000A7AB00D8814D AS DateTime), NULL, NULL, CAST(0x0000A7AB00FE7C97 AS DateTime), 0)
INSERT [dbo].[BackgroundJob] ([BackgroundJobId], [JobType], [Name], [AssemblyName], [ClassName], [Description], [JobArgs], [CronExpression], [CronExpressionDescription], [NextRunTime], [LastRunTime], [RunCount], [State], [DisplayOrder], [CreatedByUserId], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserId], [LastUpdatedByUserName], [LastUpdatedDateTime], [IsDelete]) VALUES (N'fb9f563b-6218-47a7-b34b-6b55f6b25257', N'Test', N'TestC', N'Only.Jobs.Items.TestC.dll', N'Only.Jobs.Items.TestC.JobTestC', N'TestC', NULL, N'0/6 * * * * ?', N'每隔6秒执行一次', CAST(0x0000A7AB00FF6798 AS DateTime), CAST(0x0000A7AB00FF6091 AS DateTime), 51, 1, 0, NULL, NULL, CAST(0x0000A7AB00D88F29 AS DateTime), NULL, NULL, CAST(0x0000A7AB00FE84DA AS DateTime), 0)
