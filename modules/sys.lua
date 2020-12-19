require('os')

sys = {}

function sys.createError(msg, Error, Traceback, program, exitCode, showTraceback)
    if (showTraceback == true) then print(program .. ' - ' .. Error .. ': ' .. msg .. '\n\nTraceback:\n    ' .. Traceback) end
    if (showTraceback == false) then print(program .. ' - ' .. Error .. ': ' .. msg) end
    os.exit(exitCode)
end