  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpckhps %xmm2, %xmm1, %xmm0    #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm   
  vmovlhps %xmm0, %xmm0, %xmm6     #  2     0x4   4      OPC=vmovlhps_xmm_xmm_xmm    
  vpunpckhdq %ymm6, %ymm0, %ymm12  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  movaps %xmm12, %xmm1             #  4     0xc   4      OPC=movaps_xmm_xmm          
  retq                             #  5     0x10  1      OPC=retq                    
                                                                                     
.size target, .-target
