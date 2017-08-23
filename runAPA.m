%Para chamar as fun��es do aspirador de p� automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
sala = geraAmbiente();%Gerar o ambiente
mostraAmbiente(sala);%Mostrar o ambiente
%Coordernadas de in�cio do agente aspirador de p�

%pesquise para ver para que servem as fun��es (hold on, hold off e pause)
hold on; %mant�m est�tico o ambiente feito anteriormente para posicionar o limpador
%posizionar o APA nas posi��es estabelecidas anteriormente
hold off;
pause(1);

%se a c�lula estiver suja ent�o retornar� 1, caso contr�rio, 0

%gera uma vari�vel de estrutura para saber a posi��o e o estado de cada
%c�lula = struct('nome', valor) - veja a fun��o struct


%---a��es do agente---
acoesAg= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'};


%while 1
    
    
    %escolhe a a��o de acordo com a percep��o - chama fun��o agenteReativoSimples
    
    %chama a fun��o atualizaAmbiente para atualizar a a��o realizada
    
    %Mostra na tela as a��es escolhidas e percep��es (veja as fun��es 'disp' e 'num2str')
    
    
    %mostra o ambiente atualizado
    %posiciona o aspirador no ambiente atualizado

    
    %atualiza a percep��o e o estado depois de concluir a a��o
    
%end

