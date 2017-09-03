% Funcao de agente reativo simples para o mundo 4 x 4 do aspirador de po automatico
% que garante limpar toda a sala, independentemente da posicao inicial. 
% A funcao deve retornar um das 5 possiveis acoes do agente= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
% A variavel "percepcao" dentro dos parenteses e a entrada da funcao.
% variavel percepcao e um struct
function acao = agenteReativoSimples(percepcao)
  x = 0;
  posIniX = 1;
  posIniY = 1;
  
  res = checkObj(percepcao.sala);
  
  if res == 0
    acao = 6;
    break;
  end
  
  while x == 0
    array = funcaoMapear;
    conjunto = array(posIniX:posIniY, 1:3);
    
    if percepcao.estado == 2
        acao = 5;
        break;
    end 
    
    if conjunto(1) == percepcao.X && conjunto(2) == percepcao.Y
      acao = conjunto(3);
      break;
    else
      posIniX += 1; posIniY += 1;
    end
    
    
%    x = 1;
  end
% Para cada posicao definir as acoes disponiveis (funcaoMapear)
% acoes = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
%            1         2          3           4          5
% TODO: Acrescentar funcao NoOp que equivale ao numero 6.

end