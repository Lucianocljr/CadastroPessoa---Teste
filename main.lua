local p = require("pessoa")

textNome = display.newText("Insira seu nome",display.actualContentWidth/2,
	display.actualContentHeight/3)
local nomeParametro = native.newTextField( display.actualContentWidth/2, display.actualContentHeight/2.4,
 display.actualContentWidth/2, 30 )
nomeParametro.text = io.read("*all")
nomeParametro.inputType = "default"

textIdade = display.newText("Insira sua idade",display.actualContentWidth/2,
	display.actualContentHeight/1.8)
local idadeParametro = native.newTextField( display.actualContentWidth/2, display.actualContentHeight/1.55,
 display.actualContentWidth/2, 30)
idadeParametro.text = io.read("*number")
idadeParametro.inputType = "number"

botaoCadastrar = display.newRect(display.actualContentWidth/4,display.actualContentHeight/1.2,
	100,35)
botaoCadastrar:setFillColor(0.5)
textBotaoCadastrar = display.newText("Cadastrar",display.actualContentWidth/4,display.actualContentHeight/1.2)

botaoListar = display.newRect(display.actualContentWidth/1.35,display.actualContentHeight/1.2,
	100,35)
botaoListar:setFillColor(0.5)
textBotaoListar = display.newText("Listar",display.actualContentWidth/1.35,display.actualContentHeight/1.2)

function cadastrarPessoa(event)
	
	if event.phase == "began" then
		p:CadastrarPessoa(nomeParametro)
		--print(nomeParametro.text)
	end
end
botaoCadastrar:addEventListener("touch", cadastrarPessoa)
