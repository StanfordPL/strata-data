  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %ymm3    #  1     0     5      OPC=vbroadcastss_ymm_xmm  
  vpandn %xmm1, %xmm3, %xmm13  #  2     0x5   4      OPC=vpandn_xmm_xmm_xmm    
  punpckldq %xmm13, %xmm13     #  3     0x9   5      OPC=punpckldq_xmm_xmm     
  movq %xmm13, %xmm1           #  4     0xe   5      OPC=movq_xmm_xmm          
  retq                         #  5     0x13  1      OPC=retq                  
                                                                               
.size target, .-target
