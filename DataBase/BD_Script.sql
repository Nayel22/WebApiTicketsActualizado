﻿create table Roles
(
ro_identificador int primary key identity (1,1),
ro_descripcion nvarchar(125) not null,
ro_fecha_adicion datetime default getdate() not null,
ro_adicionado_por nvarchar(10) not null,
ro_fecha_modificacion datetime,
ro_modificado_por nvarchar(10)
);

create table Usuarios
(
us_identificador int primary key identity (1,1),
us_nombre_completo nvarchar(150) not null,
us_correo nvarchar(150) not null,
us_clave nvarchar(150) not null,
us_ro_identificador int foreign key (us_ro_identificador) references Roles(ro_identificador),
us_estado nvarchar(1) not null,
us_fecha_adicion datetime default getdate() not null,
us_adicionado_por nvarchar(10) not null,
us_fecha_modificacion datetime,
us_modificado_por nvarchar(10)
);

create table Tiquetes
(
ti_identificador int primary key identity (1,1),
ti_asunto nvarchar(150) not null,
ti_categoria nvarchar(150) not null,
ti_us_id_asigna int foreign key (ti_us_id_asigna) references Usuarios(us_identificador),
ti_urgencia nvarchar(150) not null,
ti_importancia nvarchar(150) not null,
ti_estado nvarchar(150) not null,
ti_solucion           nvarchar(255),
ti_fecha_adicion datetime default getdate() not null,
ti_adicionado_por nvarchar(10) not null,
ti_fecha_modificacion datetime,
ti_modificado_por nvarchar(10)
);
 