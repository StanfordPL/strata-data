  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vmulps %xmm7, %xmm5, %xmm1                    #  2     0x5   4      OPC=vmulps_xmm_xmm_xmm     
  vunpcklps %xmm4, %xmm2, %xmm8                 #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  vunpckhps %ymm8, %ymm1, %ymm1                 #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target
