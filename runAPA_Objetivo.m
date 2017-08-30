%Para chamar as funcoes do aspirador de po automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
sala = geraAmbiente();%Gerar o ambiente
mostraAmbiente(sala);%Mostrar o ambiente
% Obtem as coordenadas randomicas do intervalo [1,4] do aspirador de po. Obtem um valor para X e para Y
P = [2,2]; %Coordernadas de inicio do agente aspirador de po

hold on; %mantem estatico o ambiente feito anteriormente para posicionar o limpador
posicaoAspirador(P(1), P(2)); %posizionar o APA nas posicoes estabelecidas anteriormente
hold off;
pause(1);

S = salaSuja(P(1), P(2), sala);%se a celula estiver suja entao retornara 1, caso contrario, 0

if S == 1
  sala(P(1), P(2)) = 0;
  [Sala, PosX, PosY] = atualizaAmbiente(sala, 4, P(1), P(2));
  P = [PosX, PosY];
  mostraAmbiente(sala);
  %posicaoAspirador(P(1), P(2));
end


%gera uma variavel de estrutura para saber a posicao e o estado de cada
%celula = struct('nome', valor) - veja a funcao struct


%---acoes do agente---
acoesAg= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'};


%while 1
    
    
    %escolhe a acao de acordo com a percepccao - chama funcao agenteReativoSimples
    
    %chama a funcao atualizaAmbiente para atualizar a acao realizada
    
    %Mostra na tela as acoes escolhidas e percepccoes (veja as funcoes 'disp' e 'num2str')
    
    
    %mostra o ambiente atualizado
    %posiciona o aspirador no ambiente atualizado

    
    %atualiza a percepccao e o estado depois de concluir a acao
    
%end