  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode            
.target:                               #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label   
  movq %r9, %r8                        #  2     0x5   3      OPC=movq_r64_r64  
  vzeroall                             #  3     0x8   3      OPC=vzeroall      
  callq .move_064_128_r8_r9_xmm3       #  4     0xb   5      OPC=callq_label   
  callq .move_128_64_xmm3_xmm12_xmm13  #  5     0x10  5      OPC=callq_label   
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x15  5      OPC=callq_label   
  retq                                 #  7     0x1a  1      OPC=retq          
                                                                               
.size target, .-target
