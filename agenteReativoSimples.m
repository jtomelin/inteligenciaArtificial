% Funcao de agente reativo simples para o mundo 4 x 4 do aspirador de po automatico
% que garante limpar toda a sala, independentemente da posicao inicial. 
% A funcao deve retornar um das 5 possiveis acoes do agente= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
% A variavel "percepcao" dentro dos parenteses e a entrada da funcao.
% variavel percepcao e um struct
function acao = agenteReativoSimples(percepcao)
  x = 0;
  posIniX = 1;
  posIniY = 1;
  while x == 0
    array = funcaoMapear;
    conjunto = array(posIniX:posIniY, 1:3);
    if conjunto(1) == P(1) and conjunto(2) == P(2)
      return conjunto(3);
    else
      posIniX += 1; posIniY += 1;
    
    
    x = 1;
  end
% Para cada posicao definir as acoes disponiveis (funcaoMapear)
% acoes = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
%            1         2          3           4          5
% TODO: Acrescentar funcao NoOp que equivale ao numero 6.

end