defmodule Child_Spec do
  def criaTarefas(nomeTarefa) do
    nomeTarefa = Task.start(fn -> IO.puts "Tarefa criada" end)

    tarefa_monitorada = Task.child_spec(nomeTarefa)
    tupla = tarefa_monitorada.start
    lista = elem(tupla, 2)
    IO.inspect elem(hd(lista), 1)
  end
end