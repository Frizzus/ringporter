load "./commands.ring"
load "rogueutil.ring"

C_ENTER_KEY = 10
C_HISTORY_UP_KEY = 65
C_HISTORY_DOWN_KEY = 66
C_AUTOCOMPLETE_KEY = 9
C_DELETE_KEY = 127
C_GO_LEFT_KEY = 67
C_GO_RIGHT_KEY = 68

setConsoleTitle("Ringporter shell")
shell_input = ""
pre_shell = "ringporter:>"
see nl + pre_shell
while true
        key_pressed = getKey()
        switch key_pressed
        on C_ENTER_KEY
                see nl
                exiting = executeCommand(shell_input)
                if exiting exit 1 ok
                shell_input = ""
                see nl + pre_shell
        on C_AUTOCOMPLETE_KEY
                see nl + "autocomplete" + nl + pre_shell
        other 
                fputs(stdout, char(key_pressed))
                shell_input = shell_input + char(key_pressed)
        off
end




