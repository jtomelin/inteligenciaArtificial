%Função que cria o ambiente 4x4 (sala) e cria também paredes para a sala 
function sala = geraAmbiente()

dim = 6;
parede = 1; 
sujeira = 2; 

sala = (rand(dim, dim)>0.7)*sujeira;
sala(1, :) = parede; 
sala(end, :) = parede;
sala(:, 1) = parede;
sala(:, end) = parede;

end