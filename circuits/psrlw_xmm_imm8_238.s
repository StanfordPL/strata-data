  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpandn %xmm1, %xmm1, %xmm5  #  1     0    4      OPC=vpandn_xmm_xmm_xmm    
  vbroadcastsd %xmm5, %ymm6   #  2     0x4  5      OPC=vbroadcastsd_ymm_xmm  
  movapd %xmm6, %xmm1         #  3     0x9  4      OPC=movapd_xmm_xmm        
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
