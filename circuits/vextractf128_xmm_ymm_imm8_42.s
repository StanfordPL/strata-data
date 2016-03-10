  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovaps %ymm1, %ymm9  #  1     0    4      OPC=vmovaps_ymm_ymm  
  vmovups %xmm9, %xmm1  #  2     0x4  5      OPC=vmovups_xmm_xmm  
  minpd %xmm1, %xmm1    #  3     0x9  4      OPC=minpd_xmm_xmm    
  retq                  #  4     0xd  1      OPC=retq             
                                                                  
.size target, .-target
