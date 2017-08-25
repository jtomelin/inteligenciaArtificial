% Funcao de agente reativo simples para o mundo 4 x 4 do aspirador de po automatico
% que garante limpar toda a sala, independentemente da posicao inicial. 
% A funcao deve retornar um das 5 possiveis acoes do agente= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
% A variavel "percepcao" dentro dos parenteses e a entrada da funcao.
% variavel percepcao e um struct
function acao = agenteReativoSimples(percepcao)
  

% Para cada posicao definir as acoes disponiveis (funcaoMapear)
% acoes = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
%            1         2          3           4          5
% TODO: Acrescentar funcao NoOp que equivale ao numero 6.

end

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
  return [ 2 , 2 , 4 ;
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

% Obtém um valor entre o intervalo [1,4]
function obterValorEntreIntervalo()
  return randi([1 4],1,1);
end