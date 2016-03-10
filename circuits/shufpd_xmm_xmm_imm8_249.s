  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm3   #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  vmulss %xmm1, %xmm3, %xmm4  #  2     0x5  4      OPC=vmulss_xmm_xmm_xmm    
  unpckhpd %xmm4, %xmm1       #  3     0x9  4      OPC=unpckhpd_xmm_xmm      
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
