-- Crear la base de datos
CREATE DATABASE proyecto_peti;
GO

USE proyecto_peti;
GO

-- Tabla de Usuarios
CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY,
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(255) NOT NULL
);
GO

-- Plan Estratégico
CREATE TABLE PlanEstrategico (
    Id INT PRIMARY KEY IDENTITY,
    UserId INT NOT NULL,
    FechaCreacion DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserId) REFERENCES Users(Id)
);
GO

-- Información de la Empresa
CREATE TABLE InformacionEmpresa (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    NombreEmpresa NVARCHAR(255),
    Descripcion NVARCHAR(MAX),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Misión
CREATE TABLE Mision (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Contenido NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Visión
CREATE TABLE Vision (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Contenido NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Valores
CREATE TABLE Valores (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Valor NVARCHAR(200),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Objetivos Estratégicos
CREATE TABLE ObjetivosEstrategicos (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Objetivo NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Objetivos Específicos
CREATE TABLE ObjetivosEspecificos (
    Id INT PRIMARY KEY IDENTITY,
    ObjetivoId INT NOT NULL,
    Detalle NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (ObjetivoId) REFERENCES ObjetivosEstrategicos(Id)
);
GO

-- Análisis FODA
CREATE TABLE AnalisisFODA (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Fortalezas NVARCHAR(MAX),
    Debilidades NVARCHAR(MAX),
    Oportunidades NVARCHAR(MAX),
    Amenazas NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Cadena de Valor
CREATE TABLE CadenaValor (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    PreguntaNumero INT NOT NULL,
    PreguntaTexto NVARCHAR(MAX),
    Valoracion INT CHECK (Valoracion BETWEEN 1 AND 5) NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Iniciativas Estratégicas
CREATE TABLE IniciativasEstrategicas (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Perspectiva NVARCHAR(100),
    Descripcion NVARCHAR(MAX),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Matriz RACI
CREATE TABLE MatrizRACI (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Actividad NVARCHAR(255),
    Responsable NVARCHAR(100),
    Aprobador NVARCHAR(100),
    Consultado NVARCHAR(100),
    Informado NVARCHAR(100),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Fuerzas de Porter
CREATE TABLE FuerzasPorter (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,

    -- Rivalidad empresas del sector
    NaturalezaCompetidores NVARCHAR(50),
    NumeroCompetidores NVARCHAR(50),
    RentabilidadMedia NVARCHAR(50),
    Diferenciacion NVARCHAR(50),
    BarrerasSalida NVARCHAR(50),

    -- Barreras de entrada
    EconomiaEscala NVARCHAR(50),
    NecesidadCapital NVARCHAR(50),
    CostesCambio NVARCHAR(50),
    RegulacionLegal NVARCHAR(50),
    AccesoDistribucion NVARCHAR(50),
    RecursosEspecificos NVARCHAR(50),

    -- Poder de los clientes
    ConcentracionCompradores NVARCHAR(50),
    VolumenCompras NVARCHAR(50),
    Sustitucion NVARCHAR(50),
    CostesCambioCliente NVARCHAR(50),

    -- Productos Sustitutos
    DisponibilidadSustitutos NVARCHAR(50),

    -- Conclusión final
    Conclusion NVARCHAR(MAX),

    -- Oportunidades y amenazas
    Oportunidad1 NVARCHAR(MAX),
    Oportunidad2 NVARCHAR(MAX),
    Amenaza1 NVARCHAR(MAX),
    Amenaza2 NVARCHAR(MAX),

    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,

    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO


-- Análisis PEST
CREATE TABLE AnalisisPEST (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Politico NVARCHAR(MAX),
    Economico NVARCHAR(MAX),
    Social NVARCHAR(MAX),
    Tecnologico NVARCHAR(MAX),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Matriz CAME
ALTER TABLE MatrizCAME (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    
    -- Acciones para Corregir (C)
    Corregir1 NVARCHAR(MAX),
    Corregir2 NVARCHAR(MAX),
    Corregir3 NVARCHAR(MAX),
    Corregir4 NVARCHAR(MAX),

    -- Acciones para Afrontar (A)
    Afrontar1 NVARCHAR(MAX),
    Afrontar2 NVARCHAR(MAX),
    Afrontar3 NVARCHAR(MAX),
    Afrontar4 NVARCHAR(MAX),

    -- Acciones para Mantener (M)
    Mantener1 NVARCHAR(MAX),
    Mantener2 NVARCHAR(MAX),
    Mantener3 NVARCHAR(MAX),
    Mantener4 NVARCHAR(MAX),

    -- Acciones para Explotar (E)
    Explotar1 NVARCHAR(MAX),
    Explotar2 NVARCHAR(MAX),
    Explotar3 NVARCHAR(MAX),
    Explotar4 NVARCHAR(MAX),

    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,

    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Resumen Ejecutivo
CREATE TABLE ResumenEjecutivo (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Introduccion NVARCHAR(MAX),
    Alcance NVARCHAR(MAX),
    ResultadosEsperados NVARCHAR(MAX),
    Conclusiones NVARCHAR(MAX),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

CREATE TABLE ObservacionesCadenaValor (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Fortalezas1 NVARCHAR(MAX),
    Fortalezas2 NVARCHAR(MAX),
    Fortalezas3 NVARCHAR(MAX),
    Fortalezas4 NVARCHAR(MAX),
    Debilidades1 NVARCHAR(MAX),
    Debilidades2 NVARCHAR(MAX),
    Debilidades3 NVARCHAR(MAX),
    Debilidades4 NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);

CREATE TABLE IdentificacionEstrategias (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,

    -- Factores internos y externos (texto visible en la parte superior)
    ListaFortalezas NVARCHAR(MAX),
    ListaDebilidades NVARCHAR(MAX),
    ListaOportunidades NVARCHAR(MAX),
    ListaAmenazas NVARCHAR(MAX),

    -- Matriz FO
    FO_F1_O1 INT NULL,
    FO_F1_O2 INT NULL,
    FO_F1_O3 INT NULL,
    FO_F1_O4 INT NULL,
    FO_F2_O1 INT NULL,
    FO_F2_O2 INT NULL,
    FO_F2_O3 INT NULL,
    FO_F2_O4 INT NULL,
    FO_Total INT NULL,

    -- Matriz FA
    FA_F1_A1 INT NULL,
    FA_F1_A2 INT NULL,
    FA_F1_A3 INT NULL,
    FA_F1_A4 INT NULL,
    FA_F2_A1 INT NULL,
    FA_F2_A2 INT NULL,
    FA_F2_A3 INT NULL,
    FA_F2_A4 INT NULL,
    FA_Total INT NULL,

    -- Matriz DO
    DO_D1_O1 INT NULL,
    DO_D1_O2 INT NULL,
    DO_D1_O3 INT NULL,
    DO_D1_O4 INT NULL,
    DO_D2_O1 INT NULL,
    DO_D2_O2 INT NULL,
    DO_D2_O3 INT NULL,
    DO_D2_O4 INT NULL,
    DO_Total INT NULL,

    -- Matriz DA
    DA_D1_A1 INT NULL,
    DA_D1_A2 INT NULL,
    DA_D1_A3 INT NULL,
    DA_D1_A4 INT NULL,
    DA_D2_A1 INT NULL,
    DA_D2_A2 INT NULL,
    DA_D2_A3 INT NULL,
    DA_D2_A4 INT NULL,
    DA_Total INT NULL,

    -- Síntesis de resultados
    PuntajeFO INT NULL,
    PuntajeFA INT NULL,
    PuntajeDO INT NULL,
    PuntajeDA INT NULL,
    TipoEstrategiaFinal NVARCHAR(100),
    DescripcionFinal NVARCHAR(MAX),

    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,

    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);