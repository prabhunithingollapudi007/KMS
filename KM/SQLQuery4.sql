CREATE TABLE [dbo].[login] (
    [id]     INT          IDENTITY (1, 1) NOT NULL,
    [uname]  VARCHAR (50) NULL,
    [passwd] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

