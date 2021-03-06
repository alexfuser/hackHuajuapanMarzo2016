USE [master]
GO
/****** Object:  Database [MedicalApp]    Script Date: 12/03/2016 19:39:38 ******/
CREATE DATABASE [MedicalApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MedicalApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MedicalApp.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MedicalApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MedicalApp_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MedicalApp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MedicalApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MedicalApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MedicalApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MedicalApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MedicalApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MedicalApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [MedicalApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MedicalApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MedicalApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MedicalApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MedicalApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MedicalApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MedicalApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MedicalApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MedicalApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MedicalApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MedicalApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MedicalApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MedicalApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MedicalApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MedicalApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MedicalApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MedicalApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MedicalApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MedicalApp] SET  MULTI_USER 
GO
ALTER DATABASE [MedicalApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MedicalApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MedicalApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MedicalApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MedicalApp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MedicalApp]
GO
/****** Object:  Table [dbo].[Asignacion]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignacion](
	[idAsignacion] [int] IDENTITY(1,1) NOT NULL,
	[idIncidente] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
 CONSTRAINT [PK_Asignacion] PRIMARY KEY CLUSTERED 
(
	[idAsignacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Camara]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Camara](
	[idCamara] [int] NOT NULL,
	[nombre] [char](30) NOT NULL,
	[estatus] [int] NOT NULL,
	[direccion] [char](150) NOT NULL,
	[latitud] [char](100) NOT NULL,
	[longitud] [char](100) NOT NULL,
 CONSTRAINT [PK_Camara] PRIMARY KEY CLUSTERED 
(
	[idCamara] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [char](50) NOT NULL,
	[correo] [char](50) NOT NULL,
	[usuario] [char](50) NOT NULL,
	[contrasena] [char](150) NOT NULL,
	[estatus] [int] NOT NULL CONSTRAINT [DF_Cliente_estatus]  DEFAULT ((1)),
	[esLimitado] [bit] NOT NULL CONSTRAINT [DF_Cliente_esLimitado]  DEFAULT ((1)),
	[numeroLicencias] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dispositivo]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dispositivo](
	[idDispositivo] [int] IDENTITY(1,1) NOT NULL,
	[marca] [char](50) NOT NULL,
	[modelo] [char](50) NOT NULL,
	[descripcion] [char](150) NULL,
	[estatus] [int] NOT NULL,
	[cliente] [int] NOT NULL,
 CONSTRAINT [PK_Dispositivo] PRIMARY KEY CLUSTERED 
(
	[idDispositivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [char](50) NOT NULL,
	[paterno] [char](50) NOT NULL,
	[materno] [char](50) NOT NULL,
	[correo] [char](50) NOT NULL,
	[telefono] [char](10) NULL,
	[codEmpleado] [char](50) NOT NULL,
	[idCliente] [int] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstatusIncidente]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstatusIncidente](
	[idEstatusIncidente] [int] IDENTITY(1,1) NOT NULL,
	[estatus] [char](20) NOT NULL,
	[descripcion] [char](100) NOT NULL,
	[idCliente] [int] NOT NULL,
 CONSTRAINT [PK_EstatusIncidente] PRIMARY KEY CLUSTERED 
(
	[idEstatusIncidente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[incidente]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[incidente](
	[idIncidente] [int] IDENTITY(1,1) NOT NULL,
	[longitud] [char](100) NOT NULL,
	[latitud] [char](100) NOT NULL,
	[titulo] [char](100) NOT NULL,
	[descripcion] [char](200) NOT NULL,
	[idEstatusIncidente] [int] NOT NULL,
	[idTipoIncidente] [int] NOT NULL,
	[idNotificacion] [int] NOT NULL,
	[fechaActualizacion] [date] NOT NULL CONSTRAINT [DF_incidente_fechaActualizacion]  DEFAULT (getdate()),
 CONSTRAINT [PK_incidente] PRIMARY KEY CLUSTERED 
(
	[idIncidente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notificacion]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notificacion](
	[idNotificacion] [int] IDENTITY(1,1) NOT NULL,
	[mensaje] [char](100) NOT NULL,
	[estatus] [int] NOT NULL,
 CONSTRAINT [PK_Notificacion] PRIMARY KEY CLUSTERED 
(
	[idNotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[idPersona] [int] IDENTITY(1,1) NOT NULL,
	[esAnonimo] [bit] NOT NULL,
	[nombre] [char](50) NULL,
	[paterno] [char](50) NULL,
	[materno] [char](50) NULL,
	[telefono] [char](12) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reporte]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporte](
	[idReporte] [int] IDENTITY(1,1) NOT NULL,
	[tipoReporte] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[idCliente] [int] NOT NULL,
	[idCamara] [int] NULL,
	[idPersona] [int] NULL,
 CONSTRAINT [PK_Reporte] PRIMARY KEY CLUSTERED 
(
	[idReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoIncidente]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoIncidente](
	[idTipoIncidente] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [char](20) NOT NULL,
	[descripcion] [char](50) NOT NULL,
	[idCliente] [int] NOT NULL,
 CONSTRAINT [PK_TipoIncidente] PRIMARY KEY CLUSTERED 
(
	[idTipoIncidente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 12/03/2016 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [char](50) NOT NULL,
	[contrasena] [char](50) NOT NULL,
	[tipoUsuario] [int] NOT NULL,
	[latitud] [char](100) NOT NULL,
	[longitud] [char](100) NOT NULL,
	[fechaActualizacion]  AS (getdate()),
	[estatus] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Camara] ADD  CONSTRAINT [DF_Camara_estatus]  DEFAULT ((1)) FOR [estatus]
GO
ALTER TABLE [dbo].[Dispositivo] ADD  CONSTRAINT [DF_Dispositivo_estatus]  DEFAULT ((1)) FOR [estatus]
GO
ALTER TABLE [dbo].[Persona] ADD  CONSTRAINT [DF_Persona_nombre]  DEFAULT ('') FOR [nombre]
GO
ALTER TABLE [dbo].[Persona] ADD  CONSTRAINT [DF_Persona_paterno]  DEFAULT ('') FOR [paterno]
GO
ALTER TABLE [dbo].[Persona] ADD  CONSTRAINT [DF_Persona_materno]  DEFAULT ('') FOR [materno]
GO
ALTER TABLE [dbo].[Reporte] ADD  CONSTRAINT [DF_Reporte_tipoReporte]  DEFAULT ((1)) FOR [tipoReporte]
GO
ALTER TABLE [dbo].[Reporte] ADD  CONSTRAINT [DF_Reporte_fecha]  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[Asignacion]  WITH CHECK ADD  CONSTRAINT [FK_Asignacion_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Asignacion] CHECK CONSTRAINT [FK_Asignacion_Empleado]
GO
ALTER TABLE [dbo].[Asignacion]  WITH CHECK ADD  CONSTRAINT [FK_Asignacion_Incidente] FOREIGN KEY([idIncidente])
REFERENCES [dbo].[incidente] ([idIncidente])
GO
ALTER TABLE [dbo].[Asignacion] CHECK CONSTRAINT [FK_Asignacion_Incidente]
GO
ALTER TABLE [dbo].[Asignacion]  WITH CHECK ADD  CONSTRAINT [FK_Asignacion_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Asignacion] CHECK CONSTRAINT [FK_Asignacion_Usuario]
GO
ALTER TABLE [dbo].[Dispositivo]  WITH CHECK ADD  CONSTRAINT [FK_Dispositivo_Cliente] FOREIGN KEY([cliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Dispositivo] CHECK CONSTRAINT [FK_Dispositivo_Cliente]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Cliente]
GO
ALTER TABLE [dbo].[EstatusIncidente]  WITH CHECK ADD  CONSTRAINT [FK_EstatusIncidente_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[EstatusIncidente] CHECK CONSTRAINT [FK_EstatusIncidente_Cliente]
GO
ALTER TABLE [dbo].[Reporte]  WITH CHECK ADD  CONSTRAINT [FK_Reporte_Camara] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Camara] ([idCamara])
GO
ALTER TABLE [dbo].[Reporte] CHECK CONSTRAINT [FK_Reporte_Camara]
GO
ALTER TABLE [dbo].[Reporte]  WITH CHECK ADD  CONSTRAINT [FK_Reporte_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Reporte] CHECK CONSTRAINT [FK_Reporte_Cliente]
GO
ALTER TABLE [dbo].[Reporte]  WITH CHECK ADD  CONSTRAINT [FK_Reporte_Persona] FOREIGN KEY([idPersona])
REFERENCES [dbo].[Persona] ([idPersona])
GO
ALTER TABLE [dbo].[Reporte] CHECK CONSTRAINT [FK_Reporte_Persona]
GO
ALTER TABLE [dbo].[TipoIncidente]  WITH CHECK ADD  CONSTRAINT [FK_TipoIncidente_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[TipoIncidente] CHECK CONSTRAINT [FK_TipoIncidente_Cliente]
GO
USE [master]
GO
ALTER DATABASE [MedicalApp] SET  READ_WRITE 
GO
