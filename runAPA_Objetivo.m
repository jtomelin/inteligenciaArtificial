%Para chamar as funcoes do aspirador de po automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
sala = geraAmbiente();%Gerar o ambiente
mostraAmbiente(sala);%Mostrar o ambiente
% Obtem as coordenadas randomicas do intervalo [1,4] do aspirador de po. Obtem um valor para X e para Y
P = [2,2]; %Coordernadas de inicio do agente aspirador de po

hold on; %mantem estatico o ambiente feito anteriormente para posicionar o limpador
posicaoAspirador(P(1), P(2)); %posicionar o APA nas posicoes estabelecidas anteriormente
hold off;
pause(1);

iPontos = 0;
while 1
    %identifica a percepcao do APA.
    %monta uma estrutura da seguinte forma:
    %X = valor da posicao x
    %Y = valor da posicao Y
    %estado = Obtem o estado da sala naquele instante, para aquela posicao X e Y.
    %sala = informa o array com a sala pro agente. Sera utilizado para indicar a proxima posicao do agente
    percepcao = struct('X', P(1), 'Y', P(2), 'estado', sala(P(1), P(2)), 'sala', sala); 
    
    sPercepcao = sprintf("Percepcao do agente: X = %i, Y = %i, estado= %i", P(1), P(2), sala(P(1), P(2)));
    disp(sPercepcao); 
    cObj = checkObj(sala);
    acao = agenteObjetivo(percepcao, cObj);
    
    sAcao = sprintf("Acao do agente %i", acao);
    
    %Exibe a acao que o agente fara
    disp(sAcao); 
    
    %Executa a acao do agente e atualiza a tela.
    [Sala, PosX, PosY] = atualizaAmbiente(sala, acao, P(1), P(2));
    mostraAmbiente(Sala);
    %Define a posicao do aspirador novamente e entao aguarda um instante.
    hold on;
    %Posiciona o aspirador conforme retorno da funcao de atualizacao do ambiente.
    %Onde o APA executou a acao
    posicaoAspirador(PosX, PosY);
    hold off;
    pause(0.1);

    %reseta as variaveis bases, atualiza a sala, posicao x e posicao y
    sala = Sala;
    P(1) = PosX;
    P(2) = PosY;
    
    iPontos +=1
    
    %Se a acao do agente e 6, entao finaliza a execucao
    if acao == 6
      break;
    end
end

%Exibe a quantidade de pontos obtida pelo APA.
points = sprintf("Quantidade de pontos final: %i", iPontos);
disp(points);