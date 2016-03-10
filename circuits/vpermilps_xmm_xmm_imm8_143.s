  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  movshdup %xmm9, %xmm9              #  2     0x5   5      OPC=movshdup_xmm_xmm         
  punpcklqdq %xmm2, %xmm9            #  3     0xa   5      OPC=punpcklqdq_xmm_xmm       
  vunpckhps %xmm2, %xmm9, %xmm11     #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm11, %xmm9, %xmm1   #  5     0x13  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  6     0x18  1      OPC=retq                     
                                                                                        
.size target, .-target
