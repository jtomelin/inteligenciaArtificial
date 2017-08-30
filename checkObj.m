%verifica se ha sujeira na sala 
%retorna 1 se tem sujeira, caso contrario retorna 0
function objObtido=checkObj(sala)
  I = find(sala > 1)
  S = size(I)
  if  S(0) > 0
    return 1;
  else
    return 0;
end