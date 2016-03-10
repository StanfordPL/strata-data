  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  callq .move_016_008_cx_r12b_r13b  #  1     0    5      OPC=callq_label      
  callq .move_008_016_r12b_r13b_cx  #  2     0x5  5      OPC=callq_label      
  cmovpeq %rcx, %rbx                #  3     0xa  4      OPC=cmovpeq_r64_r64  
  retq                              #  4     0xe  1      OPC=retq             
                                                                              
.size target, .-target
