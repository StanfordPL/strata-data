  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastw %xmm2, %ymm10  #  1     0    5      OPC=vpbroadcastw_ymm_xmm  
  movss %xmm10, %xmm2         #  2     0x5  5      OPC=movss_xmm_xmm         
  vmovaps %xmm2, %xmm1        #  3     0xa  4      OPC=vmovaps_xmm_xmm       
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
