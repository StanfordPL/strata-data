  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_byte_10_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label     
  callq .move_byte_11_of_ymm1_to_r8b  #  2     0x5   5      OPC=callq_label     
  movss %xmm1, %xmm2                  #  3     0xa   4      OPC=movss_xmm_xmm   
  movaps %xmm2, %xmm1                 #  4     0xe   3      OPC=movaps_xmm_xmm  
  callq .move_r8b_to_byte_11_of_ymm1  #  5     0x11  5      OPC=callq_label     
  callq .move_r9b_to_byte_10_of_ymm1  #  6     0x16  5      OPC=callq_label     
  retq                                #  7     0x1b  1      OPC=retq            
                                                                                
.size target, .-target
