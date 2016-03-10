  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vunpckhpd %ymm2, %ymm2, %ymm1  #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovdqu %xmm2, %xmm5           #  2     0x4   4      OPC=vmovdqu_xmm_xmm        
  vmovlhps %xmm2, %xmm5, %xmm6   #  3     0x8   4      OPC=vmovlhps_xmm_xmm_xmm   
  unpcklpd %xmm6, %xmm1          #  4     0xc   4      OPC=unpcklpd_xmm_xmm       
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
