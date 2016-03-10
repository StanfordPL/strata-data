  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_byte_2_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label      
  callq .move_r9b_to_byte_9_of_ymm1  #  2     0x5   5      OPC=callq_label      
  movddup %xmm1, %xmm5               #  3     0xa   4      OPC=movddup_xmm_xmm  
  movq %xmm5, %xmm1                  #  4     0xe   4      OPC=movq_xmm_xmm     
  retq                               #  5     0x12  1      OPC=retq             
                                                                                
.size target, .-target
