%verifica se ha sujeira na sala 
%retorna 1 se tem sujeira, caso contrario retorna 0
function objObtido=checkObj(sala)
  I = find(sala > 1);
  S = size(I);
  if  S(1) > 0
    objObtido = 1;
  else
    objObtido = 0;
  end
end