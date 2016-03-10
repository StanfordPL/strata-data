  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpandn %xmm1, %xmm1, %xmm9  #  1     0    4      OPC=vpandn_xmm_xmm_xmm    
  vpbroadcastw %xmm9, %ymm4   #  2     0x4  5      OPC=vpbroadcastw_ymm_xmm  
  movapd %xmm4, %xmm1         #  3     0x9  4      OPC=movapd_xmm_xmm        
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
