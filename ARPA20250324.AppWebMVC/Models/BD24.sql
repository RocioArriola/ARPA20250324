-- Creación de la base de datos (Creación de la base de datos)
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
    Country VARCHAR(255)                   -- País de origen de la marca (País de origen de la marca)
);
GO

-- Tabla: Products (Tabla: Productos)
CREATE TABLE Products (
    Id INT PRIMARY KEY IDENTITY(1,1),  -- ID del producto (ID del producto)
    ProductName VARCHAR(255) NOT NULL,      -- Nombre del producto (Nombre del producto)
    Description TEXT,                       -- Descripción del producto (Descripción del producto)
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
    Email VARCHAR(255) UNIQUE NOT NULL,     -- Correo electrónico del usuario (Correo electrónico del usuario)
    Password CHAR(32) NOT NULL,     -- Hash de la contraseña del usuario (Hash de la contraseña del usuario)
    Role VARCHAR(50) NOT NULL,               -- Rol del usuario (Rol del usuario)
    Notes TEXT                               -- Notas adicionales (Notas adicionales)
);
GO

INSERT INTO Brands (BrandName, Country) VALUES
('Marca1', 'País1'),
('Marca2', 'País2'),
('Marca3', 'País3'),
('Marca4', 'País4'),
('Marca5', 'País5'),
('Marca6', 'País6'),
('Marca7', 'País7'),
('Marca8', 'País8'),
('Marca9', 'País9'),
('Marca10', 'País10'),
('Marca11', 'País11'),
('Marca12', 'País12'),
('Marca13', 'País13'),
('Marca14', 'País14'),
('Marca15', 'País15'),
('Marca16', 'País16'),
('Marca17', 'País17'),
('Marca18', 'País18'),
('Marca19', 'País19'),
('Marca20', 'País20'),
('Marca21', 'País21'),
('Marca22', 'País22'),
('Marca23', 'País23'),
('Marca24', 'País24'),
('Marca25', 'País25'),
('Marca26', 'País26'),
('Marca27', 'País27'),
('Marca28', 'País28'),
('Marca29', 'País29'),
('Marca30', 'País30'),
('Marca31', 'País31'),
('Marca32', 'País32'),
('Marca33', 'País33'),
('Marca34', 'País34'),
('Marca35', 'País35'),
('Marca36', 'País36'),
('Marca37', 'País37'),
('Marca38', 'País38'),
('Marca39', 'País39'),
('Marca40', 'País40');

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
('Producto1', 'Descripción1', 100.00, 50.00, 1, 1, 'Notas1'),
('Producto2', 'Descripción2', 120.00, 60.00, 2, 2, 'Notas2'),
('Producto3', 'Descripción3', 150.00, 75.00, 3, 3, 'Notas3'),
('Producto4', 'Descripción4', 160.00, 80.00, 4, 4, 'Notas4'),
('Producto5', 'Descripción5', 170.00, 85.00, 5, 5, 'Notas5'),
('Producto6', 'Descripción6', 180.00, 90.00, 6, 6, 'Notas6'),
('Producto7', 'Descripción7', 190.00, 95.00, 7, 7, 'Notas7'),
('Producto8', 'Descripción8', 200.00, 100.00, 8, 8, 'Notas8'),
('Producto9', 'Descripción9', 210.00, 105.00, 9, 9, 'Notas9'),
('Producto10', 'Descripción10', 220.00, 110.00, 10, 10, 'Notas10'),
('Producto11', 'Descripción11', 230.00, 115.00, 11, 11, 'Notas11'),
('Producto12', 'Descripción12', 240.00, 120.00, 12, 12, 'Notas12'),
('Producto13', 'Descripción13', 250.00, 125.00, 13, 13, 'Notas13'),
('Producto14', 'Descripción14', 260.00, 130.00, 14, 14, 'Notas14'),
('Producto15', 'Descripción15', 270.00, 135.00, 15, 15, 'Notas15'),
('Producto16', 'Descripción16', 280.00, 140.00, 16, 16, 'Notas16'),
('Producto17', 'Descripción17', 290.00, 145.00, 17, 17, 'Notas17'),
('Producto18', 'Descripción18', 300.00, 150.00, 18, 18, 'Notas18'),
('Producto19', 'Descripción19', 310.00, 155.00, 19, 19, 'Notas19'),
('Producto20', 'Descripción20', 320.00, 160.00, 20, 20, 'Notas20'),
('Producto21', 'Descripción21', 330.00, 165.00, 21, 21, 'Notas21'),
('Producto22', 'Descripción22', 340.00, 170.00, 22, 22, 'Notas22'),
('Producto23', 'Descripción23', 350.00, 175.00, 23, 23, 'Notas23'),
('Producto24', 'Descripción24', 360.00, 180.00, 24, 24, 'Notas24'),
('Producto25', 'Descripción25', 370.00, 185.00, 25, 25, 'Notas25'),
('Producto26', 'Descripción26', 380.00, 190.00, 26, 26, 'Notas26'),
('Producto27', 'Descripción27', 390.00, 195.00, 27, 27, 'Notas27'),
('Producto28', 'Descripción28', 400.00, 200.00, 28, 28, 'Notas28'),
('Producto29', 'Descripción29', 410.00, 205.00, 29, 29, 'Notas29'),
('Producto30', 'Descripción30', 420.00, 210.00, 30, 30, 'Notas30'),
('Producto31', 'Descripción31', 430.00, 215.00, 31, 31, 'Notas31'),
('Producto32', 'Descripción32', 440.00, 220.00, 32, 32, 'Notas32'),
('Producto33', 'Descripción33', 450.00, 225.00, 33, 33, 'Notas33'),
('Producto34', 'Descripción34', 460.00, 230.00, 34, 34, 'Notas34'),
('Producto35', 'Descripción35', 470.00, 235.00, 35, 35, 'Notas35'),
('Producto36', 'Descripción36', 480.00, 240.00, 36, 36, 'Notas36'),
('Producto37', 'Descripción37', 490.00, 245.00, 37, 37, 'Notas37'),
('Producto38', 'Descripción38', 500.00, 250.00, 38, 38, 'Notas38'),
('Producto39', 'Descripción39', 510.00, 255.00, 39, 39, 'Notas39'),
('Producto40', 'Descripción40', 520.00, 260.00, 40, 40, 'Notas40'),
('Producto41', 'Descripción41', 530.00, 265.00, 1, 1, 'Notas41'),
('Producto42', 'Descripción42', 540.00, 270.00, 2, 2, 'Notas42'),
('Producto43', 'Descripción43', 550.00, 275.00, 3, 3, 'Notas43');