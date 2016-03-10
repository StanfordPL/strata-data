  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movddup %xmm2, %xmm10            #  1     0     5      OPC=movddup_xmm_xmm         
  vpunpckhdq %xmm2, %xmm10, %xmm5  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %ymm5, %ymm5, %ymm2    #  3     0x9   4      OPC=vunpcklps_ymm_ymm_ymm   
  vmovhlps %xmm5, %xmm2, %xmm13    #  4     0xd   4      OPC=vmovhlps_xmm_xmm_xmm    
  movdqu %xmm13, %xmm1             #  5     0x11  5      OPC=movdqu_xmm_xmm          
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
