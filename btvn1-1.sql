create table lop(
ma_lop varchar(10) primary key,
ten_lop varchar(100) not null,
phong_hoc varchar(20)
);

create table sinhvien(
ma_sinh_vien varchar(10) primary key,
ten_sinh_vien varchar(100) not null,
ngay_sinh date,
ma_lop varchar(10),

foreign key(ma_lop) references lop(ma_lop)
);