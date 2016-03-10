  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vunpckhps %xmm2, %xmm1, %xmm8   #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm   
  vunpcklps %xmm2, %xmm1, %xmm5   #  2     0x4   4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %ymm8, %ymm5, %ymm9  #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  movups %xmm9, %xmm1             #  4     0xd   4      OPC=movups_xmm_xmm          
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target
