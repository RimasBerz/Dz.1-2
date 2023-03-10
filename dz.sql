USE [master]
GO
/****** Object:  Database [Store]    Script Date: 23.12.2022 19:47:12 ******/
CREATE DATABASE [Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Store', FILENAME = N'C:\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\Shop2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Store_log', FILENAME = N'C:\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\Shop2_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Store] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Store] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Store] SET RECOVERY FULL 
GO
ALTER DATABASE [Store] SET  MULTI_USER 
GO
ALTER DATABASE [Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Store', N'ON'
GO
ALTER DATABASE [Store] SET QUERY_STORE = OFF
GO
USE [Store]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23.12.2022 19:47:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL,
	[price] [float] NULL,
	[discount] [float] NULL,
	[quantity] [int] NULL,
	[measurement] [nvarchar](20) NULL,
	[producer] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (1, N'Ряженка 15%', N'Молоко', 26, 3, 25, N'литр', N'ООО Сад', N'Украина', N'Черепаха', CAST(N'2022-05-21' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (5, N'Яблоки зелёные', N'Фрукты', 64, 7, 25, N'кг', N'ООО Сад', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (6, N'Пивасик', N'Алкоголь', 67, 6, 25, N'литр', N'ООО Сад', N'Молдова', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (7, N'Яблоки дешёвые', N'Фрукты', 36, 9, 25, N'кг', N'ООО Сад', N'Беларусь', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (8, N'Ревасик', N'Алкоголь', 50, 11, 25, N'кг', N'ООО Сад', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (9, N'Груша земляная', N'Фрукты', 76, 12, 25, N'кг', N'ООО Сад', N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (10, N'Аспарагус', N'Овощи', 52, 6, 25, N'кг', N'ООО Сад', N'Молдова', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (11, N'Лобстер морожненный', N'Морепродукты', 400, 14, 25, N'кг', NULL, N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (12, N'Попкорн', N'Закуски', 90, 6, 25, N'кг', N'ООО Сад', N'Беларусь', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (14, N'Чипсы Бекон', N'Закуски', 60, 12, 25, N'кг', N'ООО Сад', N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (15, N'Бананы', N'Фрукты', 26, 10, 25, N'кг', NULL, N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (16, N'Гранат', N'Фрукты', 96, 2, 25, N'кг', N'ООО Сад', N'Молдова', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (17, N'Дыня', N'Фрукты', 38, 6, 25, N'кг', N'ООО Сад', N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (21, N'Шоколад белый', N'Сладость', 100, 8, 25, N'кг', N'ООО Сад', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (22, N'Шоколад черный', N'Сладость', 80, 2, 25, N'кг', N'ООО Сад', N'Беларусь', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (23, N'Фейхоа', N'Фрукты', 230, 3, 25, N'кг', N'ООО Армянский склад', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (25, N'Картофель', N'Овощи', 11, 6, 25, N'кг', N'ООО Огород', N'Молдова', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (26, N'Огурцы', N'Овощи', 14, 8, 25, N'кг', N'ООО Огород', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (27, N'Помидоры', N'Овощи', 50, 9, 25, N'кг', N'ООО Огород', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (28, N'Шоколад Пористый', N'Сладость', 100, 16, 25, N'кг', N'ООО Огород', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (29, N'Брокколи', N'Овощи', 99, 19, 25, N'кг', N'ООО Огород', N'Молдова', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (30, N'Баклажан', N'Овощи', 39, 18, 25, N'кг', N'ООО Огород', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (31, N'Кабачок', N'Овощи', 88, 11, 25, N'кг', N'ООО Огород', N'Беларусь', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (32, N'Каперсы', N'Овощи', 9, 17, 25, N'кг', N'ООО Огород', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (33, N'Кольраби', N'Овощи', 11, 16, 25, N'кг', N'ООО Огород', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (34, N'Маслины', N'Овощи', 44, 13, 25, N'кг', N'ООО Огород', N'Беларусь', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (35, N'Лук Порей', N'Овощи', 25, 7, 25, N'кг', N'ООО Огород', N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (36, N'Оливки', N'Овощи', 67, 22, 25, N'кг', N'ООО Огород', N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (37, N'Патиссон', N'Овощи', 29, 23, 25, N'кг', N'ООО Огород', N'Беларусь', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (39, N'Редька горькая', N'Овощи', 39, 56, 25, N'кг', N'ООО Огород', N'Беларусь', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (40, N'Репа', N'Овощи', 56, 4, 25, N'кг', N'ООО Огород', N'Беларусь', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (41, N'Руккола', N'Овощи', 35, 1, 25, N'кг', N'ООО Огород', N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (42, N'Свекла', N'Овощи', 6, 3, 25, N'кг', N'ООО Огород', N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (43, N'Орех лесной', N'Закуски', 90, 3, 25, N'кг', N'ООО Огород', N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (46, N'Перец сладкий', N'Овощи', 13, 7, 25, N'кг', N'ООО Огород', N'Украина', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (47, N'Капуста', N'Овощи', 14, 6, 25, N'кг', N'ООО Огород', N'Молдова', N'Улитка', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (48, N'Капуста цветная', N'Овощи', 25, 5, 25, N'кг', N'ООО Огород', N'Беларусь', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (49, N'Шоколад вкусный', N'Сладости', 120, 4, 25, N'кг', N'ООО Огород', N'Беларусь', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (50, N'Молоко Пастеризованное', N'Молоко', 50, 3, 25, N'кг', N'ООО Огород', N'Беларусь', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (51, N'Хлеб', N'Хлебобулочные изделия', 80, 3, 22, N'кг', N'ООО Пекарь', N'Украина', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (52, N'Молоко Дэфолтное', N'Молоко', 16, 4, 33, N'литр', N'ООО Молочник', N'Молдова', N'Черепаха', CAST(N'2022-03-13' AS Date), CAST(N'2022-09-21' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [CK_Products] CHECK  (([quantity]>(0) AND [discount]>(0) AND [discount]<=(100)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [CK_Products]
GO
USE [master]
GO
ALTER DATABASE [Store] SET  READ_WRITE 
GO
