defmodule Concurrencia do
  def main do
    matriz = [
    [1,2,3],
    [4,5,6],
    [7,8,9]]

    t1 = Task.async(fn -> s1(matriz) end)
    t2 = Task.async(fn -> s2(matriz) end)

    [a,b] = Task.await_many([t1,t2])
    c = s3(a,b)
    s4(c)
  end

  def s1(matriz),do: s1(matriz,0,0)
  def s1(matriz,i,acc)do
    if length(matriz) == i do
      acc
    else
      fila = Enum.at(matriz,i)
      s1(matriz, i+1, acc + suma_fila(fila,i,0,0))
    end
  end

  def suma_fila(fila,i,j,acc) do
    if j>=i do
      acc
    else
      suma_fila(fila,i,j+1, acc+Enum.at(fila,j))
    end
  end

  def s2(matriz), do: s2(matriz,0,0,0)
  def s2(matriz,i,acc,n)do
    if length(matriz) == i do
      acc/n
    else
      fila = Enum.at(matriz,i)
      {suma, nuevo_n} = suma_fila_arriba(fila,i,length(fila)-1,0, n)
      s2(matriz,i+1, acc+suma ,nuevo_n)
    end
  end

  def suma_fila_arriba(fila,i,j,acc,n)do
    if j <= i do
      {acc,n}
    else
      suma_fila_arriba(fila,i, j-1, acc+Enum.at(fila,j),n+1)
    end
  end

  def s3(a,b)do
    a*b
  end

  def s4(c)do
    IO.puts(c)
  end
end
Concurrencia.main()
