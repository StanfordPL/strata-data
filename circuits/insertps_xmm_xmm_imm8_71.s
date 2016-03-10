  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm1, %xmm9, %xmm6      #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vpbroadcastb %xmm6, %xmm3          #  3     0x9   5      OPC=vpbroadcastb_xmm_xmm   
  punpckhdq %xmm6, %xmm3             #  4     0xe   4      OPC=punpckhdq_xmm_xmm      
  movdqa %xmm3, %xmm1                #  5     0x12  4      OPC=movdqa_xmm_xmm         
  retq                               #  6     0x16  1      OPC=retq                   
                                                                                      
.size target, .-target
