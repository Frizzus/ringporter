load "typehints.ring"

boolean func executeCommand(string token)
        switch token 
        on "exit" return true
        on "help" see "help command."
        on "init" see "initialize report."
        on "build" see "building pdf."
        on "" see ""
        other see "Command not found."
        off

        return false

boolean func checkCommand(string token)
