%Para chamar as funcoes do aspirador de po automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
sala = geraAmbiente();%Gerar o ambiente
mostraAmbiente(sala);%Mostrar o ambiente
% Obtem as coordenadas randomicas do intervalo [1,4] do aspirador de po. Obtem um valor para X e para Y
P = obterCoordenadaInicial(); %Coordernadas de inicio do agente aspirador de po


%pesquise para ver para que servem as funcoes (hold on, hold off e pause)
hold on; %mantem estatico o ambiente feito anteriormente para posicionar o limpador
posicaoAspirador(P(1), P(2)); %posizionar o APA nas posicoes estabelecidas anteriormente
hold off;
pause(1);

%i = 0;
while 1
    percepcao = struct('X', P(1), 'Y', P(2), 'estado', sala(P(1), P(2)));
    acao = agenteReativoSimples(percepcao);
    disp(acao);
    [Sala, PosX, PosY] = atualizaAmbiente(sala, acao, P(1), P(2));
    mostraAmbiente(Sala);
    hold on;
    posicaoAspirador(PosX, PosY);
    hold off;
    pause(0.1);

    sala = Sala;
    P(1) = PosX;
    P(2) = PosY;
    
    res = checkObj(sala);
    
    if res == 0
      break;
    end
    %i += 1;
end


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

