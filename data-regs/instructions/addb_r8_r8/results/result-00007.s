  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  sets %dh         #  2     0x3  3      OPC=sets_rh       
  addb %cl, %dh    #  3     0x6  2      OPC=addb_rh_r8    
  xaddb %dh, %bl   #  4     0x8  3      OPC=xaddb_r8_rh   
  retq             #  5     0xb  1      OPC=retq          
                                                          
.size target, .-target
