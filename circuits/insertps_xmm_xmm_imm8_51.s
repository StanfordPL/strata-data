  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %xmm2, %xmm14          #  1     0     4      OPC=vmovsldup_xmm_xmm       
  vpunpckhdq %xmm1, %xmm1, %xmm7   #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %ymm14, %ymm7, %ymm4  #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm  
  xorps %xmm1, %xmm1               #  4     0xd   3      OPC=xorps_xmm_xmm           
  movlhps %xmm4, %xmm1             #  5     0x10  3      OPC=movlhps_xmm_xmm         
  retq                             #  6     0x13  1      OPC=retq                    
                                                                                     
.size target, .-target
