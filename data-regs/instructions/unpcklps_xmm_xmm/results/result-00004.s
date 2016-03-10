  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vpbroadcastq %xmm1, %ymm12       #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  vbroadcastsd %xmm2, %ymm8        #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhps %xmm8, %xmm12, %xmm14  #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  movaps %xmm14, %xmm1             #  4     0xf   4      OPC=movaps_xmm_xmm         
  retq                             #  5     0x13  1      OPC=retq                   
                                                                                    
.size target, .-target
