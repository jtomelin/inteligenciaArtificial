%Partindo da posicao 1,1 o agente caminha para a direita, quando encontra uma barreira, desce um nivel
%caminha para a esquerda e desce novamente, repetindo o processo de caminhada ate finalizar o percurso ou
%ja ter aspirado tudo.
%A funcao deve retornar um das 6 possiveis acoes do agente= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar', 'NoOp'}
function acao=agenteObjetivo(percepcao, objObtido)

  %Verifica se ainda ha sujeira na sala
  %Nesta verificacao, o agente verifica se ja atingiu o seu objetivo final
  %Se ja chegou a seu objetivo final, o mesmo retorna a acao 6 que faz com que o mesmo
  %se mantenha em sua mesma posicao (sem fazer qualquer acao).
  if objObtido == 0
    acao = 6; %acao 6 - NoOp
    break;
  end
  
  %Se esta sujo, a acao do agente deve ser para limpar a posicao atual
  if percepcao.estado == 2
    acao = 5;
    break;
  end
  
  %Se o agente nao atingiu o objetivo e nao e para aspirar
  %Calcula o proximo ponto para ir.
  %O proximo ponto e calculado da seguinte forma:
  %Agente identifica se esta em uma linha par ou impar
  %Se a linha e impar, verifica a proxima casa a direita
  %Se a linha e par, verifica a proxima casa a esquerda
  %Se a proxima casa e 1 entao o agente verifica a casa de baixo (proxima linha)
  %Se a linha de baixo tambem for 1, o agente sabe que chegou ao fim da execucao
  
  L = mod(percepcao.X, 2);
  
  %Verifica se a linha e par
  if L != 0
    casaEsquerda = percepcao.sala(percepcao.X, percepcao.Y - 1);
    
    %Se a casa da esquerda e igual a 1 - significa que e parede
    if casaEsquerda == 1
      
      %Tenta descer um nivel
      casaAbaixo = percepcao.sala(percepcao.X + 1, percepcao.Y);
      
      %Se a casa abaixo tambem e 1, significa que acabou, porque
      %o agente ja percorreu tudo.
      if casaAbaixo == 1
        acao = 6;
        break; 
      else
        acao = 2; %Solicita que o agente desca um nivel
        break; 
      end
    else
      acao = 3; %Solicita que o agente va para a esquerda
      break;
    end
  else
     casaDireita = percepcao.sala(percepcao.X, percepcao.Y + 1);
    
    %Se a casa da direita e igual a 1 - significa que e parede
    if casaDireita == 1
      
      %Tenta descer um nivel
      casaAbaixo = percepcao.sala(percepcao.X + 1, percepcao.Y);
      
      %Se a casa abaixo tambem e 1, significa que acabou, porque
      %o agente ja percorreu tudo.
      if casaAbaixo == 1
        acao = 6;
        break; 
      else
        acao = 2; %Solicita que o agente desca um nivel
        break; 
      end
    else
      acao = 4; %Solicita que o agente va para a direita
      break;
    end
  end
end