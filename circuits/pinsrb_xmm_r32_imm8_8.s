  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode           
.target:                            #        0    0      OPC=<label>      
  callq .move_128_064_xmm1_r12_r13  #  1     0    5      OPC=callq_label  
  xaddb %r13b, %bl                  #  2     0x5  4      OPC=xaddb_r8_r8  
  callq .move_064_128_r12_r13_xmm1  #  3     0x9  5      OPC=callq_label  
  retq                              #  4     0xe  1      OPC=retq         
                                                                          
.size target, .-target
