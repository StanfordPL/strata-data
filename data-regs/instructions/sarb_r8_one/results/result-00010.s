  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %rdi  #  1     0    4      OPC=movsbq_r64_r8  
  sarw $0x1, %di    #  2     0x4  3      OPC=sarw_r16_one   
  movw %di, %bx     #  3     0x7  3      OPC=movw_r16_r16   
  retq              #  4     0xa  1      OPC=retq           
                                                            
.size target, .-target
