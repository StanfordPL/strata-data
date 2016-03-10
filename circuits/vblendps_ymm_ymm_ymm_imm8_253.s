  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  vmovq %xmm3, %xmm9    #  1     0     4      OPC=vmovq_xmm_xmm    
  movss %xmm9, %xmm2    #  2     0x4   5      OPC=movss_xmm_xmm    
  movsd %xmm2, %xmm3    #  3     0x9   4      OPC=movsd_xmm_xmm    
  vmovaps %ymm3, %ymm1  #  4     0xd   4      OPC=vmovaps_ymm_ymm  
  maxss %xmm3, %xmm1    #  5     0x11  4      OPC=maxss_xmm_xmm    
  retq                  #  6     0x15  1      OPC=retq             
                                                                   
.size target, .-target
