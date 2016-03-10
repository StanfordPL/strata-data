  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm12_xmm13             #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm12, %ymm8                      #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_128_256_xmm12_xmm13_ymm3            #  3     0xa   5      OPC=callq_label              
  vpunpcklqdq %ymm3, %ymm8, %ymm1                 #  4     0xf   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  5     0x13  5      OPC=callq_label              
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label              
  retq                                            #  7     0x1d  1      OPC=retq                     
                                                                                                     
.size target, .-target
