  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovaps %ymm2, %ymm1  #  1     0    4      OPC=vmovaps_ymm_ymm  
  movups %xmm3, %xmm1   #  2     0x4  3      OPC=movups_xmm_xmm   
  maxps %xmm3, %xmm1    #  3     0x7  3      OPC=maxps_xmm_xmm    
  retq                  #  4     0xa  1      OPC=retq             
                                                                  
.size target, .-target
