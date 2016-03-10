  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm12, %ymm1            #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_128_64_xmm2_xmm8_xmm9     #  3     0xa   5      OPC=callq_label            
  vunpcklpd %xmm8, %xmm13, %xmm8        #  4     0xf   5      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1     #  5     0x14  5      OPC=callq_label            
  retq                                  #  6     0x19  1      OPC=retq                   
                                                                                         
.size target, .-target
