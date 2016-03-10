  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm6  #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  vrsqrtps %ymm6, %ymm3      #  2     0x5  4      OPC=vrsqrtps_ymm_ymm      
  movss %xmm3, %xmm1         #  3     0x9  4      OPC=movss_xmm_xmm         
  retq                       #  4     0xd  1      OPC=retq                  
                                                                            
.size target, .-target
