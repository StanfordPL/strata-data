  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                
.target:                     #        0    0      OPC=<label>           
  vmovaps %xmm3, %xmm13      #  1     0    4      OPC=vmovaps_xmm_xmm   
  movq %xmm13, %xmm2         #  2     0x4  5      OPC=movq_xmm_xmm      
  vpor %ymm13, %ymm2, %ymm1  #  3     0x9  5      OPC=vpor_ymm_ymm_ymm  
  retq                       #  4     0xe  1      OPC=retq              
                                                                        
.size target, .-target
