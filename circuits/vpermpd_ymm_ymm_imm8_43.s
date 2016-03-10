  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vbroadcastsd %xmm2, %ymm13          #  1     0     5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label              
  vunpcklpd %ymm13, %ymm2, %ymm1      #  3     0xa   5      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %xmm9, %xmm9, %xmm8     #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1   #  5     0x14  5      OPC=callq_label              
  retq                                #  6     0x19  1      OPC=retq                     
                                                                                         
.size target, .-target
