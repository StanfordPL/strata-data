  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  vmovupd %xmm2, %xmm12              #  1     0     4      OPC=vmovupd_xmm_xmm         
  vbroadcastss %xmm12, %xmm5         #  2     0x4   5      OPC=vbroadcastss_xmm_xmm    
  vunpckhpd %xmm2, %xmm2, %xmm8      #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm   
  vmovups %ymm8, %ymm14              #  4     0xd   5      OPC=vmovups_ymm_ymm         
  vpunpckhdq %ymm14, %ymm14, %ymm10  #  5     0x12  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %xmm5, %xmm10, %xmm13   #  6     0x17  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpckhpd %xmm13, %xmm1             #  7     0x1b  5      OPC=unpckhpd_xmm_xmm        
  retq                               #  8     0x20  1      OPC=retq                    
                                                                                       
.size target, .-target
