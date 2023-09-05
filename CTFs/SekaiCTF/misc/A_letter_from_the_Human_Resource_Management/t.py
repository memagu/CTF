def hrm_program(inbox):
    memory = [0] * 25
    outbox = []
    memory[22] = 1
    memory[20] = 1
    memory[19] = 1
    memory[17] = 1
    memory[16] = 1
    memory[15] = 1
    
    while True:
        memory[15] = memory[21]
        memory[15] += 1
        
        while memory[15] != 0:
            memory[16] += memory[18]
            memory[15] -= 1
        
        if len(inbox) == 0:
            break
        memory[15] = inbox.pop(0)
        memory[20] -= 1
        memory[20] += memory[20]
        memory[20] += memory[20]
        memory[20] += memory[20]
        
        while True:
            memory[19] -= memory[19]
            memory[19] += 1
            if memory[22] == 0:
                break
            if memory[22] < 0:
                while True:
                    if not (memory[22] < 0):
                        break
                    memory[19] += memory[19]
                    memory[19] += 1
            
            if (memory[15]-memory[19]) < 0:
                if (memory[16]-memory[19]) < 0:
                    outbox.append(memory[24])
                    continue
                else:
                    outbox.append(memory[23])
                    continue
            
            if (memory[16]-memory[19]) < 0:
                outbox.append(memory[23])
                continue
            
            if (memory[17]-memory[[21]]) == 0:
                outbox.append(memory[23])
                continue
            
            outbox.append(memory[24])
            continue
    
    return outbox


print(hrm_program(input()))