  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm9, %ymm7           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  punpcklqdq %xmm9, %xmm9             #  3     0xa   5      OPC=punpcklqdq_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xf   5      OPC=callq_label           
  vmovapd %xmm8, %xmm5                #  5     0x14  5      OPC=vmovapd_xmm_xmm       
  movlhps %xmm7, %xmm1                #  6     0x19  3      OPC=movlhps_xmm_xmm       
  unpcklpd %xmm5, %xmm1               #  7     0x1c  4      OPC=unpcklpd_xmm_xmm      
  retq                                #  8     0x20  1      OPC=retq                  
                                                                                      
.size target, .-target
