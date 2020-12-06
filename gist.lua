require=os

gist = {}

function gist.printTimeRunning()
	print(os.clock())
end

function gist.printDate()
	print(os.date('%d.%m.%y'))
end

function gist.consoleExec(cmdCommand)
	os.execute(cmdCommand)
end

function gist.remove(file)
	os.remove(file)
end

function gist.rename(newFilename, oldFilename)
	os.rename(newFilename, oldFilename)
end

function gist.print(msg)
	print(msg)
end

function gist.input(msgforinput)
	io.write(msgforinput .. " ")
	io.read()
end

function gist.exit(exitCode)
	os.exit(exitCode)
end

function gist.sleep(duration)
	local start = os.clock()
	while os.clock() - start < duration do end
end

return gist
