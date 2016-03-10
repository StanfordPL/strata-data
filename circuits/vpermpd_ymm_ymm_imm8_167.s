  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  callq .move_128_256_xmm8_xmm9_ymm1  #  2     0x5   5      OPC=callq_label           
  vmovhlps %xmm9, %xmm2, %xmm5        #  3     0xa   5      OPC=vmovhlps_xmm_xmm_xmm  
  vmovddup %ymm1, %ymm1               #  4     0xf   4      OPC=vmovddup_ymm_ymm      
  movapd %xmm5, %xmm1                 #  5     0x13  4      OPC=movapd_xmm_xmm        
  retq                                #  6     0x17  1      OPC=retq                  
                                                                                      
.size target, .-target
