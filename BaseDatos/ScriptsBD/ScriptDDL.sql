USE [Polizas]
GO
/****** Object:  Table [dbo].[Poliza]    Script Date: 15/07/2024 4:20:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poliza](
	[NumeroPoliza] [int] NOT NULL,
	[NombreCliente] [varchar](200) NOT NULL,
	[IdCliente] [varchar](15) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[FechaPoliza] [date] NOT NULL,
	[Coberturas] [varchar](200) NULL,
	[ValorMaximo] [decimal](18, 2) NULL,
	[NombrePoliza] [varchar](200) NULL,
	[CiudadResidencia] [varchar](50) NOT NULL,
	[DireccionResidencia] [varchar](100) NOT NULL,
	[PlacaAutomotor] [varchar](50) NOT NULL,
	[ModeloAutomotor] [varchar](50) NOT NULL,
	[Inspeccion] [bit] NOT NULL,
 CONSTRAINT [PK_Poliza] PRIMARY KEY CLUSTERED 
(
	[NumeroPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[pp_eliminar]    Script Date: 15/07/2024 4:20:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[pp_eliminar](
@numeropoliza int
)
as
begin

delete from poliza where NumeroPoliza = @numeropoliza

end

GO
/****** Object:  StoredProcedure [dbo].[pp_listar]    Script Date: 15/07/2024 4:20:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pp_listar]
as
begin

select * from poliza
end


GO
/****** Object:  StoredProcedure [dbo].[pp_modificar]    Script Date: 15/07/2024 4:20:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[pp_modificar](
@numeropoliza int,
@nombrecliente varchar(200),
@idcliente varchar(15),
@fechanacimiento DateTime,
@fechapoliza DateTime,
@cobertura varchar(200),
@valormaximo decimal(18,2),
@nombrepoliza varchar(200),
@ciudadresidencia varchar(50),
@direccionresidencia varchar(100),
@placaautomotor varchar(50),
@modeloautomotor varchar(50),
@inspeccion bit
)
as
begin

update Poliza set
NombreCliente = @nombrecliente,
IdCliente = @idcliente,
FechaNacimiento = @fechanacimiento,
FechaPoliza = @fechapoliza,
Coberturas = @cobertura,
ValorMaximo = @valormaximo,
NombrePoliza = @nombrepoliza,
CiudadResidencia = @ciudadresidencia,
DireccionResidencia = @direccionresidencia,
PlacaAutomotor = @placaautomotor,
ModeloAutomotor = @modeloautomotor,
Inspeccion = @inspeccion
where NumeroPoliza = @numeropoliza

end

GO
/****** Object:  StoredProcedure [dbo].[pp_obtener]    Script Date: 15/07/2024 4:20:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[pp_obtener](@numeropoliza int)
as
begin

select * from poliza where NumeroPoliza = @numeropoliza
end
GO
/****** Object:  StoredProcedure [dbo].[pp_registrar]    Script Date: 15/07/2024 4:20:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--************************ PROCEDIMIENTOS PARA CREAR ************************--
create procedure [dbo].[pp_registrar](
@numeropoliza int,
@nombrecliente varchar(200),
@idcliente varchar(15),
@fechanacimiento DateTime,
@fechapoliza DateTime,
@cobertura varchar(200),
@valormaximo decimal(18,2),
@nombrepoliza varchar(200),
@ciudadresidencia varchar(50),
@direccionresidencia varchar(100),
@placaautomotor varchar(50),
@modeloautomotor varchar(50),
@inspeccion bit
)
as
begin

insert into Poliza(NumeroPoliza,NombreCliente,IdCliente,FechaNacimiento,FechaPoliza,Coberturas,ValorMaximo,NombrePoliza,CiudadResidencia,DireccionResidencia,PlacaAutomotor,ModeloAutomotor,Inspeccion)
values
(
@numeropoliza,
@nombrecliente,
@idcliente,
@fechanacimiento,
@fechapoliza,
@cobertura,
@valormaximo,
@nombrepoliza,
@ciudadresidencia,
@direccionresidencia,
@placaautomotor,
@modeloautomotor,
@inspeccion
)

end


GO