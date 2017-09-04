%Funcao responsavel por atualizar o ambiente
%Retorna um array com a sala atualizada, X e Y atualizados
%Indicando o que aconteceu com a sala, quando a mesma for limpa
%e para onde o agente foi (sua posicac X e Y atualizada).
function [modSala, modX, modY] = atualizaAmbiente(sala, acao, x, y)

modSala = sala;

if acao == 5
    modSala(x, y) = 0; %estado 0 = limpo
    %retorna as posicoes x e y
    modX = x;
    modY = y;
else
    switch acao
        case 1  %acao 1 -> acima
            if x == 2  %controla se esta na primeira linha
                modX = x;
                modY = y;
            else
                modX = x-1;
                modY = y;
            end
        case 2  %acao 2 -> abaixo
            if x == 5  %controla se esta na ultima linha
                modX = x;
                modY = y;
            else
                modX = x+1;
                modY = y;
            end
        case 3  %acao 3 -> esquerda
            if y == 2  %controla se esta na primeira coluna
                modX = x;
                modY = y;
            else
                modX = x;
                modY = y-1;
            end
        case 4  %acao 4 -> direita
            if y == 5  %controla se esta na ultima coluna
                modX = x;
                modY = y;
            else
                modX = x;
                modY = y+1;
            end
       %acao NoOp e utilizada apenas pelo agente objetivo
       case 6 %acao 6 -> NoOp
         modX = x;
         modY = y;
    end
end
end