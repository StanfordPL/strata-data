  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpcklps %ymm2, %ymm2, %ymm4    #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm    
  vmovdqu %ymm2, %ymm12            #  2     0x4   4      OPC=vmovdqu_ymm_ymm          
  vpunpckhdq %ymm12, %ymm4, %ymm6  #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  minsd %xmm4, %xmm4               #  4     0xd   4      OPC=minsd_xmm_xmm            
  vpunpckhqdq %ymm4, %ymm6, %ymm1  #  5     0x11  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
