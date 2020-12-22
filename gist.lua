NAME_, VERSION_ = 'Gist', (1.2)


gist = {NAME_, VERSION_}


function gist.implement(Module)
	require(Module)
end

gist.implement('os')
gist.implement('modules.sys')
gist.implement('modules.files')



function gist.printTimeRunning()
	print(os.clock())
end

function gist.printDate()
	print(os.date('%d.%m.%y'))
end

function gist.consoleExec(cmdCommand)
	os.execute(cmdCommand)
end

function gist.print(msg)
	print(msg)
end

function gist.input(msgforinput)
	io.write(msgforinput)
	input = io.read()
end

function gist.exit(exitCode)
	os.exit(exitCode)
end

function gist.sleep(duration)
	local start = os.clock()
	while os.clock() - start < duration do end

	if(duration < 0) then sys.createError(duration .. ' Is below 0', 'UnderflowError', 'gist.sleep(' .. duration .. ')', 'GIST', 1, true) end
end

function gist.clearScreen()
	os.execute('cls')
end

function gist.answerMath(ValueA, Operator, ValueB)
	if(Operator == '+') then mathAnswer = (ValueA + ValueB) end
	if(Operator == '-') then mathAnswer = (ValueA - ValueB) end
	if(Operator == '*') then mathAnswer = (ValueA * ValueB) end
	if(Operator == '/') then mathAnswer = (ValueA / ValueB) end
	if(Operator == '%') then mathAnswer = (ValueA % ValueB) end
	if(Operator == '^') then mathAnswer = (ValueA ^ ValueB) end
end

function gist.about()
	print(NAME_ .. ' ' .. VERSION_ .. '. Created By Gordae And Powered By Lua.')
end

function gist.bashExec(bashCommand)
	bashfile = io.open('temp.ps1', 'w')
	bashfile.write(bashfile, bashCommand)
	bashfile.close(bashfile)

	execBash = io.open('temp.ps1', 'r')
	os.execute('powershell ' .. execBash.read(execBash, '*a'))
	execBash.close(execBash)
	os.remove('temp.ps1')
end



return gist
