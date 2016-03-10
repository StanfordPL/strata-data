  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vmovdqa %xmm3, %xmm6       #  1     0    4      OPC=vmovdqa_xmm_xmm    
  movaps %xmm6, %xmm2        #  2     0x4  3      OPC=movaps_xmm_xmm     
  vorpd %ymm2, %ymm2, %ymm1  #  3     0x7  4      OPC=vorpd_ymm_ymm_ymm  
  retq                       #  4     0xb  1      OPC=retq               
                                                                         
.size target, .-target
