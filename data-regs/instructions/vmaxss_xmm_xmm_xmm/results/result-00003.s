  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  vmovaps %xmm2, %xmm1                #  1     0     4      OPC=vmovaps_xmm_xmm  
  callq .move_byte_19_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label      
  movss %xmm3, %xmm2                  #  3     0x9   4      OPC=movss_xmm_xmm    
  callq .move_r8b_to_byte_30_of_ymm1  #  4     0xd   5      OPC=callq_label      
  maxps %xmm2, %xmm1                  #  5     0x12  3      OPC=maxps_xmm_xmm    
  retq                                #  6     0x15  1      OPC=retq             
                                                                                 
.size target, .-target
