﻿USE [Polizas]
GO
INSERT [dbo].[Poliza] ([NumeroPoliza], [NombreCliente], [IdCliente], [FechaNacimiento], [FechaPoliza], [Coberturas], [ValorMaximo], [NombrePoliza], [CiudadResidencia], [DireccionResidencia], [PlacaAutomotor], [ModeloAutomotor], [Inspeccion]) VALUES (123, N'Juan Perez', N'7330055', CAST(N'1987-12-12' AS Date), CAST(N'2022-02-10' AS Date), N'Nacionales', CAST(1236232.21 AS Decimal(18, 2)), N'Seguridad instantanea', N'Cartagena', N'Carrera 8 #10-69', N'NJI 102 de Bogotá', N'Modelo 2016', 0)
INSERT [dbo].[Poliza] ([NumeroPoliza], [NombreCliente], [IdCliente], [FechaNacimiento], [FechaPoliza], [Coberturas], [ValorMaximo], [NombrePoliza], [CiudadResidencia], [DireccionResidencia], [PlacaAutomotor], [ModeloAutomotor], [Inspeccion]) VALUES (456, N'Andres Parra', N'1033254140', CAST(N'1992-07-10' AS Date), CAST(N'2022-03-20' AS Date), N'Internacionales y nacionales', CAST(1023654.15 AS Decimal(18, 2)), N'Seguridad Prepagada', N'Bogotá', N'Carrera 68D #10-02', N'NDR 151 de Chia', N'Modelo 2021', 1)
INSERT [dbo].[Poliza] ([NumeroPoliza], [NombreCliente], [IdCliente], [FechaNacimiento], [FechaPoliza], [Coberturas], [ValorMaximo], [NombrePoliza], [CiudadResidencia], [DireccionResidencia], [PlacaAutomotor], [ModeloAutomotor], [Inspeccion]) VALUES (789, N'Jorge Pelaez', N'1025549403', CAST(N'1990-10-10' AS Date), CAST(N'2022-01-20' AS Date), N'Internacionales', CAST(230125.20 AS Decimal(18, 2)), N'Seguridad social', N'Cali', N'Carrera 65 #11-16', N'ABD 201 de Cali', N'Modelo 2020', 1)
GO