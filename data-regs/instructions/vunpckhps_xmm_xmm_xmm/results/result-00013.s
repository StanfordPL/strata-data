  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  unpckhps %xmm3, %xmm2  #  1     0    3      OPC=unpckhps_xmm_xmm  
  vmovaps %xmm2, %xmm0   #  2     0x3  4      OPC=vmovaps_xmm_xmm   
  vmovupd %ymm0, %ymm1   #  3     0x7  4      OPC=vmovupd_ymm_ymm   
  retq                   #  4     0xb  1      OPC=retq              
                                                                    
.size target, .-target
