% Funcao que retorna 1 se a sala esta suja e 0 se a sala nao esta suja naquela posicao
function salaSuja = salaSuja(x, y, sala)
  R = 0;
  if sala(x,y) == 2
    R = 1;
  end
  
  salaSuja = R;
end