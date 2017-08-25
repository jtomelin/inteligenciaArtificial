% Esta funcao retorna o mapeamento do agente, 
% que indica partindo de uma posicao inicial, para onde ele deve ir.
% Valores da matriz: [ posicao x, posicao y, valor do proximo ]
% Esboço do andamento:
% -> -> -> \/
% /\ \/ <- <- 
% /\ -> -> \/
% /\ <- <- <-
% Legenda:
%-> Direita
%<- Esquerda
%\/ Baixo
%/\ Cima
function funcaoMapear = funcaoMapear()
  funcaoMapear = [ 2 , 2 , 4 ;
           2 , 3 , 4 ;
           2 , 4 , 4 ;
           2 , 5 , 2 ;
           3 , 5 , 3 ;
           3 , 4 , 3 ;
           3 , 3 , 2 ;
           4 , 3 , 4 ;
           4 , 4 , 4 ;
           4 , 5 , 2 ;
           5 , 5 , 3 ;
           5 , 4 , 3 ;
           5 , 3 , 3 ;
           5 , 2 , 1 ;
           4 , 2 , 1 ;
           3 , 2 , 1 ;
        ];
end