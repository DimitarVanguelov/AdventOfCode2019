# opcode calc
function intcode_calc(opcode::Int, input1::Int, input2::Int)
    if opcode == 1
        result = input1 + input2
    elseif opcode == 2
        result = input1 * input2
    else
        error("Unknown operation!")
    end
    return result
end

# the Intcode program itself; it does not mutate the original input vector, returns mutated copy
function intcode(v::Vector{Int64})
    new_v = copy(v)
    len = length(v)

    for i in 1:4:len
        if new_v[i] == 99
            break
        else
            op = new_v[i]

            input1_pos = new_v[i+1] + 1
            input2_pos = new_v[i+2] + 1

            input1_val = new_v[input1_pos]
            input2_val = new_v[input2_pos]

            res_pos = new_v[i+3] + 1
            res_val = intcode_calc(op, input1_val, input2_val)

            new_v[res_pos] = res_val
        end # if
    end # loop
    return new_v
end