
create table publisher(
       id serial primary key,
       name text,
       country text
);

create table books(
       id serial primary key,
       title text,
       publisher integer references publisher(id)
       
);

create table subjects(
       id serial primary key,
       name text
);
create table books_subjects(
       book integer references books(id), 
       subject integer references subjects(id)  
       
);








  --FOREIGN KEY(DepartmentId) REFERENCES Departments(DepartmentId)
