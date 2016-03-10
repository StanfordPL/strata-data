  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovdqa %xmm2, %xmm5             #  1     0     4      OPC=vmovdqa_xmm_xmm         
  vpunpckldq %xmm2, %xmm2, %xmm11  #  2     0x4   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsldup %ymm5, %ymm8           #  3     0x8   4      OPC=vmovsldup_ymm_ymm       
  vmovshdup %xmm2, %xmm5           #  4     0xc   4      OPC=vmovshdup_xmm_xmm       
  vunpckhps %xmm11, %xmm5, %xmm6   #  5     0x10  5      OPC=vunpckhps_xmm_xmm_xmm   
  vmovsd %xmm8, %xmm6, %xmm1       #  6     0x15  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                             #  7     0x1a  1      OPC=retq                    
                                                                                     
.size target, .-target
