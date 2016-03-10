  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovss %xmm10, %xmm11, %xmm1         #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm    
  vpbroadcastd %xmm11, %ymm0           #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm  
  movapd %xmm0, %xmm7                  #  4     0xf   4      OPC=movapd_xmm_xmm        
  movlhps %xmm7, %xmm1                 #  5     0x13  3      OPC=movlhps_xmm_xmm       
  retq                                 #  6     0x16  1      OPC=retq                  
                                                                                       
.size target, .-target
