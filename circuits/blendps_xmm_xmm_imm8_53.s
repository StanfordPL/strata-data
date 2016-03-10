  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9    #  1     0     5      OPC=callq_label           
  movss %xmm2, %xmm1                   #  2     0x5   4      OPC=movss_xmm_xmm         
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0x9   5      OPC=callq_label           
  movss %xmm9, %xmm13                  #  4     0xe   5      OPC=movss_xmm_xmm         
  vpbroadcastq %xmm13, %ymm3           #  5     0x13  5      OPC=vpbroadcastq_ymm_xmm  
  unpcklpd %xmm3, %xmm1                #  6     0x18  4      OPC=unpcklpd_xmm_xmm      
  retq                                 #  7     0x1c  1      OPC=retq                  
                                                                                       
.size target, .-target
