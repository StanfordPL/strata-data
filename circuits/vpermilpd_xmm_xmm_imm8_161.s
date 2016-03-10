  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                    
.target:                       #        0    0      OPC=<label>               
  vminss %xmm2, %xmm2, %xmm10  #  1     0    4      OPC=vminss_xmm_xmm_xmm    
  vpbroadcastq %xmm10, %xmm1   #  2     0x4  5      OPC=vpbroadcastq_xmm_xmm  
  movhlps %xmm10, %xmm1        #  3     0x9  4      OPC=movhlps_xmm_xmm       
  retq                         #  4     0xd  1      OPC=retq                  
                                                                              
.size target, .-target
