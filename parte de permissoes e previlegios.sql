/*parte de previlegios*/

/*visualizando todos os usuarios e permissoes*/
select * from mysql.user;

/*criando usario no mysql*/
create user rodrigo2 identified by '12345';

/*mostrando os previlegios da pessoa*/
show grants for rodrigo2;

/*adicionando permissoes especificas em uma database*/
grant select, insert, update, delete on carros.* to rodrigo2;

/*adicionando todas as permissoes em uma database*/
grant all on carros.* to rodrigo;

/*adicionando todas as permissoes para todas as databases*/
grant all on *.* to rodrigo;

/*removendo permissao update para o usuario Rodrigo2*/
revoke update on  carros.* from rodrigo2;