create table Lokasyon
(
	LokasyonID int primary key identity(1,1) not null,
	Lokasyonİl nvarchar(50) not null,
	Lokasyonİlçe nvarchar(50) not null,
);

create table Tesisler
(
	TesisID int primary key identity(1,1) not null,
	TesisAdı nvarchar(50) not null,
	TesisSayısı numeric(10) not null,
	TesisYatak nvarchar(50) not null,
	LokasyonID int not null,
);

create table Takımlar
(
	TakımID int primary key identity(1,1) not null,
	TakımAdı nvarchar(50) not null,
	Renk1 nvarchar(50) not null,
	Renk2 nvarchar(50) not null,
	LokasyonID int not null,
	FubolcuSayısı numeric(10) not null,
	Stadyum nvarchar(50) not null,
	SampiyonlukSayısı numeric(10),
	TesisID int not null,
	LigID int not null,
);

create table Futbolcular
(
	FutbolcuID int primary key identity(1,1) not null,
	FutbolcuAdı nvarchar(50) not null,
	FutbolcuSoyad nvarchar(50) not null,
	FutbolcuDogum date not null,
	FutbolcuUyruk nvarchar(50) not null,
	TakımID int not null,
);

create table Ligler
(
	LigID int primary key identity(1,1) not null,
	LigAdı nvarchar(50) not null,
	TakımSayısı numeric(20) not null,
);

create table Maclar
(
	MacID int primary key identity(1,1) not null,
	MacHafta numeric(5) not null,
	EvTakımID int not null,
	DeplasmanTakımID int not null,
	HakemID int not null,
	LigID int not null,
);


create table Hakemler
(
	HakemID int primary key identity(1,1) not null,
	HakemAd nvarchar(50) not null,
	HakemSoyad nvarchar(50) not null,
	HakemDogum Date not null,
	HakemLisans nvarchar(50) not null,
);

/*Lokasyon*/
/*Türkiye*/
insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('İstanbul', 'Kadıköy') /*Fenerbahçe*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('İstanbul', 'Beşiktaş') /*Beşiktaş*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('İstanbul', 'Sarıyer') /*Galatasaray*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('İstanbul', 'Başakşehir') /*Başakşehir*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Trabzon', 'Ortahisar') /*Trabzon*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Kayseri', 'Melikgazi') /*Kayseri*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Konya','Merkez') /*Konyaspor*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Antalya', 'Muratpaşa') /*AntalyaSpor*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Adana', 'Sarıçam') /*AdanaSpor*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Sivas', 'Merkez') /*Sivaspor*/

/* İngiltere*/
insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Londra', 'Holloway') /*Arsenal*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Manchester', 'Bradford') /*Manchester City*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Macnhester', 'Trafford') /*Manchester united*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Londra', 'Tottenham') /*Tottenham*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Liverpool', 'Anfield') /*Liverpool*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Londra', 'Fullham') /*Chelsea ve Fullham*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Liverpool', 'Bootle') /*Everton*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Leicester', 'Merkez') /*Leicester City*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Londra', 'Stratford') /*West Ham United*/

/*Tesis Lokasyonları*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Kayseri', 'Kocasinan') /*Kayseri Tesisleri*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('İstanbul', 'Sancaktepe') /*Fenerbahçe tesis*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('İstanbul', 'Ümraniye') /*bjk tesis*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('İstanbul', 'Bakırköy') /*Galatasaray tesis*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('İstanbul', 'Kartal') /*Tranbzon spor tesis*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Konya', 'Selçuklu') /*Konyaspor tesis*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Antalya', 'Döşemealtı') /*Antalyaspor tesis*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Adana', 'Çukurova') /*Adana tesis*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Londra', 'Colney') /*Arsenal Tesis*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Londra', 'Hotspur') /*Tothenam Tesis*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Londra', 'Motspur Park') /*Fullham Tesis*/

insert into Lokasyon(Lokasyonİl, Lokasyonİlçe)
values ('Londra', 'Halewood') /*Everton tesisi*/

/*Hakemler*/
Insert into hakemler(HakemAd,HakemSoyad,HakemDogum,HakemLisans)
values('Ali','Palabıyık','1981-08-14','17907')
Insert into hakemler (HakemAd,HakemSoyad,HakemDogum,HakemLisans)
values('Cüneyt','Çakır','1976-11-23','11750')
Insert into hakemler (HakemAd,HakemSoyad,HakemDogum,HakemLisans)
values('Fırat','Aydınus','1973-10-25','11741')
Insert into hakemler (HakemAd,HakemSoyad,HakemDogum,HakemLisans)
values('Mete','Kalkavan','1979-08-17','12975')
Insert into hakemler (HakemAd,HakemSoyad,HakemDogum,HakemLisans)
values('Halil Umut','Meler','1986-08-01','22749')
Insert into hakemler (HakemAd,HakemSoyad,HakemDogum,HakemLisans)
values('Antony','Taylor','1978-10-20','70971')
Insert into hakemler (HakemAd,HakemSoyad,HakemDogum,HakemLisans)
values('Michael','Over','1985-02-20','50711')
Insert into hakemler (HakemAd,HakemSoyad,HakemDogum,HakemLisans)
values('Jarred','Gilett','1986-11-01','263456')
Insert into hakemler (HakemAd,HakemSoyad,HakemDogum,HakemLisans)
values('Andrew','Madley','1983-09-05','14711')
Insert into hakemler (HakemAd,HakemSoyad,HakemDogum,HakemLisans)
values('Craig','Pawson','1979-04-02','94722')

/*Tesisler*/


/*Türk Tesisler*/
insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Fenerbahçe Can Bartu Tesisleri', 6, 'Var', 21) /*Fenerbahçe Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Beşiktaş JK Nevzat Demir Tesisleri', 6, 'Var', 22) /*Beşiktaş Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Florya Metin Oktay Tesisleri', 2, 'Yok', 23) /*Galatasaray Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Mehmet Ali Yılmaz Tesisleri', 4, 'Var', 24) /*Trabzonspor Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Kayserispor Tesisleri', 4, 'Var', 6) /*Kayserispor Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Konyaspor Kayacık Tesisleri', 4, 'Var', 25) /*Konyaspor Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Antalyaspor Atilla Vehbi Konuk Tesisleri', 5, 'Var', 26) /*Antalyaspor Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Osman Yereşen Adanaspor Tesisleri', 4, 'Var', 27) /*Adanaspor Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Lütfullah Bilgin Tesisleri', 4, 'Var', 10) /*Sivas Tesis ismi*/

/*İngiltere Tesisler*/
insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Arsenal Training Centre', 12, 'Var', 28) /*Arsenal Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Manchester City FC Training Ground', 12, 'Var', 22) /*Manchester City Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Trafford Training Centre', 5, 'Yok', 13) /*Manchester United Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Tottenham Hotspur Football Club Training Ground', 7, 'Var', 29) /*Tottenham Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('AXA Training Centre', 12, 'Var', 15) /*Liverpool tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Cobham Training Centre', 9, 'Var', 16) /*Chelsea Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Motspur Park', 4, 'Yok', 30) /*Fullham Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('Finch Farm', 15, 'Var', 31) /*Everton Tesis ismi*/

insert into Tesisler(TesisAdı, TesisSayısı, TesisYatak, LokasyonID)
values ('LCFC Training Ground', 8, 'Var', 18) /*Leicester City Tesis ismi*/

/*TAKIMLAR*/


/*alter table Takımlar
alter column Stadyum nvarchar(100) not null*/

/*Türkiye Takım*/
Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Fenerbahçe','Sarı','Lacivert',1,11,'Ülker Şükrü Saraçoğlu Stadyumu',28,1,1)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Beşiktaş','Siyah','Beyaz',2,11,'BJK İnönü Stadyumu',15,2,1)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Galatasaray','Sarı','Kırmızı',3,11,'NEF Stadyumu',22,3,1)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Başakşehir','Turuncu','Lacivert',4,11,'İstanbul Başakşehir Fatih Terim Stadyumu',1,3,1)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Trabzon','Bordo','Mavi',5,11,'Şenol Güneş Spor Kompleksi Medical Park Stadyumu',7,4,1)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('KayseriSpor','Kırmızı','Sarı',6,11,'Kayseri Kadir Has Şehir Stadyumu',4,5,1)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('KonyaSpor','Yeşil','Beyaz',7,11,'Konya Atatürk Stadyumu',2,6,1)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('AntalyaSpor','Kırmızı','Beyaz',8,11,'Antalya Stadyumu',2,7,1)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('AdanaSpor','Turuncu','Beyaz',9,11,'Yeni Adana Stadyumu',3,8,1)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('SivasSpor','Kırmızı','Beyaz',10,11,'Yeni Dört Eylül Stadyumu',2,9,1)

/*İngiltere Takım*/
Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Arsenal','Kırmızı','Beyaz',11,11,'Emirates Stadyumunun',13,10,2)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Manchester City','Mavi','Beyaz',12,11,'Manchester Şehir Stadyumu',8,11,2)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Manchester united ','Kırmzı','Siyah',13,11,'Old Trafford Stadyumu',20,12,2)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Tottenham','Lacivert','Beyaz',14,11,'White Hart Lane Stadyumu',2,13,2)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Liverpool','Kırmızı','Beyaz',15,11,'Anfield Road, Liverpool Stadyumu',19,14,2)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Chelsea','Mavi','Beyaz',16,11,'Stamford Bridge Stadyumu',6,15,2)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Fulham','Siyah','Beyaz',16,11,'Craven Cottage Stadyumu ',0,16,2)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Everton','Mavi','Beyaz',17,11,'Goodison Park Satdyumu',9,17,2)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('Leicester City','Mavi','Beyaz',18,11,'King Power Stadyumu',1,18,2)

Insert into Takımlar(TakımAdı,Renk1,Renk2,LokasyonID,FubolcuSayısı,Stadyum,SampiyonlukSayısı,TesisID,LigID)
Values('West Ham United','Şarap Rengi','Mavi',19,11,'Londra Stadyumu',0,17,2)


/*Fubolcular*/

/* Fenerbahçe */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Altay','Bayındır','1998-04-14', 'Türkiye', 1)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Serdar','Aziz','1990-09-23', 'Türkiye', 1)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Samet','Akaydın','1994-03-13', 'Türkiye', 1)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Atilla','Szalai','1998-01-20', 'Macaristan', 1)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Jayden','Oosterwolde','2001-04-26', 'Hollanda', 1)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ferdi','Kadıoğlu','1999-09-07', 'Türkiye', 1)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Miguel','Crespo','1996-09-11', 'Fransa', 1)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Miha','Zajc','1994-07-01', 'Slovenya', 1)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Arda','Güler','2005-02-25', 'Türkiye', 1)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Enner','Valencia','1989-11-04', 'Ekvador', 1)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Michy','Batshuayi','1993-10-02', 'Belçika', 1)

/* Beşiktaş */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Mert','Günok','1989-03-01', 'Türkiye', 2)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Romain','Saiss','1990-03-26', 'Fas', 2)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Omar','Colley','1992-10-24', 'Gambiya', 2)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Tayyip','Talha','1993-11-07', 'Kongo', 2)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Arthur','Massuaku','2001-04-26', 'Hollanda', 2)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Valentin','Rosier','1996-08-19', 'Fransa', 2)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Amir','Hadžiahmetović','1997-03-08', 'Bosna Hersek', 2)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Gedson','Fernandes','1999-01-09', 'Portekiz', 2)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Salih','Uçan','1994-01-06', 'Türkiye', 2)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Vincent','Aboubakar','1992-01-22', 'Kamerun', 2)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Cenk','Tosun','1991-06-07', 'Türkiye', 2)


/* Galatasaray */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Fernando','Muslera','1986-06-16', 'Uruguay', 3)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Kaan','Ayhan','1994-11-10', 'Türkiye', 3)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Abdülkerim','Bardakcı','1994-09-07', 'Türkiye', 3)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Sacha','Boey','2000-09-13', 'Fransa', 3)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Leo','Dubois','1994-09-14', 'Fransa', 3)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Lucas','Torreira','1996-02-11', 'Uruguay', 3)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Sérgio','Oliveira','1992-06-02', 'Portekiz', 3)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Fredrik','Midtsjø','1993-08-11', 'Norveç', 3)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Kerem','Aktürkoğlu','1998-10-21', 'Türkiye', 3)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Dries','Mertens','1987-05-06', 'Belçika', 3)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Mauro','İcardi','1993-02-19', 'Arjantin', 3)

/* Başakşehir */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Volkan','Babacan','1988-08-11', 'Uruguay', 4)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Léo','Duarte','1996-07-17', 'Brezilya', 4)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Edgar','Ié','1994-05-01', 'Portekiz', 4)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Lucas','Lima','1991-10-10', 'Brezilya', 4)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Şener','Özbayraklı','1990-01-23', 'Türkiye', 4)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Adnan','Januzaj','1995-02-05', 'Belçika', 4)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Lucas','Biglia','1986-01-30', 'Arjantin', 4)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Eden','Karzev','2000-04-11', 'İsrail', 4)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Deniz','Türüç','1993-01-29', 'Türkiye', 4)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Stefano','Okaka','1989-08-09', 'İtalya', 4)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Philippe','Kény','1999-05-18', 'Senegal', 4)

/* Trabzon */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Uğurcan','Çakır','1996-04-05', 'Türkiye', 5)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Eren','Elmalı','2000-07-07', 'Türkiye', 5)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Marc','Bartra','1991-01-15', 'İspanya', 5)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Vitor','Hugo','1991-10-20', 'Brezilya', 5)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Jens Stryger','Larsen','1991-02-21', 'Danimarka', 5)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Manolis','Siopis','1994-05-14', 'Yunanistan', 5)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Marek','Hamsik','1987-07-27', 'Slovakya', 5)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Anastasios','Bakasetas','1993-06-28', 'Yunanistan', 5)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Edin','Visca','1990-02-17', 'Bosna Hersek', 5)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Mahmoud','Trézéguet','1994-10-01', 'Mısır', 5)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Maximiliano','Gómez','1996-08-14', 'Uruguay', 5)

/* Kayseri */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Cenk','Gönen','1988-02-21', 'Türkiye', 6)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Mecit','Hüseyni','1996-06-20', 'İran', 6)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Arif','Kocaman','2003-09-14', 'Türkiye', 6)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Dimitrios','Kolovetsios','1991-10-16', 'Yunanistan', 6)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ramazan','Civelek','1996-01-22', 'Türkiye', 6)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Carlos','Mané','1994-03-11', 'Portekiz', 6)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Miguel','Cardoso','1994-06-19', 'Portekiz', 6)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ali','Kerimi','1994-02-11', 'İranlı', 6)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Gustavo','Campanharo','1992-04-04', 'Brezilya', 6)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Mame','Thiam','1992-10-09', 'Senegal', 6)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Mario','Gavranović','1989-11-24', 'İsviçre', 6)

/* Konya */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ibrahim','Šehić','1988-09-02', 'Bosna Hersek', 7)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Francisco','Calvo','1992-07-08', 'Kosta Rika', 7)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ahmet','Oğuz','1993-01-16', 'Türkiye', 7)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Adil','Demirbağ','1997-12-10', 'Türkiye', 7)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Guilherme','Sityá','1990-04-01', 'Brezilya', 7)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Bruno','Paz','1998-04-23', 'Portekiz', 7)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Soner','Dikmen','1993-09-01', 'Türkiye', 7)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Robert','Murić','1996-03-12', 'Hırvatistan', 7)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Domagoj','Pavičić','1994-03-09', 'Hırvatsitan', 7)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Zymer','Bytyqi','1996-09-11', 'Kosova', 7)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Toni','Martínez','1997-06-30', 'İspanya', 7)

/* Antalya */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Sinan','Bolat','1988-09-03', 'Türkiye', 8)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Bünyamin','Balcı','2000-05-31', 'Türkiye', 8)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Christian','Luyindama','1994-01-08', 'Kongo', 8)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Güray','Vural','1988-06-11', 'Türkiye', 8)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ömer','Toprak','1989-07-21', 'Türkiye', 8)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Fernando','Martins','1992-03-03', 'Brezilya', 8)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Alfredo','Fredy','1990-03-27', 'Angola', 8)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Doğukan','Sinik','1999-01-21', 'Türkiye', 8)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Shoya','Nakajima','1994-08-23', 'Japonya', 8)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Haji','Wright','1998-03-27', 'ABD', 8)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Sam','Larsson','1993-04-10', 'İsveç', 8)

/* Adana */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Arijanet','Muric','1998-11-07', 'Kosova', 9)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Jonas','Svensson','1993-03-06', 'Norveç', 9)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Yıldırım Mert','Çetin','1997-01-01', 'Türkiye', 9)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Semih','Güler','1994-11-30', 'Türkiye', 9)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Papa','Ndiaye','1990-10-27', 'Senegal', 9)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Gökhan','İnler','1984-06-27', 'İsviçre', 9)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Younès','Belhanda','1990-02-25', 'Fransa', 9)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Emre','Akbaba','1992-10-04', 'Türkiye', 9)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('David','Akintola','1996-01-13', 'Nijerya', 9)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Henry','Onyekuru','1997-06-05', 'Nijerya', 9)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Fredrik','Gulbrandsen','1992-09-10', 'Norveç', 9)

/* Sivas */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ali Şaşal','Vural','1990-07-10', 'Türkiye', 10)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Uğur','Çiftçi','1992-05-04', 'Türkiye', 10)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Dimitris','Gutas','1994-04-04', 'Yunanistan', 10)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Alaaddin','Okumuş','1995-08-23', 'Türkiye', 10)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Aaron','Appindangoyé','1992-02-20', 'Gabon', 10)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Max','Gradel','1987-11-30', 'Fildişi Sahili', 10)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Samuel Sáiz','Alonso','1991-01-22', 'İspanya', 10)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Kader','Keïta','2000-11-06', 'Fildişi Sahili', 10)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Fredrik Stensøe','Ulvestad','1992-06-17', 'Norveç', 10)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Jordy','Caicedo','1997-11-18', 'Ekvador', 10)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ahmed','Musa','1992-10-14', 'Nijerya', 10)

/*İngiltere Futbolcular*/

/* Arsenal */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Oleksandr','Zinçenko','1996-10-14', 'Ukrayna', 11)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Bukayo','Saka','2001-08-05', 'İngiltere', 11)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Kevin','De Bruyne','1991-06-28', 'Belçika', 11)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Martin','Ødegaard','1998-10-17', 'Norveç', 11)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Gabriel','Jesus','1997-04-03', 'Brezilya', 11)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Jorginho','Filho','1991-11-07', 'İngiltere', 11)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Gabriel','Martinelli','2001-07-25', 'Brezilya', 11)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Leandro','Trossard','1994-03-21', 'Brezilya', 11)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('William','Saliba','2001-03-24', 'Fransa', 11)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Aaron','Ramsdale','1998-05-14', 'İngilter', 11)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Zeki','Boy','1994-09-25', 'Brezilya', 11)

/* Man city */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Phil','Foden','2000-05-28', 'İngiltere', 12)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('İlkay','Gündoğan','1990-10-24', 'Almanya', 12)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Kevin','De Bruyne','1991-06-28', 'Belçika', 12)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Bernardo','Silva','1994-08-12', 'Portekizli', 12)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Riyad','Mahrez','1991-11-25', 'Cezayir', 12)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Kyle','Walker','1990-05-12', 'İngiltere', 12)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('John','Stones','1994-04-11', 'İngiltere', 12)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ederson','Moraes','1993-06-21', 'Brezilya', 12)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Erling','Haaland','2000-04-11', 'Norveç', 12)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Julián','Álvarez','2000-01-31', 'Arjantin', 12)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Barkın','Küçükel','1994-03-20', 'Türkiye', 12)

/* Man United */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Marcus','Rashford','1997-09-05', 'İngiltere', 13)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Antony','Santos','1990-02-24', 'Brezilya', 13)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Casemiro','Henrique','1992-02-23', 'Brezilya', 13)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Alejandro','Garnacho','2004-06-01', 'İspanya', 13)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Wout','Weghorst','1992-05-07', 'Hollanda', 13)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Bruno','Fernandes','1994-07-02', 'Portekiz', 13)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Harry','Maguire','1993-03-05', 'İngiltere', 13)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Lisandro','Martínez','1998-01-18', 'Arjantin', 13)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('David','De Gea','1990-10-07', 'İspanya', 13)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Christian','Eriksen','1992-02-14', 'Arjantin', 13)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Atakan','Bedrisson','1999-07-19', 'İsveç', 13)

/* Tottheham */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Son','Heung-min','1992-07-08', 'Güney Kore', 14)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Harry','Kane','1993-06-28', 'İngiltere', 14)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Richarlison','Andrade','1997-05-10', 'Brezilya', 14)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Pedro','Porro','1999-09-13', 'İspanya', 14)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Hugo','Lloris','1986-12-26', 'Fransa', 14)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Dejan','Kulusevski','2000-04-25', 'İsveç', 14)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Cristian','Romero','1998-04-27', 'Arjantin', 14)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ivan','Perišić','1989-02-02', 'Hırvatistan', 14)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Fraser','Forster','1988-03-17', 'İngiltere', 14)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Oliver','Skipp','2000-08-16', 'Arjantin', 14)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Mehmet Akif','Yılmaz','1998-03-28', 'Senegal', 14)

/* Liverpool */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Muhammed','Salah','1992-05-15', 'İngiltere', 15)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Luis','Díaz','1997-01-13', 'Kolombiya', 15)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Darwin','Núñez','1999-07-24', 'Uruguay', 15)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Cody','Gakpo','1999-05-05', 'Hollanda', 15)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Virgil','Van Dijk','1991-07-08', 'Hollanda', 15)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Roberto','Firmino','1991-09-02', 'Brezilya', 15)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Trent','Alexander-Arnold','1998-10-11', 'İngiltere', 15)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Alisson','Becker','1992-09-02', 'Brezilya', 15)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Harvey','Elliott','2003-04-04', 'İngiltere', 15)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Jordan','Henderson','2000-01-31', 'Arjantin', 15)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Alper','Tunga','1998-08-16', 'Türkiye', 15)

/* Chelsea */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Mason','Mount','1999-01-10', 'İngiltere', 16)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Christian','Pulisic','1998-10-18', 'Amerika', 16)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Thiago','Silva','1999-07-24', 'Brezilya', 16)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Hakim','Ziyech','1993-03-14', 'Hollanda', 16)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Raheem','Sterling','1994-12-06', 'İngiltere', 16)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('NGolo','Kanté','1991-03-21', 'France', 16)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Kai','Havertz','1999-06-11', 'İngiltere', 16)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('João','Félix','1999-10-10', 'Portekiz', 16)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Mihaylo','Mudrık','2001-01-05', 'Ukrayna', 16)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Enzo','Fernández','2000-01-17', 'Arjantin', 16)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Serkan','Cerk','1996-06-09', 'Türkiye', 16) 

/* Fullham */

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Aleksandar','Mitrović','1994-09-16', 'Sırbistan', 17)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Manor','Solomon','1999-07-24', 'Amerika', 17)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Willian','Silva','1988-08-09', 'Brezilya', 17)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Andreas','Pereira','1996-01-01', 'Belçika', 17)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Daniel','James','1997-05-20', 'İngiltere', 17)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Layvin','Kurzawa','1992-10-03', 'France', 17)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Antonee','Robinson','1998-08-08', 'İngiltere', 17)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Bernd','Leno','1992-03-04', 'Almanya', 17)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Tim','Ream','1989-05-12', 'Amerika', 17)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Bobby','Reid','1993-02-02', 'İngiltere', 17)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Sasa','Lukić','1996-08-13', 'Sırbistan', 17) 

/*Evertoon*/
insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Amadou','Onana','2001-08-16','Belçika', 18)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Jordan','Pickford','1994-04-07', 'İngiltere', 18)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Dominic','Calvert-Lewin','1997-04-16', 'İngiltere', 18)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Alex','Iwobi','1996-05-03', 'Nijerya', 18)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ellis','Simms','2001-01-05', 'İngiltere', 18)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Demarai','Gray','1996-06-28', 'İngiltere', 18)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Idsrissa','Gueye','1989-09-26', 'Senegal', 18)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('James','Tarkowski','1992-11-19', 'İngiltere', 18)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Jamer','Garner','2001-04-13', 'İngiltere', 18)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Seamus','Coleman','1988-10-11', 'İrlanda', 18)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Muhammed','Mazgal','1998-10-15','Türkiye', 18)

/*Leicester City*/

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Hacer','Dursun','1996-02-26', 'Türkiye', 19)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Sevda','Demirel','1997-07-01', 'Türkiye', 19)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Betül','Astam','1994-06-23', 'Türkiye', 19)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Esra','Boz','2001-05-12', 'Türkiye', 19)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Serman','Kaleoğlu','2001-06-09', 'Türkiye', 19)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Ertuğrul','Keçe','1997-04-25', 'Türkiye', 19)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Jamie','Vardy','1987-01-11', 'İngiltere', 19)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Wout','Faes','1998-04-03', 'Belçika', 19)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('James','Maddison','1996-11-23', 'İngiltere', 19)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Çağlar','Söyüncü','1996-05-23', 'Türkiye', 19)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Harry','Souttar','1998-10-22', 'Avusturalya', 19)


/*West Ham United*/
insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Lucas','Paqueta','1997-08-27', 'Brezilya', 20)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Declan','Rice','1999-01-14', 'İngiltere', 20)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Gianluca','Scamacca','1999-01-01', 'İtalya', 20)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Nayif','Akred','1996-03-30', 'Fas', 20)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Said','Benrahma','1995-08-10', 'Cezayir', 20)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Michail','Antonio','1990-03-28', 'Jamaika', 20)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Danny','Ings','1992-07-23', 'İngiltere', 20)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Jarrod','Bowen','1996-12-20', 'İngiltere', 20)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Alphonse','Areola','1993-02-27', 'Fransa', 20)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Emerson','Palmieri','1994-08-03', 'İtalya', 20)

insert into Futbolcular(FutbolcuAdı, FutbolcuSoyad, FutbolcuDogum, FutbolcuUyruk, TakımID)
values ('Kurt','Zouma','1994-10-27', 'Fransa', 20)

/*Maclar*/
/*1.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (1,1,7,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (1,5,10,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (1,4,6,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (1,8,2,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (1,9,3,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(1,19,16,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(1,20,12,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(1,14,18,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(1,15,11,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(1,17,13,10,2)

/*2.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (2,7,3,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (2,10,4,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (2,6,8,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (2,2,9,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (2,1,5,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(2,16,13,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(2,12,14,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(2,18,15,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(2,11,17,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(2,19,20,10,2)

/*3.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (3,5,7,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (3,3,2,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (3,9,6,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (3,8,10,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (3,4,1,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(3,20,16,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(3,13,11,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(3,17,18,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(3,15,12,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(3,14,19,10,2)

/*4.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (4,10,9,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (4,1,8,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (4,5,4,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (4,7,2,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (4,6,3,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(4,12,17,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(4,19,15,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(4,20,14,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(4,16,11,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(4,18,13,10,2)

/*5.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (5,8,5,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (5,4,7,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (5,2,6,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (5,3,10,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (5,9,1,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(5,15,20,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(5,14,16,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(5,11,18,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(5,13,12,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(5,17,19,10,2)

/*6.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (6,4,8,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (6,5,9,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (6,1,3,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (6,10,2,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (6,7,6,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(6,14,15,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(6,20,17,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(6,19,13,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(6,12,11,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(6,16,18,10,2)

/*7.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (7,6,10,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (7,9,4,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (7,8,7,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (7,3,5,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (7,2,1,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(7,18,12,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(7,17,14,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(7,15,16,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(7,13,20,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(7,11,19,10,2)

/*8.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (8,7,10,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (8,5,9,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (8,1,3,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (8,10,2,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (8,7,6,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(8,13,15,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(8,11,14,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(8,12,19,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(8,17,16,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(8,18,20,10,2)

/*9.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (9,3,8,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (9,2,4,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (9,10,1,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (9,9,7,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (9,6,5,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(9,13,15,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(9,11,14,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(9,12,19,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(9,17,16,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(9,18,20,10,2)

/*10.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (10,3,9,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (10,2,9,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (10,7,1,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (10,6,4,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (10,10,5,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(10,13,17,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(10,11,15,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(10,16,19,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(10,18,14,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(10,12,20,10,2)

/*11.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (11,5,1,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (11,4,10,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (11,8,6,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (11,9,2,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (11,3,7,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(11,20,19,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(11,14,12,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(11,15,18,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(11,17,11,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(11,13,16,10,2)


/*12.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (12,6,9,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (12,10,8,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (12,7,5,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (12,2,3,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (12,1,4,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(12,18,17,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(12,12,15,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(12,16,20,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(12,11,13,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(12,19,14,10,2)

/*13.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (13,4,5,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (13,3,6,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (13,8,1,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (13,9,10,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (13,2,7,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(13,14,20,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(13,13,18,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(13,15,19,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(13,17,12,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(13,11,16,10,2)

/*14.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (14,1,9,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (14,7,4,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (14,5,8,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (14,10,3,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (14,6,2,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(14,19,17,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(14,16,14,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(14,20,15,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(14,12,13,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(14,18,11,10,2)

/*15.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (15,2,10,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (15,3,1,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (15,8,4,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (15,6,7,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (15,9,5,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(15,11,12,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(15,13,19,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(15,15,14,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(15,18,16,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(15,17,20,10,2)

/*16.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (16,1,2,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (16,5,3,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (16,7,8,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (16,10,6,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (16,4,9,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(16,19,11,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(16,20,13,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(16,16,15,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(16,12,18,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(16,14,17,10,2)

/*17.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (17,3,4,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (17,2,5,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (17,9,8,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (17,6,1,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (17,10,7,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(17,13,14,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(17,11,20,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(17,17,15,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(17,18,19,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(17,12,16,10,2)

/*18.hafta*/
insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (18,7,9,1,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (18,8,3,2,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (18,4,2,3,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (18,5,6,4,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values (18,1,10,5,1)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(18,16,17,6,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(18,15,13,7,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(18,14,11,8,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(18,20,18,9,2)

insert into Maclar(MacHafta, EvTakımID,DeplasmanTakımID,HakemID,LigID)
values(18,19,12,10,2)

/*Ligler*/

insert into Ligler(LigAdı,TakımSayısı)
values ('Türkiye',10)

insert into Ligler(LigAdı,TakımSayısı)
values ('İngiltere',10)

/**/
select * from Futbolcular
select * from Takımlar
select * from Hakemler
select * from Lokasyon
select * from Tesisler
select * from Maclar
select * from Ligler






