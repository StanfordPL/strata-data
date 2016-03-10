  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                    
.target:                              #        0    0      OPC=<label>               
  vpbroadcastb %xmm2, %xmm3           #  1     0    5      OPC=vpbroadcastb_xmm_xmm  
  callq .move_256_128_ymm3_xmm8_xmm9  #  2     0x5  5      OPC=callq_label           
  movapd %xmm9, %xmm1                 #  3     0xa  5      OPC=movapd_xmm_xmm        
  retq                                #  4     0xf  1      OPC=retq                  
                                                                                     
.size target, .-target
