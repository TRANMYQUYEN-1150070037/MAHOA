/*============Tao Database ======*/
IF DB_ID(N'LAB2_MaHoaHienDai') IS NULL
BEGIN
    CREATE DATABASE LAB2_MaHoaHienDai;
END;
GO
USE LAB2_MaHoaHienDai;
GO
IF OBJECT_ID(N'dbo.app_users', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.app_users (
        user_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        username NVARCHAR(40) NOT NULL UNIQUE,
        salt VARBINARY(16) NOT NULL,
        password_hash VARBINARY(32) NOT NULL,
        created_at DATETIME2(0) NOT NULL DEFAULT SYSUTCDATETIME()
    );
END;
GO
IF OBJECT_ID(N'dbo.crypto_history', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.crypto_history (
        history_id BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        algorithm NVARCHAR(40) NOT NULL,
        operation NVARCHAR(16) NOT NULL,
        app_username NVARCHAR(40) NULL,
        input_length INT NOT NULL,
        output_length INT NOT NULL,
        created_at DATETIME2(0) NOT NULL DEFAULT SYSUTCDATETIME()
    );
END;
GO
SELECT name FROM sys.tables ORDER BY name;
GO







/*============03_Kiem_Tra_Du_Lieu.sql ============*/
USE LAB2_MaHoaHienDai;
GO
SELECT DB_NAME() AS database_name, @@SERVERNAME AS sql_server_name;
SELECT TOP (20) user_id, username, created_at FROM dbo.app_users ORDER BY user_id DESC;
SELECT TOP (50) history_id, created_at, algorithm, operation, app_username, input_length, output_length
FROM dbo.crypto_history
ORDER BY history_id DESC;
SELECT COUNT(*) AS so_dong_lich_su FROM dbo.crypto_history;
GO