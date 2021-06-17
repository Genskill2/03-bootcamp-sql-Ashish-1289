
create table publisher(
       id serial primary key,
       name text,
       country text
);

create table books(
       id serial primary key,
       title text,
       publisher  references publisher(id)
       
);

create table subjects(
       id serial primary key,
       name text
);
create table books_subjects(
       book  references books(id), 
       subject  references subjects(id)  
       
);








  --FOREIGN KEY(DepartmentId) REFERENCES Departments(DepartmentId)
