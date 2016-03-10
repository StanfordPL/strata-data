  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm9, %ymm13         #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  vmovd %ebx, %xmm11                 #  3     0xa   4      OPC=vmovd_xmm_r32         
  vmovss %xmm11, %xmm13, %xmm15      #  4     0xe   5      OPC=vmovss_xmm_xmm_xmm    
  unpcklpd %xmm15, %xmm1             #  5     0x13  5      OPC=unpcklpd_xmm_xmm      
  retq                               #  6     0x18  1      OPC=retq                  
                                                                                     
.size target, .-target
