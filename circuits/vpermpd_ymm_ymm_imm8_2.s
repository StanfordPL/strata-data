  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm1             #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label           
  movapd %xmm13, %xmm12                 #  3     0xa   5      OPC=movapd_xmm_xmm        
  movlhps %xmm12, %xmm12                #  4     0xf   4      OPC=movlhps_xmm_xmm       
  movhlps %xmm12, %xmm1                 #  5     0x13  4      OPC=movhlps_xmm_xmm       
  retq                                  #  6     0x17  1      OPC=retq                  
                                                                                        
.size target, .-target
