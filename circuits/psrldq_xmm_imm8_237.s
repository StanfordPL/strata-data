  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  movshdup %xmm1, %xmm1              #  1     0     4      OPC=movshdup_xmm_xmm       
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label            
  vunpckhps %xmm8, %xmm9, %xmm15     #  3     0x9   5      OPC=vunpckhps_xmm_xmm_xmm  
  pmovzxwq %xmm15, %xmm1             #  4     0xe   6      OPC=pmovzxwq_xmm_xmm       
  retq                               #  5     0x14  1      OPC=retq                   
                                                                                      
.size target, .-target
