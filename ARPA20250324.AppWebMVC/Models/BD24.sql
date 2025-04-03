-- Creaci�n de la base de datos (Creaci�n de la base de datos)
CREATE DATABASE Test20250324DB;
GO

USE Test20250324DB;
GO

-- Tabla: Warehouses (Tabla: Bodegas)
CREATE TABLE Warehouses (
    Id INT PRIMARY KEY IDENTITY(1,1), -- ID de la bodega (ID de la bodega)
    WarehouseName VARCHAR(255) NOT NULL,       -- Nombre de la bodega (Nombre de la bodega)
    Notes TEXT                                 -- Notas adicionales (Notas adicionales)
);
GO

-- Tabla: Brands (Tabla: Marcas)
CREATE TABLE Brands (
    Id INT PRIMARY KEY IDENTITY(1,1), -- ID de la marca (ID de la marca)
    BrandName VARCHAR(255) NOT NULL,       -- Nombre de la marca (Nombre de la marca)
    Country VARCHAR(255)                   -- Pa�s de origen de la marca (Pa�s de origen de la marca)
);
GO

-- Tabla: Products (Tabla: Productos)
CREATE TABLE Products (
    Id INT PRIMARY KEY IDENTITY(1,1),  -- ID del producto (ID del producto)
    ProductName VARCHAR(255) NOT NULL,      -- Nombre del producto (Nombre del producto)
    Description TEXT,                       -- Descripci�n del producto (Descripci�n del producto)
    Price DECIMAL(10, 2) NOT NULL,          -- Precio del producto (Precio del producto)
    PurchasePrice DECIMAL(10, 2) NOT NULL,  -- Precio compra del producto
    WarehouseID INT FOREIGN KEY REFERENCES Warehouses(Id), -- ID de la bodega (ID de la bodega)
    BrandID INT FOREIGN KEY REFERENCES Brands(Id),              -- ID de la marca (ID de la marca)
    Notes TEXT                                 -- Notas adicionales (Notas adicionales)
);
GO

-- Tabla: Users (Tabla: Usuarios)
CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),     -- ID del usuario (ID del usuario)
    Username VARCHAR(255) NOT NULL,         -- Nombre de usuario (Nombre de usuario)
    Email VARCHAR(255) UNIQUE NOT NULL,     -- Correo electr�nico del usuario (Correo electr�nico del usuario)
    Password CHAR(32) NOT NULL,     -- Hash de la contrase�a del usuario (Hash de la contrase�a del usuario)
    Role VARCHAR(50) NOT NULL,               -- Rol del usuario (Rol del usuario)
    Notes TEXT                               -- Notas adicionales (Notas adicionales)
);
GO

INSERT INTO Brands (BrandName, Country) VALUES
('Marca1', 'Pa�s1'),
('Marca2', 'Pa�s2'),
('Marca3', 'Pa�s3'),
('Marca4', 'Pa�s4'),
('Marca5', 'Pa�s5'),
('Marca6', 'Pa�s6'),
('Marca7', 'Pa�s7'),
('Marca8', 'Pa�s8'),
('Marca9', 'Pa�s9'),
('Marca10', 'Pa�s10'),
('Marca11', 'Pa�s11'),
('Marca12', 'Pa�s12'),
('Marca13', 'Pa�s13'),
('Marca14', 'Pa�s14'),
('Marca15', 'Pa�s15'),
('Marca16', 'Pa�s16'),
('Marca17', 'Pa�s17'),
('Marca18', 'Pa�s18'),
('Marca19', 'Pa�s19'),
('Marca20', 'Pa�s20'),
('Marca21', 'Pa�s21'),
('Marca22', 'Pa�s22'),
('Marca23', 'Pa�s23'),
('Marca24', 'Pa�s24'),
('Marca25', 'Pa�s25'),
('Marca26', 'Pa�s26'),
('Marca27', 'Pa�s27'),
('Marca28', 'Pa�s28'),
('Marca29', 'Pa�s29'),
('Marca30', 'Pa�s30'),
('Marca31', 'Pa�s31'),
('Marca32', 'Pa�s32'),
('Marca33', 'Pa�s33'),
('Marca34', 'Pa�s34'),
('Marca35', 'Pa�s35'),
('Marca36', 'Pa�s36'),
('Marca37', 'Pa�s37'),
('Marca38', 'Pa�s38'),
('Marca39', 'Pa�s39'),
('Marca40', 'Pa�s40');

INSERT INTO Warehouses (WarehouseName, Notes) VALUES
('Bodega1', 'Notas1'),
('Bodega2', 'Notas2'),
('Bodega3', 'Notas3'),
('Bodega4', 'Notas4'),
('Bodega5', 'Notas5'),
('Bodega6', 'Notas6'),
('Bodega7', 'Notas7'),
('Bodega8', 'Notas8'),
('Bodega9', 'Notas9'),
('Bodega10', 'Notas10'),
('Bodega11', 'Notas11'),
('Bodega12', 'Notas12'),
('Bodega13', 'Notas13'),
('Bodega14', 'Notas14'),
('Bodega15', 'Notas15'),
('Bodega16', 'Notas16'),
('Bodega17', 'Notas17'),
('Bodega18', 'Notas18'),
('Bodega19', 'Notas19'),
('Bodega20', 'Notas20'),
('Bodega21', 'Notas21'),
('Bodega22', 'Notas22'),
('Bodega23', 'Notas23'),
('Bodega24', 'Notas24'),
('Bodega25', 'Notas25'),
('Bodega26', 'Notas26'),
('Bodega27', 'Notas27'),
('Bodega28', 'Notas28'),
('Bodega29', 'Notas29'),
('Bodega30', 'Notas30'),
('Bodega31', 'Notas31'),
('Bodega32', 'Notas32'),
('Bodega33', 'Notas33'),
('Bodega34', 'Notas34'),
('Bodega35', 'Notas35'),
('Bodega36', 'Notas36'),
('Bodega37', 'Notas37'),
('Bodega38', 'Notas38'),
('Bodega39', 'Notas39'),
('Bodega40', 'Notas40');

INSERT INTO Products (ProductName, Description, Price, PurchasePrice, WarehouseID, BrandID, Notes) VALUES
('Producto1', 'Descripci�n1', 100.00, 50.00, 1, 1, 'Notas1'),
('Producto2', 'Descripci�n2', 120.00, 60.00, 2, 2, 'Notas2'),
('Producto3', 'Descripci�n3', 150.00, 75.00, 3, 3, 'Notas3'),
('Producto4', 'Descripci�n4', 160.00, 80.00, 4, 4, 'Notas4'),
('Producto5', 'Descripci�n5', 170.00, 85.00, 5, 5, 'Notas5'),
('Producto6', 'Descripci�n6', 180.00, 90.00, 6, 6, 'Notas6'),
('Producto7', 'Descripci�n7', 190.00, 95.00, 7, 7, 'Notas7'),
('Producto8', 'Descripci�n8', 200.00, 100.00, 8, 8, 'Notas8'),
('Producto9', 'Descripci�n9', 210.00, 105.00, 9, 9, 'Notas9'),
('Producto10', 'Descripci�n10', 220.00, 110.00, 10, 10, 'Notas10'),
('Producto11', 'Descripci�n11', 230.00, 115.00, 11, 11, 'Notas11'),
('Producto12', 'Descripci�n12', 240.00, 120.00, 12, 12, 'Notas12'),
('Producto13', 'Descripci�n13', 250.00, 125.00, 13, 13, 'Notas13'),
('Producto14', 'Descripci�n14', 260.00, 130.00, 14, 14, 'Notas14'),
('Producto15', 'Descripci�n15', 270.00, 135.00, 15, 15, 'Notas15'),
('Producto16', 'Descripci�n16', 280.00, 140.00, 16, 16, 'Notas16'),
('Producto17', 'Descripci�n17', 290.00, 145.00, 17, 17, 'Notas17'),
('Producto18', 'Descripci�n18', 300.00, 150.00, 18, 18, 'Notas18'),
('Producto19', 'Descripci�n19', 310.00, 155.00, 19, 19, 'Notas19'),
('Producto20', 'Descripci�n20', 320.00, 160.00, 20, 20, 'Notas20'),
('Producto21', 'Descripci�n21', 330.00, 165.00, 21, 21, 'Notas21'),
('Producto22', 'Descripci�n22', 340.00, 170.00, 22, 22, 'Notas22'),
('Producto23', 'Descripci�n23', 350.00, 175.00, 23, 23, 'Notas23'),
('Producto24', 'Descripci�n24', 360.00, 180.00, 24, 24, 'Notas24'),
('Producto25', 'Descripci�n25', 370.00, 185.00, 25, 25, 'Notas25'),
('Producto26', 'Descripci�n26', 380.00, 190.00, 26, 26, 'Notas26'),
('Producto27', 'Descripci�n27', 390.00, 195.00, 27, 27, 'Notas27'),
('Producto28', 'Descripci�n28', 400.00, 200.00, 28, 28, 'Notas28'),
('Producto29', 'Descripci�n29', 410.00, 205.00, 29, 29, 'Notas29'),
('Producto30', 'Descripci�n30', 420.00, 210.00, 30, 30, 'Notas30'),
('Producto31', 'Descripci�n31', 430.00, 215.00, 31, 31, 'Notas31'),
('Producto32', 'Descripci�n32', 440.00, 220.00, 32, 32, 'Notas32'),
('Producto33', 'Descripci�n33', 450.00, 225.00, 33, 33, 'Notas33'),
('Producto34', 'Descripci�n34', 460.00, 230.00, 34, 34, 'Notas34'),
('Producto35', 'Descripci�n35', 470.00, 235.00, 35, 35, 'Notas35'),
('Producto36', 'Descripci�n36', 480.00, 240.00, 36, 36, 'Notas36'),
('Producto37', 'Descripci�n37', 490.00, 245.00, 37, 37, 'Notas37'),
('Producto38', 'Descripci�n38', 500.00, 250.00, 38, 38, 'Notas38'),
('Producto39', 'Descripci�n39', 510.00, 255.00, 39, 39, 'Notas39'),
('Producto40', 'Descripci�n40', 520.00, 260.00, 40, 40, 'Notas40'),
('Producto41', 'Descripci�n41', 530.00, 265.00, 1, 1, 'Notas41'),
('Producto42', 'Descripci�n42', 540.00, 270.00, 2, 2, 'Notas42'),
('Producto43', 'Descripci�n43', 550.00, 275.00, 3, 3, 'Notas43');