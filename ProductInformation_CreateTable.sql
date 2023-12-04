USE [ProductsCategory]
GO

ALTER TABLE [dbo].[ProductInformation] DROP CONSTRAINT [FK_ProductInformation_Products]
GO

ALTER TABLE [dbo].[ProductInformation] DROP CONSTRAINT [FK_ProductInformation_Categories]
GO

/****** Object:  Table [dbo].[ProductInformation]    Script Date: 04.12.2023 12:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductInformation]') AND type in (N'U'))
DROP TABLE [dbo].[ProductInformation]
GO

/****** Object:  Table [dbo].[ProductInformation]    Script Date: 04.12.2023 12:25:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductInformation](
	[id_Information] [int] NOT NULL,
	[id_Products] [int] NULL,
	[id_Categories] [int] NOT NULL,
 CONSTRAINT [PK_ProductInformation] PRIMARY KEY CLUSTERED 
(
	[id_Information] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductInformation]  WITH CHECK ADD  CONSTRAINT [FK_ProductInformation_Categories] FOREIGN KEY([id_Categories])
REFERENCES [dbo].[Categories] ([id_category])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ProductInformation] CHECK CONSTRAINT [FK_ProductInformation_Categories]
GO

ALTER TABLE [dbo].[ProductInformation]  WITH CHECK ADD  CONSTRAINT [FK_ProductInformation_Products] FOREIGN KEY([id_Products])
REFERENCES [dbo].[Products] ([id_Product])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ProductInformation] CHECK CONSTRAINT [FK_ProductInformation_Products]
GO