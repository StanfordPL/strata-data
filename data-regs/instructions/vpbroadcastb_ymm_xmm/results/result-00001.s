  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastb %xmm2, %xmm3  #  1     0    5      OPC=vpbroadcastb_xmm_xmm  
  vbroadcastss %xmm3, %ymm1  #  2     0x5  5      OPC=vbroadcastss_ymm_xmm  
  retq                       #  3     0xa  1      OPC=retq                  
                                                                            
.size target, .-target
