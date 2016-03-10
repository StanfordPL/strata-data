  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  subsd %xmm3, %xmm2    #  1     0    4      OPC=subsd_xmm_xmm    
  vmovups %xmm2, %xmm7  #  2     0x4  4      OPC=vmovups_xmm_xmm  
  vmovups %ymm7, %ymm1  #  3     0x8  4      OPC=vmovups_ymm_ymm  
  retq                  #  4     0xc  1      OPC=retq             
                                                                  
.size target, .-target
