require('gist')

local VERSION__ = '1.2'
local NAME__ = "Gist"
gist.consoleExec('title ' .. NAME__ .. ' console')

function startupmsg()
	gist.print(NAME__ .. " " .. VERSION__ .. '. Visit https://gordae.com/gist For More Info, Or type "help"')
end

function __main__()
    while(true) do
		io.write('>>')
		local command = io.read()
        if (command == "help") then
            gist.print('======[HELP]======')
            gist.print('calc - Calculator!')
			gist.print('help - Help Menu')
            gist.print('run - Run a app')
			gist.print('about - About')
            gist.print('exit - Exit')
			gist.print('printTimeRunning - Show The Time Running The Console Has Been Running For.')
			gist.print('printDate - Prints The Current Date Of Today.')
			gist.print('cls - Clear The Console')
        end

		if (command == "calc") then
            io.write('Value A: ')
			local valueA = io.read()
			io.write('Operator: ')
			local operator = io.read()
			io.write('Value B: ')
			local valueB = io.read()
			gist.answerMath(valueA, operator, valueB)
			print(mathAnswer)
		end

		if (command == "exit") then gist.exit(0) end

		if (command == "run") then
			gist.print('Please Type A Script To Run!')
			gist.print('Please Type the full path.')
			io.write('>')
			local script = io.read()
			gist.consoleExec('lua "' .. script .. '"')
		end

		if (command == "about") then gist.print('Gist ' .. VERSION__ .. ', Written In ' .. _VERSION .. '.') end

		if (command == "printTimeRunning") then gist.printTimeRunning() end

		if (command == "printDate") then gist.printDate() end

		if (command == "cls") then gist.clearScreen() end
	end
end

startupmsg()
__main__()
