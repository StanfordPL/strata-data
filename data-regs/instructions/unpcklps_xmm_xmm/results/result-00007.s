  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpbroadcastq %xmm1, %xmm3      #  1     0     5      OPC=vpbroadcastq_xmm_xmm   
  vpbroadcastq %xmm2, %ymm2      #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhps %xmm2, %xmm3, %xmm3  #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovaps %ymm3, %ymm2           #  4     0xe   4      OPC=vmovaps_ymm_ymm        
  movups %xmm2, %xmm1            #  5     0x12  3      OPC=movups_xmm_xmm         
  retq                           #  6     0x15  1      OPC=retq                   
                                                                                  
.size target, .-target
