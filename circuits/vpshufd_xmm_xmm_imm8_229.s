  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  vmovdqu %xmm9, %xmm12              #  2     0x5   5      OPC=vmovdqu_xmm_xmm    
  vmovshdup %xmm2, %xmm1             #  3     0xa   4      OPC=vmovshdup_xmm_xmm  
  unpcklpd %xmm12, %xmm1             #  4     0xe   5      OPC=unpcklpd_xmm_xmm   
  retq                               #  5     0x13  1      OPC=retq               
                                                                                  
.size target, .-target
