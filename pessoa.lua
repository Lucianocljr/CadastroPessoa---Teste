
pessoa = {nome = "Padrão"}

listaDePessoas = {}
print(pessoa.nome)
function pessoa:newPessoa()
	newPessoa = {}
	newPessoa = setmetatable(newPessoa,{_index = pessoa})
	return newPessoa
end

contador = 1

function pessoa:ConstruirPessoa(nomeParametro)
	p1 = pessoa:newPessoa()
	p1.nome = nomeParametro
	return p1
end

local p = nil

function pessoa:CadastrarPessoa(nomeParametro)
	print(nomeParametro)

	p = pessoa:ConstruirPessoa(nomeParametro)
	table.insert(listaDePessoas,p)
	contador = contador + 1
end

return pessoa