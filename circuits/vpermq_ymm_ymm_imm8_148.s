  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm9, %ymm11         #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm2, %ymm11, %ymm1   #  3     0xa   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label              
  movaps %xmm1, %xmm1                #  5     0x13  3      OPC=movaps_xmm_xmm           
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
