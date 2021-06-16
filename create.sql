PRAGMA foreign_keys=ON;

create table publisher(
       id serial primary key,
       name text,
       country text
);

create table books(
       id serial primary key,
       title text,
       publisher serial,
       foreign key(publisher) references publisher(id)
);

create table subjects(
       id serial primary key,
       name text
);
create table books_subjects(
       book serial, 
       subject serial,  
       foreign key(book) references books(id),
       foreign key(subject) references subjects(id)
);








  --FOREIGN KEY(DepartmentId) REFERENCES Departments(DepartmentId)
