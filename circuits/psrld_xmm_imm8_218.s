  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  vpxor %xmm8, %xmm1, %xmm8          #  2     0x5   5      OPC=vpxor_xmm_xmm_xmm  
  movsldup %xmm8, %xmm9              #  3     0xa   5      OPC=movsldup_xmm_xmm   
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xf   5      OPC=callq_label        
  retq                               #  5     0x14  1      OPC=retq               
                                                                                  
.size target, .-target
