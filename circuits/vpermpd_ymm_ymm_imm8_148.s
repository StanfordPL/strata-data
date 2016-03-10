  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm13, %ymm0           #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm2, %ymm0, %ymm1      #  3     0xa   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movups %xmm2, %xmm1                  #  4     0xe   3      OPC=movups_xmm_xmm           
  retq                                 #  5     0x11  1      OPC=retq                     
                                                                                          
.size target, .-target
