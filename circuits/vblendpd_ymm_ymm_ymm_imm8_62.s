  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovaps %ymm3, %ymm9  #  1     0    4      OPC=vmovaps_ymm_ymm  
  vmovapd %ymm9, %ymm1  #  2     0x4  5      OPC=vmovapd_ymm_ymm  
  movsd %xmm2, %xmm1    #  3     0x9  4      OPC=movsd_xmm_xmm    
  retq                  #  4     0xd  1      OPC=retq             
                                                                  
.size target, .-target
