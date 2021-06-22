local_variable = "hello"
$global_variable = "goodbye"

def a_method
    local_variable = 10
    puts local_variable
    puts $global_variable
end

a_method()

def another_method
    local_variable = 500
    $global_variable = "bonjour"
    puts local_variable
    puts $global_variable
end

another_method()
