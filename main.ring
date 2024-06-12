load "./commands.ring"
load "rogueutil.ring"

setConsoleTitle("Ringporter shell")

while true
        display = nl + "ringporter:> "
        see display
        keyPressed = getKey()
        shellInput = ""
        while keyPressed != 10
                fputs(stdout, char(keyPressed))
                shellInput = shellInput + char(keyPressed)
                keyPressed = getKey()
        end
        try
                see shellInput
                exiting = executeCommand(shellInput)
                if exiting exit 1 ok
        catch
                see cCatchError
        done
end


