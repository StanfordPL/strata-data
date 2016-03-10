  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm3, %ymm10           #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_128_064_xmm2_r8_r9       #  3     0xa   5      OPC=callq_label              
  movw %r8w, %r8w                      #  4     0xf   4      OPC=movw_r16_r16             
  vbroadcastsd %xmm13, %ymm1           #  5     0x13  5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %ymm1, %ymm10, %ymm1     #  6     0x18  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_064_128_r8_r9_xmm1       #  7     0x1c  5      OPC=callq_label              
  retq                                 #  8     0x21  1      OPC=retq                     
                                                                                          
.size target, .-target
