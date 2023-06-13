use sucos; 

alter table tbcliente add primary key (CPF);

alter table tbcliente add column (DATA_NASCIMENTO date);

alter table tbcliente add column (ESTADO varchar(2));

insert into tbcliente (
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, CEP, IDADE, SEXO, LIMITE_CREDITO,
VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO, ESTADO) 
values ('71173189312', 'João', 'rua marques', '', 'torre', 'recife', '50711130', 
19, 'M', 10000.00, 2000, 0, '2003-07-23', 'PE');

select * from tbcliente;