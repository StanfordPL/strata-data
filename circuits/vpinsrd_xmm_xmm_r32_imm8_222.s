  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movd %ebx, %xmm8                 #  1     0     5      OPC=movd_xmm_r32            
  vpunpckhdq %xmm2, %xmm8, %xmm14  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpsubd %xmm14, %xmm2, %xmm6      #  3     0x9   5      OPC=vpsubd_xmm_xmm_xmm      
  vmovlhps %xmm8, %xmm6, %xmm8     #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm    
  vpaddd %ymm14, %ymm8, %ymm1      #  5     0x13  5      OPC=vpaddd_ymm_ymm_ymm      
  retq                             #  6     0x18  1      OPC=retq                    
                                                                                     
.size target, .-target
