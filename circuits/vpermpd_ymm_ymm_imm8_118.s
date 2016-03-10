  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  callq .move_64_128_xmm10_xmm11_xmm2   #  3     0xa   5      OPC=callq_label            
  vpbroadcastq %xmm13, %ymm9            #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhpd %ymm9, %ymm2, %ymm1         #  5     0x14  5      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                  #  6     0x19  1      OPC=retq                   
                                                                                         
.size target, .-target
