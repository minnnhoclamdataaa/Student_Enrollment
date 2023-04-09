	CREATE TABLE [dbo].[Student] (
	    [Student_ID]            INT          NOT NULL,
	    [First_Middle_Name]     VARCHAR (50) NOT NULL,
	    [Last_Name]             VARCHAR (50) NOT NULL,
	    [Age]                   SMALLINT     NOT NULL,
	    [Gender]                VARCHAR (50) NOT NULL,
	    [Address]               VARCHAR (50) NULL,
	    [Date_Of_Birth]         DATE         NOT NULL,
	    [Student_Phone_Numbers] VARCHAR (50) NOT NULL,
	    CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED ([Student_ID] ASC)
	);

	CREATE TABLE [dbo].[Student_Details] (
	    [Details_ID]              INT          NOT NULL,
	    [Student_ID]              INT          NOT NULL,
	    [Father_name]             VARCHAR (50) NULL,
	    [Father_work]             VARCHAR (50) NULL,
	    [Mother_name]             VARCHAR (50) NULL,
	    [Mother_work]             VARCHAR (50) NULL,
	    [Parents_address]         VARCHAR (50) NOT NULL,
	    [Parents_phonenumbers]    INT          NOT NULL,
	    [regular_contact_address] VARCHAR (50) NULL,
	    [regular_contact_phone]   VARCHAR (50) NOT NULL,
	    CONSTRAINT [PK_Student_Details] PRIMARY KEY CLUSTERED ([Details_ID] ASC),
	    CONSTRAINT [Student_ID] FOREIGN KEY ([Student_ID]) REFERENCES [dbo].[Student] ([Student_ID])
	);

	CREATE TABLE [dbo].[Student_Payments] (
	    [Payment_ID]            INT          NOT NULL,
	    [Student_ID]            INT          NOT NULL,
	    [Name_Payables]         VARCHAR (50) NOT NULL,
	    [Amount_Paid]           VARCHAR (50) NOT NULL,
	    [Balance_Return]        VARCHAR (50) NULL,
	    [Payment_Date_and_time] DATETIME     NULL,
	    CONSTRAINT [PK_Student_Payments] PRIMARY KEY CLUSTERED ([Payment_ID] ASC),
	    CONSTRAINT [FK_Student_Payments_Student] FOREIGN KEY ([Student_ID]) REFERENCES [dbo].[Student] ([Student_ID])
	);

	CREATE TABLE [dbo].[Student_Requirements] (
	    [Requirements_ID]     INT      NOT NULL,
	    [Student_ID]          INT      NOT NULL,
	    [Entrance_Exam_Score] SMALLINT NOT NULL,
	    [Priority_Point]      SMALLINT NULL,
	    CONSTRAINT [PK_Student_Requirements] PRIMARY KEY CLUSTERED ([Requirements_ID] ASC),
	    CONSTRAINT [FK1] FOREIGN KEY ([Student_ID]) REFERENCES [dbo].[Student] ([Student_ID])
	);

	CREATE TABLE [dbo].[Student_School_Year] (
	    [Student_ID]         INT      NOT NULL,
	    [Student_Year_Entry] SMALLINT NULL,
	    [Semester]           SMALLINT NULL,
	    CONSTRAINT [FK2] FOREIGN KEY ([Student_ID]) REFERENCES [dbo].[Student] ([Student_ID])
	);
	
	CREATE TABLE [dbo].[Employees_Accounts] (
	    [Employee_ID]       INT          NOT NULL,
	    [Email]             VARCHAR (50) NOT NULL,
	    [FIrst_Middle_Name] VARCHAR (50) NULL,
	    [Last_Name]         VARCHAR (50) NULL,
	    CONSTRAINT [PK_Employees_Accounts] PRIMARY KEY CLUSTERED ([Employee_ID] ASC)
	);
