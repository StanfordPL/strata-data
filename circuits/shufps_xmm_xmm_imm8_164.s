  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm9, %xmm9          #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm  
  movshdup %xmm9, %xmm6              #  3     0xa   5      OPC=movshdup_xmm_xmm      
  punpcklqdq %xmm6, %xmm1            #  4     0xf   4      OPC=punpcklqdq_xmm_xmm    
  retq                               #  5     0x13  1      OPC=retq                  
                                                                                     
.size target, .-target
