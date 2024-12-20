# Load immediate values into registers
ori $t0, $zero, 10    # Load 10 into $t0
ori $t1, $zero, 20    # Load 20 into $t1

# Perform arithmetic operations
add $t2, $t0, $t1     # $t2 = $t0 + $t1
sub $t3, $t1, $t0     # $t3 = $t1 - $t0

# Perform logical operations
and $t4, $t0, $t1     # $t4 = $t0 AND $t1
or  $t5, $t0, $t1     # $t5 = $t0 OR $t1
xor $t6, $t0, $t1     # $t6 = $t0 XOR $t1   

# Branch and loop example
loop:
    li $t4, 1
    beq $t0, $zero, end  # If $t0 == 0, branch to end
    sub $t0, $t0, $t4      # Decrement $t0
    j loop               # Jump back to loop

end:
    nop                  # No operation (end of program)

# Store result in memory
sw $t2, 0($s0)          # Store $t2 at memory address in $s0
