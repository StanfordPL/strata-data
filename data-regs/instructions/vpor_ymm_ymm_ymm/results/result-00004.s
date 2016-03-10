  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP   Bytes  Opcode                 
.target:                     #        0     0      OPC=<label>            
  vmovdqa %ymm2, %ymm1       #  1     0     4      OPC=vmovdqa_ymm_ymm    
  orps %xmm1, %xmm3          #  2     0x4   3      OPC=orps_xmm_xmm       
  vorpd %ymm3, %ymm1, %ymm9  #  3     0x7   4      OPC=vorpd_ymm_ymm_ymm  
  vmovaps %ymm9, %ymm1       #  4     0xb   5      OPC=vmovaps_ymm_ymm    
  retq                       #  5     0x10  1      OPC=retq               
                                                                          
.size target, .-target
