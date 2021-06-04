CREATE DATABASE QLFILM
GO
USE QLFILM
GO
CREATE TABLE Actors(
	AID nvarchar(4) NOT NULL,
	Actors nvarchar(50) NOT NULL,
  	CONSTRAINT PK_Actors PRIMARY KEY (AID)
);
GO
CREATE TABLE Films(
	FID nvarchar(4) NOT NULL,
	EnglishTitle nvarchar(200) NOT NULL,
	VietnameseTitle nvarchar(200) NOT NULL,
	Year int NOT NULL,
	Length float,
	Rating float,
	Gross float,
  	CONSTRAINT PK_Films PRIMARY KEY (FID)
);
GO
CREATE TABLE Categories(
	CID nvarchar(4) NOT NULL,
	Categories nvarchar(20) NOT NULL,
 	CONSTRAINT PK_Categories PRIMARY KEY (CID)
);
GO
CREATE TABLE Directors(
	DID nvarchar(4) NOT NULL,
	Directors nvarchar(50) NOT NULL,
 	CONSTRAINT PK_Directors PRIMARY KEY (DID)
 );
GO
CREATE TABLE Film_Actor(
	FID nvarchar(4) NOT NULL,
	AID nvarchar(4) NOT NULL,
  	CONSTRAINT PK_Film_Actor PRIMARY KEY (FID, AID),
    CONSTRAINT FK_FilmActor_Films FOREIGN KEY (FID) REFERENCES Films(FID),
    CONSTRAINT FK_FilmActor_Actors FOREIGN KEY (AID) REFERENCES Actors(AID)
);
GO
CREATE TABLE Film_Category(
	FID nvarchar(4) NOT NULL,
	CID nvarchar(4) NOT NULL,
	CONSTRAINT PK_Film_Category PRIMARY KEY (FID, CID),
    CONSTRAINT FK_FilmCategory_Films FOREIGN KEY (FID) REFERENCES Films(FID),
    CONSTRAINT FK_FilmCategory_Categories FOREIGN KEY (CID) REFERENCES Categories(CID)
);
GO
CREATE TABLE Film_Director(
	FID nvarchar(4) NOT NULL,
	DID nvarchar(4) NOT NULL,
	CONSTRAINT PK_Film_Director PRIMARY KEY (FID, DID),
    CONSTRAINT FK_FilmDirector_Films FOREIGN KEY (FID) REFERENCES Films(FID),
    CONSTRAINT FK_FilmDirector_Directors FOREIGN KEY (DID) REFERENCES Directors(DID)
);
GO
INSERT INTO Actors (AID, Actors) VALUES (N'A001', N'Van Hong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A002', N'Bich Phuong Huynh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A003', N'Lan Huong Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A004', N'Hoai Nam Vo');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A005', N'Lam Thanh My');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A006', N'Lap Huynh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A007', N'Truong huu Quy');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A008', N'The Vinh Truong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A009', N'Tran Thi Nha Phuong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A010', N'Kim Ly');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A011', N'Mac Van Khoa');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A012', N'Linh Hoài');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A013', N'Charlie Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A014', N'Vi Tu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A015', N'Son Bao Tran');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A016', N'Vu T. Le Thi');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A017', N'Huy Khanh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A018', N'Phuong Minh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A019', N'Khuong Ngoc');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A020', N'Thu Trang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A021', N'Ha Hien');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A022', N'B Tran');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A023', N'Le Chi Kien');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A024', N'Doan Duong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A025', N'Kaity Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A026', N'Thanh Nhien Phan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A027', N'Nga Thúy');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A028', N'Ha Phong Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A029', N'Quy Binh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A030', N'Chi Bao');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A031', N'Takafumi Akutsu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A032', N'Cao De Hoang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A033', N'Luu Duc');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A034', N'Jun Pham');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A035', N'Minh Huong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A036', N'Kathy Uyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A037', N'Maurice Nash');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A038', N'Anh Hieu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A039', N'Mathew M. Korsch');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A040', N'Phu Cuong Lai');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A041', N'Thanh Duy');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A042', N'Leon Le');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A043', N'Ngoc Bao Ta');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A044', N'Phuong Bella');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A045', N'Tuc Cuong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A046', N'Noriko Takimoto');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A047', N'Pham Quynh Anh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A048', N'Hoa Mai');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A049', N'Ngoc Anh Vu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A050', N'Huy Hoang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A051', N'Kathleen Luong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A052', N'Hoang Tran Minh Duc');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A053', N'Hieu Hien');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A054', N'Mi Du');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A055', N'Ngoc Hung Dao');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A056', N'To Tuan Dang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A057', N'Thai Hoa');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A058', N'Bich Ngoc Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A059', N'Minh Hang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A060', N'Cat Ly');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A061', N'Long Dien');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A062', N'Dinh Y Nhung');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A063', N'Kim Chi');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A064', N'Trúc Anh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A065', N'Midu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A066', N'Quang Vinh Luu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A067', N'Phuong Anh Leu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A068', N'Ngoc Diep');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A069', N'Linh Dan Pham');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A070', N'Zan Sram Kra');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A071', N'Anh Hong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A072', N'Tina Duong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A073', N'Lâm Vissay');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A074', N'Van Hai Bui');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A075', N'Huynh Anh Lê');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A076', N'Van Trang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A077', N'Vinh Khoa Ho');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A078', N'Khanh Van');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A079', N'Nguyen Trung Dan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A080', N'Kris Duangphung');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A081', N'Michael Jarmus');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A082', N'Thanh Tu Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A083', N'Kim Xuan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A084', N'Elly Tran');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A085', N'Kim Long Thach');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A086', N'Nhu Quynh Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A087', N'Tran Nghia');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A088', N'Yen Hoang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A089', N'Nguyen Thai An');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A090', N'Trung Kien Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A091', N'Nguyen Hau');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A092', N'Ngan Thai');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A093', N'Mai Cát Vi');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A094', N'Thuy Hoa');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A095', N'Hoang Ha');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A096', N'Cong Ninh Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A097', N'Yu Duong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A098', N'Phuong-Thanh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A099', N'Vo Dien Gia Huy');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A100', N'Le Huynh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A101', N'Binh An');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A102', N'Kha Ngan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A103', N'Ba Loc Duong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A104', N'Bich Ngoc');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A105', N'Minh Thuan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A106', N'Huynh Dong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A107', N'Jayvee Mai The Hiep');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A108', N'Hong Dao');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A109', N'Ngo The Quan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A110', N'Thien Tu Tran');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A111', N'Van Thom Lê');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A112', N'Thi Huong Thao Le');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A113', N'Khanh Le');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A114', N'David Tran');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A115', N'Trung Dung');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A116', N'Loc Thanh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A117', N'Nam Em');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A118', N'Thi Kieu Trinh Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A119', N'Le Ha Anh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A120', N'Le Duy Hai');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A121', N'Tien Luat');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A122', N'Thinh Vinh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A123', N'Tran Thanh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A124', N'Phi Phung');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A125', N'Phuong Anh Dao');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A126', N'Hanh Thuy Ngo Pham');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A127', N'Ngoc Thanh Tam');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A128', N'Lam Minh Thang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A129', N'My Tam');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A130', N'Chi Pu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A131', N'Do Trong Tan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A132', N'Diem Lien');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A133', N'Tuan Khai');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A134', N'Phat Trieu Hoang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A135', N'Vân Lê');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A136', N'Pho Dac Biet');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A137', N'Phuong Mai');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A138', N'Ngoc Phuong Mai');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A139', N'Hanh Tuyet');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A140', N'Khuong Be');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A141', N'Trish Le');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A142', N'Trang Thu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A143', N'Thang Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A144', N'Thuy An Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A145', N'Bao Quyen Tang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A146', N'Trinh Xuan Nhan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A147', N'Hâu Nguyen Duy');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A148', N'Thanh Minh Phan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A149', N'Lan Kim');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A150', N'The Lu Le');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A151', N'Hong Phuoc Pham');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A152', N'Johnny Van Tran');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A153', N'Huu Thanh Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A154', N'Nguyen Thuy Anh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A155', N'Thi Ha');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A156', N'Ta Am');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A157', N'Phan Tan Thi');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A158', N'Duy Khoa Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A159', N'Thi Hai Yen Do');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A160', N'Long Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A161', N'Singer Doan Trang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A162', N'Cong Hoang Le');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A163', N'Tran Minh Thanh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A164', N'Veronica Ngo');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A165', N'Maya');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A166', N'Johnny Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A167', N'Trinh Ho Khanh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A168', N'Hong Chuong Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A169', N'Trong Hai');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A170', N'Mai Tai Phen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A171', N'Duc Khue');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A172', N'Le Dung Nhi');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A173', N'Hai Trieu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A174', N'Hoang Bach');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A175', N'Quynh Hoa');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A176', N'Quang Hai Ngo');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A177', N'Nhung Trang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A178', N'Ngo Kien Huy');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A179', N'Man San Lu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A180', N'Chi Bao Pham');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A181', N'Quoc Trung Do');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A182', N'Diem My');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A183', N'De Xuan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A184', N'Lanh Thanh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A185', N'Nu Yên-Khê Tran');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A186', N'Hoang Yen Chibi');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A187', N'Truc Diem');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A188', N'Vi Van Hua');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A189', N'Son Bac');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A190', N'Dave Hope');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A191', N'Duong Don');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A192', N'Pham Anh Khoa');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A193', N'Xuan Kim');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A194', N'Nsut Le Thien');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A195', N'Do An');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A196', N'Jackie');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A197', N'Kim Hien');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A198', N'Thu Thuy Pham');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A199', N'Tang Thanh Ha');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A200', N'Truong Ngoc Anh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A201', N'Manh Hai Luong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A202', N'Mai Van Thinh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A203', N'Dustin Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A204', N'Anh Hoa Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A205', N'My Anh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A206', N'Binh Minh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A207', N'Harry Lu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A208', N'Khanh Quoc Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A209', N'Thái Ho');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A210', N'Ninh Duong Lan Ngoc');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A211', N'Thanh Hang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A212', N'Lan Khue');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A213', N'Chau Bui');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A214', N'Ngoc Minh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A215', N'Huu Chau');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A216', N'Ngan Khanh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A217', N'Kieu Minh Tuan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A218', N'Ngoc Duong Yen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A219', N'Thu Trang Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A220', N'Anh The');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A221', N'Han Thi Pham');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A222', N'Anh Tu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A223', N'Le Van Loc');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A224', N'Nguyen manh Thang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A225', N'Tuan Kiet');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A226', N'Linh Son Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A227', N'Thi Loc Truong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A228', N'Cuong Bui');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A229', N'Long Le Vu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A230', N'My Uyen Dang Tran');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A231', N'Chi Hong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A232', N'Tran Phong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A233', N'Quach Ngoc Ngoan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A234', N'Ha Quoc Hoang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A235', N'Hoai Phong Duong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A236', N'Kieu Chinh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A237', N'Isaac');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A238', N'Chi Tai');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A239', N'Ngoc Hiep Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A240', N'Tu Thanh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A241', N'Bao Anh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A242', N'Diem Kieu');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A243', N'Hoang Phuc Nguyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A244', N'Tat Binh Dang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A245', N'Bài Bình Bùi');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A246', N'Catherine Ai');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A247', N'Ngoc Quyen');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A248', N'Gary Daniels');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A249', N'Thanh Hien');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A250', N'Thu Diep');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A251', N'Tony Chiu-Wai Leung');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A252', N'Cory Jackson');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A253', N'Minh Khang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A254', N'Trang Minh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A255', N'Luu Viet Bao Dang');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A256', N'Hoàng Oanh');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A257', N'Viet Son Le');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A258', N'Le Chi Kein');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A259', N'Tran Le Thuy Vy');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A260', N'Bao Chi');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A261', N'Khang Trong');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A262', N'Alex');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A263', N'Hanh Tran');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A264', N'Dieu Nhi');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A265', N'Toi Lam');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A266', N'Cuong Seven');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A267', N'Bao Son Doan');
 
INSERT INTO Actors (AID, Actors) VALUES (N'A268', N'Mang Long Dao');



INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F001', N'The Scent of Green Papaya', N'Mùi Đu Đủ Xanh', 1993, 104, 7.4000000953674316, 1.91);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F002', N'Cyclo', N'Xích Lô', 1995, 123, 7.3000001907348633, 0.08);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F003', N'The Vertical Ray of the Sun', N'Mùa Hè Chiều Thẳng Đứng', 2000, 112, 7.1999998092651367, 0.46);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F004', N'Furie', N'Hai Phượng', 2019, 98, 6.3000001907348633, 0.59);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F005', N'Ba mùa', N'Ba Mùa', 1999, 104, 7.1999998092651367, 2.02);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F006', N'The Rebel', N'Dòng Máu Anh Hùng', 2007, 103, 7, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F007', N'The Third Wife', N'Vợ Ba', 2018, 96, 6.6999998092651367, 0.08);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F008', N'Yellow Flowers on the Green Grass', N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 2015, 103, 7.5999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F009', N'Clash', N'Bẫy Rồng', 2009, 90, 6, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F010', N'Cú và Chim Se Sẻ', N'Cú Và Chim Se Sẻ', 2007, 97, 7.3000001907348633, 0.05);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F011', N'Journey from the Fall', N'Vượt Sóng', 2006, 135, 7.0999999046325684, 0.64);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F012', N'Sword of the Assassin', N'Thiên Mệnh Anh Hùng', 2012, 103, 6.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F013', N'Hot Boy Nổi Loạn và Câu Chuyện Về Thằng Cười, Cô Gái Điếm và Con Vịt', N' Hot Boy Nổi Loạn và Câu Chuyện Về Thằng Cười, Cô Gái Điếm và Con Vịt', 2011, 103, 6.8000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F014', N'Mùa len trâu', N'Mùa Len Trâu', 2004, 102, 6.9000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F015', N'Áo Lụa Hà Đông', N'Áo Lụa Hà Đông', 2006, 142, 7.4000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F016', N'Jailbait', N'Em Chưa 18', 2017, 95, 6.5, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F017', N'Bụi Đời Chợ Lớn', N'Bụi Đời Chợ Lớn', 2013, 85, 6.8000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F018', N'Để Mai Tính', N'Để Mai Tính', 2010, 95, 6.5999999046325684, 0.17);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F019', N'Em Là Bà Nội Của Anh', N'Em Là Bà Nội Của Anh', 2015, 127, 7.0999999046325684, 0.07);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F020', N'Bi, Đừng Sợ!', N'Bi, Đừng Sợ!', 2010, 91, 6.6999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F021', N'Quả Tim Máu', N'Quả Tim Máu', 2014, 97, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F022', N'Cha và con và...', N'Cha Và Con Và …', 2015, 102, 6.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F023', N'Cô Ba Sài Gòn', N'Cô Ba Sài Gòn', 2017, 100, 6.6999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F024', N'When the Tenth Month Comes', N'Bao Giờ Cho Đến Tháng Mười', 1984, 95, 7.6999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F025', N'Mắt Biếc', N'Mắt Biếc', 2019, 117, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F026', N'Song lang', N'Song Lang', 2018, 90, 7.8000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F027', N'Cánh Đồng Bất Tận', N'Cánh Đồng Bất Tận', 2010, 105, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F028', N'Tháng Năm Rực Rỡ', N'Tháng Năm Rực Rỡ', 2018, 118, 7.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F029', N'Adrift', N'Chơi Vơi', 2009, 110, 6.4000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F030', N'Tèo em', N'Tèo Em', 2013, 99, 6.6999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F031', N'Cô Dâu Đại Chiến', N'Cô Dâu Đại Chiến', 2011, 100, 6, 0.06);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F032', N'Co gai den tu hom qua', N'Cô Gái Đến Từ Hôm Qua', 2017, 120, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F033', N'Người Bất Tử', N'Người Bất Tử', 2018, 132, 6.6999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F034', N'Passport to Love', N'Chuyện Tình Xa Xứ', 2009, 120, 6.5999999046325684, 0.17);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F035', N'Scandal: Bí Mật Thảm Đỏ', N'Scandal: Bí Mật Thảm Đỏ', 2012, 100, 6.9000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F036', N'Chàng Vợ Của Em', N'Chàng Vợ Của Em', 2018, 120, 7.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F037', N'Kiss of the Death', N'Nụ Hôn Thần Chết', 2008, 93, 6.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F038', N'Scandal: Hào Quang Trở Lại', N'Scandal: Hào Quang Trở Lại', 2014, 110, 6.9000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F039', N'Chuyện Của Pao', N'Chuyện của Pao', 2006, 98, 6.8000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F040', N'Long Ruoi', N'Long Ruồi', 2011, 95, 6.1999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F041', N'Đập Cánh Giữa Không Trung', N'Đập Cánh Giữ Không Trung ', 2014, 99, 6.9000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F042', N'Cánh đồng hoang', N'Cánh Đồng Hoang', 1979, 90, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F043', N'Em bé Hà Nội', N'Em Bé Hà Nội', 1974, 72, 6.9000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F044', N'Nhắm Mắt Thấy Mùa Hè', N'Nhắm Mắt Thấy Mùa Hè', 2018, 98, 6.8000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F045', N'Âm Mưu Giày Gót Nhọn', N'Âm Mưu Giày Gót Nhọn', 2013, 91, 7, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F046', N'Goodbye Mother', N'Thưa Mẹ Con Đi', 2019, 106, 7.5, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F047', N'Sài Gòn Yo!', N'Sài Gòn Yo!', 2011, 106, 6.6999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F048', N'Chang Trai Nam Ay', N'Chàng Trai Năm Ấy', 2014, 119, 6.1999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F049', N'First Morning', N'Buổi Sáng Đầu Năm', 2003, 89, 6.6999998092651367, 0.04);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F050', N'Nuoc', N'Nước 2030', 2014, 98, 6, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F051', N'Lôi Báo', N'Lôi Báo', 2017, 107, 6, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F052', N'Thương Nhớ Đồng Quê', N'Thương Nhớ Đồng Quê', 1995, 116, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F053', N'Tien Chua', N'Tiền Chùa', 2013, 98, 7.8000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F054', N'The Guava House', N'Mùa Ổi', 2000, 100, 7.1999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F055', N'Sister Sister', N'Chị Chị Em Em', 2019, 104, 6.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F056', N'Cưới Ngay Kẻo Lỡ', N'Cưới Ngay Kẻo Lỡ', 2012, 95, 6.4000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F057', N'Mẹ Chồng', N'Mẹ Chồng', 2017, 90, 7.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F058', N'Cua Lại Vợ Bầu', N'Cua Lại Vợ Bầu', 2019, 102, 5.9000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F059', N'Đừng Đốt', N'Đừng Đốt', 2009, 100, 7.5, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F060', N'Dịu Dàng', N'Dịu Dàng', 2014, 100, 6.5, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F061', N'Để Mai Tính 2: Để Hội Tính', N'Để Mai Tính 2', 2014, 95, 6.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F062', N'Sống Trong Sợ Hãi', N'Sống Trong Sợ Hãi', 2005, 110, 7.5999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F063', N'Hương Ga', N'Hương Ga', 2014, 100, 5.9000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F064', N'Cha Cõng Con', N'Cha Cõng Con', 2017, 90, 7.6999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F065', N'1735 Km', N'1735 KM', 2005, 107, 7.4000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F066', N'Hạt Mưa Rơi Bao Lâu', N'Hạt Mưa Rơi Bao Lâu', 2005, 114, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F067', N'Đời Cát', N'Đời Cát', 1999, 90, 7.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F068', N'Vũ Khúc Con Cò', N'Vũ Khúc Con Cò', 2002, 111, 6.4000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F069', N'Cô Dâu Đại Chiến 2', N'Cô Dâu Đại Chiến 2', 2014, 100, 6.1999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F070', N'Người Truyền Giống', N'Người Truyền Thống', 2014, 87, 6.5999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F071', N'Thất Sơn Tâm Linh', N'Thất Sơn Tâm Linh', 2019, 100, 5.9000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F072', N'Jackpot', N'Trúng Số', 2015, 92, 6.5999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F073', N'Quyên', N'Quyên', 2015, 105, 6.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F074', N'Mê Thảo, Thời Vang Bóng', N'Mê Thảo, Thời Vang Bóng', 2002, 107, 7.5999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F075', N'Ngọc Viễn Đông', N'Ngọc Viễn Đông', 2011, 103, 8, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F076', N'Hồn Papa Da Con Gái', N'Hồn Papa Da Con Gái', 2018, 113, 6.5999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F077', N'Dành cho tháng Sáu', N'Dành Cho Tháng Sáu', 2012, 81, 7.6999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F078', N'Trăng Nơi Đáy Giếng', N'Trăng Nơi Đáy Giếng', 2008, 121, 7.8000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F079', N'Gánh Xiếc Rong', N'Gánh Xiếc Rong', 1988, 76, 6.9000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F080', N'Chị Trợ Lý Của Anh', N'Chị Trợ Lý Của Anh', 2019, 113, 6.1999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F081', N'Những Nụ Hôn Rực Rỡ', N'Những nụ hôn rực rỡ', 2010, 0, 6.4000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F082', N'Lấy Chồng Người Ta', N'Lấy Chồng Người Ta', 2012, 115, 8, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F083', N'Yêu', N'Yêu', 2015, 106, 7.1999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F084', N'Huyền Thoại Bất Tử', N'Huyền Thoại Bất Tử', 2009, 90, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F085', N'Thung Lũng Hoang Vắng', N'Thung Lũng Hoang Vắng', 2001, 90, 7.5, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F086', N'Hello Vietnam', N'Dạ Cổ Hoài Lang', 2017, 88, 7.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F087', N'Lac Gioi', N'Lạc Giới', 2014, 93, 6.8000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F088', N'Giao Lộ Định Mệnh', N'Giao Lộ Định Mệnh', 2010, 100, 6.1999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F089', N'Dao cua dan ngu cu', N'Đảo Của Dân Ngụ Cư', 2017, 93, 6.4000000953674316, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F090', N'Saigon I Love You', N'Sài Gòn, Anh Yêu Em', 2016, 0, 6.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F091', N'Nắng', N'Nắng', 2016, 100, 7.1999998092651367, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F092', N'Mùi Cỏ Cháy', N'Mùi Cỏ Cháy', 2012, 97, 8.1000003814697266, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F093', N'Lô Tô', N'Lô Tô', 2017, 90, 7, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F094', N'Trời Sáng Rồi, Ta Ngủ Đi Thôi', N'Trời Sáng Rồi, Ta Ngủ Đi Thôi', 2019, 93, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F095', N'She''s the Boss', N'Bạn Gái Tôi Là Sếp', 2017, 120, 6.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F096', N'Anh Trai Yêu Quái', N'Anh Trai Yêu Quái', 2019, 107, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F097', N'Vĩ tuyến 17 ngày và đêm', N'Vĩ Tuyến 17, Ngày Và Đêm', 1973, 180, 8.3000001907348633, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F098', N'100 Ngày Bên Em', N'100 Ngày Bên Em', 2018, 99, 7.0999999046325684, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F099', N'Làng Vũ Đại ngày ay', N'Làng Vũ Đại Ngày Ấy', 1982, 89, 8.5, NULL);
 
INSERT INTO Films (FID, EnglishTitle, VietnameseTitle, Year, Length, Rating, Gross) VALUES (N'F100', N'Vua Bãi Rác', N'Vua Bãi Rác', 2002, 97, 6.8000001907348633, NULL);
 
INSERT INTO Categories (CID, Categories) VALUES (N'C001', N'Romance');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C002', N'Adventure');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C003', N'Mystery');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C004', N'Drama');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C005', N'Horror');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C006', N'Sport');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C007', N'Comedy');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C008', N'War');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C009', N'History');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C010', N'Crime');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C011', N'Fantasy');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C012', N'Sci-Fi');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C013', N'Musical');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C014', N'Music');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C015', N'Family');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C016', N'Thriller');
 
INSERT INTO Categories (CID, Categories) VALUES (N'C017', N'Action');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D001', N'Phi Tien Son');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D002', N'Ngoc Dang Vu');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D003', N'Buu Loc Tran');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D004', N'Dustin Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D005', N'Anh Hong');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D006', N'Ham Tran');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D007', N'Ken Ochiai');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D008', N'Kay Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D009', N'Viet Max');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D010', N'Ash Mayfair');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D011', N'Charlie Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D012', N'Nghiem Dang Tuan Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D013', N'Chung Chi Cong');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D014', N'Dang Di Phan');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D015', N'Minh Nguyen-Vo');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D016', N'Quang Huy');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D017', N'Phan Gia Nhat Linh');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D018', N'Minh Tuan Do');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D019', N'Luu Huynh');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D020', N'Hai Ninh');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D021', N'Phan Quang Binh Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D022', N'Nguyen Thanh Van');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D023', N'Pham Nhue Giang');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D024', N'Stephane Gauger');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D025', N'Victor Vu');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D026', N'Dong Dang Giao');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D027', N'Cao Thuy Nhi');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D028', N'Ngoc Phuong Vu');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D029', N'Kathy Uyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D030', N'Dang Nhat Minh');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D031', N'Minh Thang Ly');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D032', N'Leon Le');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D033', N'Diep Hoang Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D034', N'Trinh Dinh Le Minh');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D035', N'Phan Gia Nhat Linh');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D036', N'Thanh Nghia Doan');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D037', N'Hong Sen Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D038', N'Le Binh Giang');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D039', N'Linh Viet');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D040', N'Huynh Tuan Anh');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D041', N'Dung Luong Dinh');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D042', N'Thanh Son Le');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D043', N'Quang Hai Ngo');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D044', N'Minh Phuong Doan');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D045', N'Quang Dung Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D046', N'Vinh Son Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D047', N'Thien Do');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D048', N'Van Khoa Pham');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D049', N'Huu Muoi Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D050', N'Bui Thac Chuyên');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D051', N'Le-Van Kiet');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D052', N'My Tam');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D053', N'Kim Quy Bui');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D054', N'Nhat Trung');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D055', N'Tony Bui');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D056', N'Jonathan Foo');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D057', N'Huu-Tuan Nguyen');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D058', N'Anh Hung Tran');
 
INSERT INTO Directors (DID, Directors) VALUES (N'D059', N'Cuong Ngo');


INSERT INTO Film_Actor (FID, AID) VALUES (N'F001', N'A185');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F001', N'A179');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F001', N'A227');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F001', N'A204');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F002', N'A223');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F002', N'A251');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F002', N'A185');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F002', N'A086');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F003', N'A185');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F003', N'A086');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F003', N'A113');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F003', N'A176');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F004', N'A164');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F004', N'A093');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F004', N'A026');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F004', N'A192');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F005', N'A239');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F005', N'A214');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F005', N'A134');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F005', N'A242');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F006', N'A166');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F006', N'A164');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F006', N'A203');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F006', N'A143');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F007', N'A168');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F007', N'A229');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F007', N'A185');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F007', N'A165');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F008', N'A122');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F008', N'A261');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F008', N'A005');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F008', N'A205');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F009', N'A166');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F009', N'A164');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F009', N'A243');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F009', N'A128');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F010', N'A060');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F010', N'A150');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F010', N'A221');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F010', N'A169');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F011', N'A236');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F011', N'A160');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F011', N'A132');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F011', N'A107');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F012', N'A106');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F012', N'A065');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F012', N'A019');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F012', N'A105');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F013', N'A201');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F013', N'A077');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F013', N'A226');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F013', N'A098');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F014', N'A150');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F014', N'A118');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F014', N'A153');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F014', N'A070');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F015', N'A110');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F015', N'A200');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F015', N'A208');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F015', N'A086');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F016', N'A262');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F016', N'A213');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F016', N'A196');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F016', N'A017');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F017', N'A061');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F017', N'A021');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F017', N'A002');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F017', N'A243');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F018', N'A203');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F018', N'A036');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F018', N'A057');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F018', N'A013');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F019', N'A071');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F019', N'A188');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F019', N'A178');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F019', N'A171');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F020', N'A148');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F020', N'A118');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F020', N'A028');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F020', N'A094');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F021', N'A174');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F021', N'A057');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F021', N'A009');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F021', N'A014');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F022', N'A159');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F022', N'A028');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F022', N'A162');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F022', N'A008');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F023', N'A210');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F023', N'A001');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F023', N'A164');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F023', N'A182');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F024', N'A135');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F024', N'A255');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F024', N'A088');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F024', N'A040');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F025', N'A064');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F025', N'A087');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F025', N'A232');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F025', N'A078');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F026', N'A063');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F026', N'A237');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F026', N'A016');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F026', N'A018');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F027', N'A159');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F027', N'A199');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F027', N'A210');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F027', N'A203');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F028', N'A071');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F028', N'A186');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F028', N'A211');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F028', N'A256');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F029', N'A159');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F029', N'A069');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F029', N'A158');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F029', N'A166');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F030', N'A068');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F030', N'A107');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F030', N'A057');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F030', N'A210');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F031', N'A068');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F031', N'A017');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F031', N'A216');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F031', N'A113');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F032', N'A119');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F032', N'A186');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F032', N'A178');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F032', N'A253');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F033', N'A073');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F033', N'A068');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F033', N'A037');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F033', N'A233');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F034', N'A206');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F034', N'A017');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F034', N'A036');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F034', N'A068');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F035', N'A076');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F035', N'A165');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F035', N'A019');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F035', N'A105');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F036', N'A125');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F036', N'A057');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F037', N'A166');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F037', N'A211');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F037', N'A116');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F037', N'A098');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F038', N'A260');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F038', N'A197');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F038', N'A107');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F038', N'A177');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F039', N'A159');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F039', N'A156');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F039', N'A089');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F039', N'A250');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F040', N'A074');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F040', N'A053');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F040', N'A107');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F040', N'A057');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F041', N'A154');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F041', N'A041');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F041', N'A095');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F041', N'A015');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F042', N'A265');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F042', N'A144');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F042', N'A183');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F042', N'A231');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F043', N'A193');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F043', N'A003');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F043', N'A240');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F043', N'A220');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F044', N'A125');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F044', N'A031');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F044', N'A096');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F044', N'A046');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F045', N'A036');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F045', N'A187');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F045', N'A107');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F045', N'A137');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F046', N'A108');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F046', N'A184');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F046', N'A099');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F046', N'A194');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F047', N'A175');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F047', N'A019');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F047', N'A157');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F047', N'A084');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F048', N'A241');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F048', N'A047');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F048', N'A055');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F048', N'A235');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F049', N'A051');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F049', N'A246');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F049', N'A160');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F049', N'A166');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F050', N'A175');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F050', N'A029');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F050', N'A085');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F050', N'A052');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F051', N'A266');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F051', N'A009');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F051', N'A049');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F051', N'A233');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F052', N'A244');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F052', N'A135');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F052', N'A104');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F052', N'A043');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F053', N'A091');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F053', N'A107');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F053', N'A067');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F053', N'A019');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F054', N'A245');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F054', N'A003');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F054', N'A198');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F054', N'A112');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F055', N'A211');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F055', N'A130');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F055', N'A184');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F056', N'A166');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F056', N'A068');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F056', N'A057');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F056', N'A182');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F057', N'A211');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F057', N'A247');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F057', N'A212');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F057', N'A054');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F058', N'A123');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F058', N'A210');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F058', N'A222');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F058', N'A011');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F059', N'A035');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F059', N'A072');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F059', N'A081');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F059', N'A039');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F060', N'A203');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F060', N'A082');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F060', N'A118');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F061', N'A057');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F061', N'A190');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F061', N'A252');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F061', N'A017');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F062', N'A230');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F062', N'A138');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F062', N'A126');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F062', N'A202');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F063', N'A200');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F063', N'A030');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F063', N'A207');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F063', N'A010');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F064', N'A109');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F064', N'A131');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F065', N'A218');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F065', N'A167');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F066', N'A200');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F066', N'A224');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F066', N'A007');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F066', N'A163');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F067', N'A191');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F067', N'A071');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F067', N'A048');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F067', N'A096');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F068', N'A180');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F068', N'A043');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F068', N'A176');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F068', N'A066');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F069', N'A174');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F069', N'A106');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F069', N'A097');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F069', N'A107');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F070', N'A257');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F070', N'A219');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F070', N'A090');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F071', N'A186');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F071', N'A249');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F071', N'A100');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F071', N'A194');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F072', N'A107');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F072', N'A210');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F072', N'A203');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F072', N'A238');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F073', N'A049');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F073', N'A015');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F073', N'A248');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F073', N'A114');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F074', N'A191');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F074', N'A172');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F074', N'A254');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F074', N'A027');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F075', N'A200');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F075', N'A236');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F075', N'A080');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F075', N'A050');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F076', N'A057');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F076', N'A025');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F077', N'A181');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F077', N'A075');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F077', N'A110');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F077', N'A267');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F078', N'A071');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F078', N'A155');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F078', N'A038');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F078', N'A032');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F079', N'A189');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F079', N'A140');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F079', N'A092');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F079', N'A220');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F080', N'A215');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F080', N'A096');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F080', N'A170');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F080', N'A129');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F081', N'A059');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F081', N'A211');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F081', N'A042');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F081', N'A098');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F082', N'A057');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F082', N'A017');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F082', N'A062');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F083', N'A044');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F083', N'A136');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F083', N'A106');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F083', N'A120');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F084', N'A203');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F084', N'A193');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F084', N'A083');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F084', N'A110');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F085', N'A147');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F085', N'A071');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F085', N'A139');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F085', N'A142');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F086', N'A012');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F086', N'A238');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F086', N'A141');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F086', N'A152');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F087', N'A101');
  
INSERT INTO Film_Actor (FID, AID) VALUES (N'F087', N'A115');
  
INSERT INTO Film_Actor (FID, AID) VALUES (N'F088', N'A188');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F088', N'A206');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F088', N'A182');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F088', N'A145');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F089', N'A243');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F089', N'A239');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F089', N'A151');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F089', N'A127');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F090', N'A161');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F090', N'A006');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F090', N'A017');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F090', N'A165');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F091', N'A012');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F091', N'A210');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F091', N'A020');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F091', N'A121');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F092', N'A056');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F092', N'A258');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F092', N'A023');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F092', N'A111');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F093', N'A117');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F093', N'A146');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F093', N'A173');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F093', N'A079');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F094', N'A234');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F094', N'A259');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F095', N'A195');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F095', N'A136');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F095', N'A107');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F095', N'A133');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F096', N'A237');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F096', N'A264');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F096', N'A124');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F096', N'A217');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F097', N'A268');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F097', N'A103');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F097', N'A024');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F097', N'A209');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F098', N'A034');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F098', N'A102');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F098', N'A022');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F098', N'A225');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F099', N'A228');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F099', N'A033');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F099', N'A088');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F099', N'A149');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F100', N'A045');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F100', N'A058');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F100', N'A263');
 
INSERT INTO Film_Actor (FID, AID) VALUES (N'F100', N'A004');

INSERT INTO Film_Category (FID, CID) VALUES (N'F001', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F001', N'C014');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F001', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F002', N'C010');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F002', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F003', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F004', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F004', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F004', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F005', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F006', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F006', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F006', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F007', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F008', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F009', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F009', N'C010');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F009', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F010', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F011', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F012', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F012', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F012', N'C009');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F013', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F013', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F014', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F015', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F016', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F016', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F016', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F017', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F017', N'C010');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F017', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F018', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F018', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F019', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F019', N'C014');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F020', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F021', N'C005');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F021', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F022', N'C010');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F022', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F023', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F023', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F023', N'C011');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F024', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F025', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F025', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F026', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F026', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F027', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F027', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F028', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F028', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F029', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F030', N'C002');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F030', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F030', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F031', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F031', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F031', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F032', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F032', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F033', N'C011');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F033', N'C005');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F033', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F034', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F035', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F035', N'C003');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F035', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F036', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F036', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F037', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F037', N'C011');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F037', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F038', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F038', N'C003');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F038', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F039', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F040', N'C002');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F040', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F040', N'C010');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F041', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F041', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F042', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F042', N'C008');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F043', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F043', N'C008');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F044', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F044', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F045', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F045', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F046', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F046', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F046', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F047', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F047', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F048', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F048', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F048', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F049', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F050', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F050', N'C003');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F050', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F051', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F051', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F051', N'C012');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F052', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F052', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F053', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F053', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F053', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F054', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F055', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F055', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F056', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F056', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F057', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F058', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F058', N'C015');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F058', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F059', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F059', N'C009');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F060', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F061', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F061', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F062', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F063', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F063', N'C010');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F063', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F064', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F064', N'C015');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F065', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F065', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F065', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F066', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F067', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F067', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F068', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F069', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F069', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F069', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F070', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F071', N'C005');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F071', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F072', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F072', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F073', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F074', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F074', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F075', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F075', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F076', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F076', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F076', N'C011');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F077', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F077', N'C006');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F078', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F079', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F080', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F080', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F081', N'C013');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F082', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F082', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F082', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F083', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F083', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F084', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F084', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F085', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F085', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F086', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F086', N'C015');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F087', N'C017');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F087', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F087', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F088', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F088', N'C003');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F088', N'C016');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F089', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F089', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F090', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F090', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F090', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F091', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F092', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F092', N'C008');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F093', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F094', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F094', N'C014');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F094', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F095', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F095', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F096', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F096', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F097', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F098', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F098', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F098', N'C001');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F099', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F100', N'C007');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F100', N'C004');
 
INSERT INTO Film_Category (FID, CID) VALUES (N'F100', N'C001');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F001', N'D058');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F002', N'D058');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F003', N'D058');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F004', N'D051');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F005', N'D055');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F006', N'D011');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F007', N'D010');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F008', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F009', N'D042');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F010', N'D024');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F011', N'D006');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F012', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F013', N'D002');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F014', N'D015');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F015', N'D019');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F016', N'D042');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F017', N'D011');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F018', N'D011');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F019', N'D035');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F020', N'D014');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F021', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F022', N'D014');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F023', N'D008');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F023', N'D003');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F024', N'D030');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F025', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F026', N'D032');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F027', N'D021');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F028', N'D045');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F029', N'D050');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F030', N'D011');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F031', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F032', N'D035');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F033', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F034', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F035', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F036', N'D011');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F037', N'D045');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F038', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F039', N'D043');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F040', N'D011');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F041', N'D033');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F042', N'D037');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F043', N'D020');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F044', N'D027');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F045', N'D006');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F046', N'D034');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F047', N'D024');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F048', N'D016');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F049', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F050', N'D015');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F051', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F052', N'D030');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F053', N'D047');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F054', N'D030');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F055', N'D029');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F056', N'D011');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F057', N'D031');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F058', N'D054');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F059', N'D030');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F060', N'D051');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F061', N'D011');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F062', N'D050');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F063', N'D059');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F064', N'D041');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F065', N'D012');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F066', N'D044');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F066', N'D036');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F067', N'D022');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F068', N'D056');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F068', N'D021');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F069', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F070', N'D053');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F071', N'D038');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F071', N'D017');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F072', N'D004');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F073', N'D021');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F074', N'D039');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F075', N'D059');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F076', N'D007');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F077', N'D057');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F078', N'D046');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F079', N'D039');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F080', N'D052');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F081', N'D045');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F082', N'D019');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F083', N'D009');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F084', N'D019');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F085', N'D023');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F086', N'D045');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F087', N'D001');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F088', N'D025');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F089', N'D005');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F090', N'D031');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F091', N'D026');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F092', N'D049');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F093', N'D040');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F094', N'D013');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F095', N'D006');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F096', N'D028');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F097', N'D020');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F098', N'D028');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F099', N'D048');
 
INSERT INTO Film_Director (FID, DID) VALUES (N'F100', N'D018');
