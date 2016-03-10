  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode            
.target:                                          #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r12_r13                #  1     0     5      OPC=callq_label   
  vzeroall                                        #  2     0x5   3      OPC=vzeroall      
  movq %r12, %r13                                 #  3     0x8   3      OPC=movq_r64_r64  
  callq .move_064_128_r12_r13_xmm3                #  4     0xb   5      OPC=callq_label   
  callq .move_128_64_xmm3_xmm8_xmm9               #  5     0x10  5      OPC=callq_label   
  callq .move_128_64_xmm3_xmm10_xmm11             #  6     0x15  5      OPC=callq_label   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  7     0x1a  5      OPC=callq_label   
  callq .move_128_64_xmm3_xmm8_xmm9               #  8     0x1f  5      OPC=callq_label   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  9     0x24  5      OPC=callq_label   
  retq                                            #  10    0x29  1      OPC=retq          
                                                                                          
.size target, .-target
