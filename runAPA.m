%Para chamar as funcoes do aspirador de po automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
sala = geraAmbiente();%Gerar o ambiente
mostraAmbiente(sala);%Mostrar o ambiente
% Obtem as coordenadas randomicas do intervalo [1,4] do aspirador de po. Obtem um valor para X e para Y
P =  %Coordernadas de inicio do agente aspirador de po
Y = randi([1 4],1,1);
%pesquise para ver para que servem as funcoes (hold on, hold off e pause)
hold on; %mantem estatico o ambiente feito anteriormente para posicionar o limpador
%posizionar o APA nas posicoes estabelecidas anteriormente
hold off;
pause(1);

%se a celula estiver suja entao retornara 1, caso contrario, 0

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

