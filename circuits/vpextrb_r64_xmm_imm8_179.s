  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                    
.target:                             #        0    0      OPC=<label>               
  vpbroadcastd %xmm1, %xmm1          #  1     0    5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_byte_7_of_ymm1_to_r9b  #  2     0x5  5      OPC=callq_label           
  movzbq %r9b, %rbx                  #  3     0xa  4      OPC=movzbq_r64_r8         
  retq                               #  4     0xe  1      OPC=retq                  
                                                                                    
.size target, .-target
