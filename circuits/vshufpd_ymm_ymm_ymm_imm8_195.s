  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  movapd %xmm9, %xmm3                #  2     0x5   5      OPC=movapd_xmm_xmm           
  punpckhqdq %xmm8, %xmm2            #  3     0xa   5      OPC=punpckhqdq_xmm_xmm       
  vpunpcklqdq %ymm3, %ymm2, %ymm1    #  4     0xf   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                               #  5     0x13  1      OPC=retq                     
                                                                                        
.size target, .-target
