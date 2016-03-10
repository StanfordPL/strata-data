  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode            
.target:                                          #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label   
  vzeroall                                        #  2     0x5   3      OPC=vzeroall      
  movq %r8, %r9                                   #  3     0x8   3      OPC=movq_r64_r64  
  callq .move_064_128_r8_r9_xmm2                  #  4     0xb   5      OPC=callq_label   
  callq .move_128_64_xmm2_xmm8_xmm9               #  5     0x10  5      OPC=callq_label   
  callq .move_128_64_xmm2_xmm10_xmm11             #  6     0x15  5      OPC=callq_label   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1a  5      OPC=callq_label   
  callq .move_r9b_to_byte_8_of_ymm1               #  8     0x1f  5      OPC=callq_label   
  retq                                            #  9     0x24  1      OPC=retq          
                                                                                          
.size target, .-target
