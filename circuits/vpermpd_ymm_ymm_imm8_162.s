  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  callq .move_128_064_xmm2_r8_r9        #  2     0x5   5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm2, %ymm1       #  3     0xa   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_r9b_to_byte_6_of_ymm1     #  4     0xe   5      OPC=callq_label              
  movsd %xmm13, %xmm1                   #  5     0x13  5      OPC=movsd_xmm_xmm            
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
