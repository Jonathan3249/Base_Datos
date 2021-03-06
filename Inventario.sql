USE [Inventario]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_categoria] [nvarchar](50) NULL,
	[Descripcion_categoria] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](10) NULL,
	[Direccion] [nchar](10) NULL,
	[Telefono] [numeric](18, 0) NULL,
	[Fecha_ingreso] [datetime] NULL,
	[Nota_cliente] [text] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compras]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compras](
	[Id_compras] [int] IDENTITY(1,1) NOT NULL,
	[Id_proveedor] [int] NOT NULL,
	[Fecha_compra] [datetime] NULL,
	[Total_compra] [numeric](18, 0) NULL,
	[abono_compra] [numeric](18, 0) NULL,
	[Fecha_vencimiento] [datetime] NULL,
	[Nota] [text] NULL,
	[Impuesto_compra] [decimal](18, 0) NULL,
	[Id_usuario] [int] NULL,
	[Forma_pago] [nvarchar](50) NULL,
	[Descuento_compra] [decimal](18, 0) NULL,
 CONSTRAINT [PK_compras] PRIMARY KEY CLUSTERED 
(
	[Id_compras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle](
	[Id_detalles] [int] IDENTITY(1,1) NOT NULL,
	[Id_articulo] [int] NOT NULL,
	[Id_stock] [int] NOT NULL,
	[Cantidad_detalle] [int] NULL,
 CONSTRAINT [PK_Detalle] PRIMARY KEY CLUSTERED 
(
	[Id_detalles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[Id_empresa] [int] IDENTITY(1,1) NOT NULL,
	[codigo_empresa] [int] NULL,
	[Nombre_empresa] [text] NULL,
	[Fecha_apertura] [datetime] NULL,
	[Pie_factura] [nvarchar](50) NULL,
	[Regimen_empresa] [text] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[Id_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[Id_factura] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[Id_cliente] [int] NULL,
	[Id_vendedor] [int] NULL,
	[Id_pagos] [int] NOT NULL,
	[Id_empresa] [int] NULL,
	[Subtotal] [numeric](18, 0) NULL,
	[Descuento] [numeric](18, 0) NULL,
	[Total] [numeric](18, 0) NULL,
	[Id_detalles] [int] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[Id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[Id_pagos] [int] IDENTITY(1,1) NOT NULL,
	[Forma_pago] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[Id_pagos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id_producto] [int] IDENTITY(1,1) NOT NULL,
	[Id_articulo] [int] NOT NULL,
	[Nombre_producto] [nvarchar](50) NULL,
	[Descripcion_producto] [nvarchar](50) NULL,
	[Precio_producto] [numeric](18, 0) NULL,
	[Codigo_producto] [int] NULL,
	[Id_categoria] [int] NOT NULL,
	[Fecha_vencimiento] [datetime] NULL,
	[Fecha_compra] [datetime] NULL,
	[Fecha_ingreso] [datetime] NULL,
	[Id_proveedor] [int] NOT NULL,
	[Impuesto_producto] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_proveedores] [nvarchar](50) NULL,
	[Direccion_proveedores] [nvarchar](50) NULL,
	[Telefono] [numeric](18, 0) NULL,
	[Email] [nvarchar](50) NULL,
	[Fecha_ingreso] [datetime] NULL,
	[codigo_proveedor] [int] NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[Id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[id_stock] [int] IDENTITY(1,1) NOT NULL,
	[Id_articulo] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[id_stock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Usuario] [nvarchar](50) NULL,
	[Password] [nvarchar](10) NULL,
	[Nivel_usuario] [int] NULL,
	[Codigo_usuario] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 28/03/2020 12:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor](
	[Id_vendedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Usuario] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[codigo_vendedor] [int] NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[Id_vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_Proveedores] FOREIGN KEY([Id_proveedor])
REFERENCES [dbo].[Proveedores] ([Id_proveedor])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [FK_compras_Proveedores]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_Usuario] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[Usuario] ([Id_usuario])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [FK_compras_Usuario]
GO
ALTER TABLE [dbo].[Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Stock] FOREIGN KEY([Id_stock])
REFERENCES [dbo].[Stock] ([id_stock])
GO
ALTER TABLE [dbo].[Detalle] CHECK CONSTRAINT [FK_Detalle_Stock]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Factura] FOREIGN KEY([codigo_empresa])
REFERENCES [dbo].[Factura] ([Id_factura])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Factura]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Clientes] FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[Clientes] ([Id_cliente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Clientes]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Detalle] FOREIGN KEY([Id_detalles])
REFERENCES [dbo].[Detalle] ([Id_detalles])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Detalle]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Pagos] FOREIGN KEY([Id_pagos])
REFERENCES [dbo].[Pagos] ([Id_pagos])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Pagos]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Vendedor1] FOREIGN KEY([Id_vendedor])
REFERENCES [dbo].[Vendedor] ([Id_vendedor])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Vendedor1]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categoria] FOREIGN KEY([Id_categoria])
REFERENCES [dbo].[Categoria] ([Id_categoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categoria]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Detalle] FOREIGN KEY([Id_articulo])
REFERENCES [dbo].[Detalle] ([Id_detalles])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Detalle]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Proveedores1] FOREIGN KEY([Id_proveedor])
REFERENCES [dbo].[Proveedores] ([Id_proveedor])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Proveedores1]
GO
