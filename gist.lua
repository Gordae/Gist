gist = {}

function gist.implement(moduel)
	require(moduel)
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

	if(duration < 0) then
		sys.createError(duration .. ' Is below 0', 'UnderflowError', 'gist.sleep(' .. duration .. ')', 'GIST', 1, true)
		gist.exit(1)
	end
end

function gist.clearScreen()
	os.execute('cls')
end

return gist
