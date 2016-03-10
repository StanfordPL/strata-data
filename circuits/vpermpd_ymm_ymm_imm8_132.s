  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  movdqu %xmm2, %xmm4                #  2     0x5   4      OPC=movdqu_xmm_xmm           
  vbroadcastsd %xmm4, %ymm1          #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm     
  vbroadcastsd %xmm1, %ymm7          #  4     0xe   5      OPC=vbroadcastsd_ymm_xmm     
  movdqa %xmm9, %xmm2                #  5     0x13  5      OPC=movdqa_xmm_xmm           
  vpunpcklqdq %ymm2, %ymm7, %ymm1    #  6     0x18  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                               #  7     0x1c  1      OPC=retq                     
                                                                                        
.size target, .-target
