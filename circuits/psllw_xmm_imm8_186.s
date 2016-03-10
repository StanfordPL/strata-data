  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                    
.target:                       #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm7    #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  vandnps %xmm7, %xmm7, %xmm3  #  2     0x5  4      OPC=vandnps_xmm_xmm_xmm   
  movddup %xmm3, %xmm1         #  3     0x9  4      OPC=movddup_xmm_xmm       
  retq                         #  4     0xd  1      OPC=retq                  
                                                                              
.size target, .-target
