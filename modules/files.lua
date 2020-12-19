files = {}

function files.remove(file)
	os.remove(file)
end

function files.rename(oldFilename, newFilename)
	os.rename(oldFilename, newFilename)
end

function files.openfile(Filename, Mode)
	io.open(Filename, Mode)
end

function files.closefile(Filename)
	io.close(Filename)
end

function files.write(Filename, msgToWrite)
	io.output(Filename)
	io.write(msgToWrite)
	io.output()
end