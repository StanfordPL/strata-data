  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movd %ebx, %xmm12                 #  1     0     5      OPC=movd_xmm_r32            
  vmovsldup %xmm2, %xmm6            #  2     0x5   4      OPC=vmovsldup_xmm_xmm       
  vminss %xmm12, %xmm6, %xmm1       #  3     0x9   5      OPC=vminss_xmm_xmm_xmm      
  vpbroadcastq %xmm12, %ymm11       #  4     0xe   5      OPC=vpbroadcastq_ymm_xmm    
  vpunpckhdq %ymm11, %ymm1, %ymm14  #  5     0x13  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  punpcklqdq %xmm14, %xmm2          #  6     0x18  5      OPC=punpcklqdq_xmm_xmm      
  movupd %xmm2, %xmm1               #  7     0x1d  4      OPC=movupd_xmm_xmm          
  retq                              #  8     0x21  1      OPC=retq                    
                                                                                      
.size target, .-target
