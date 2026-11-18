THỰC HÀNH: LAB 2 MÃ HÓA ĐỐI XỨNG CỔ ĐIỂN </br>
Họ tên: Trần Mỹ Quyên </br>
Mssv: 1150070037 </br>
Lớp 11_TMĐT </br>
===========BÁO CÁO=================</br>
## Hướng dẫn cài đặt và chạy chương trình
### 1. Cấu hình Cơ sở dữ liệu (SQL Server)
1. Đảm bảo SQL Server Express có cổng TCP/IP **`14333`**.
2. Mở SQL Server Management Studio (SSMS), mở và chạy (nhấn `F5`) file "LAB2_MaHoaHienDai.sql" 
  
### 2. Chạy chương trình Java (Apache NetBeans)
1. Mở Apache NetBeans (bản 20 trở lên, sử dụng JDK 17/21).
2. Chọn **File → Open Project...** và trỏ tới thư mục `LAB2_MaHoaHienDai`.
3. Nhấp chuột phải vào dự án chọn **Clean and Build (`Shift+F11`)** để Maven tự động tải thư viện `mssql-jdbc` và `bcprov-jdk18on` (BouncyCastle).
4. Nhấn **`F6` (Run Project)** để khởi chạy giao diện chính `week_02.frm_Menu`.
5. Chọn **Kết nối SQL Server**,và bấm **Test Connection** trước khi thao tác các bài thực hành 2.1 – 2.6.


