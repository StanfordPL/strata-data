  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpandn %xmm1, %xmm1, %xmm3  #  1     0    4      OPC=vpandn_xmm_xmm_xmm    
  vbroadcastss %xmm3, %ymm3   #  2     0x4  5      OPC=vbroadcastss_ymm_xmm  
  movdqu %xmm3, %xmm1         #  3     0x9  4      OPC=movdqu_xmm_xmm        
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
