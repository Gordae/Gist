NAME_ = 'Gist'
VERSION_ = (1.1)

gist = {
	NAME_, VERSION_
}

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
	if(exitCode >= -2147483647) then sys.createError(exitCode .. ' Is A Overflow Number.', 'OverflowError', 'gist.exit(' .. exitCode .. ')', 'GIST', 1, true) end -- This doesnt do anything, just to let you know
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

return gist
