  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm8  #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  vandnps %ymm8, %ymm8, %ymm4   #  2     0x4   5      OPC=vandnps_ymm_ymm_ymm   
  vpbroadcastq %xmm4, %ymm11    #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm  
  movdqu %xmm11, %xmm1          #  4     0xe   5      OPC=movdqu_xmm_xmm        
  retq                          #  5     0x13  1      OPC=retq                  
                                                                                
.size target, .-target
