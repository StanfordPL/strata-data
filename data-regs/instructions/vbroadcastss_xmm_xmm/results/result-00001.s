  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label     
  movslq %r8d, %r9                                #  2     0x5   3      OPC=movslq_r64_r32  
  vzeroall                                        #  3     0x8   3      OPC=vzeroall        
  callq .move_064_128_r8_r9_xmm2                  #  4     0xb   5      OPC=callq_label     
  callq .move_128_64_xmm2_xmm8_xmm9               #  5     0x10  5      OPC=callq_label     
  callq .move_byte_1_of_ymm1_to_r8b               #  6     0x15  5      OPC=callq_label     
  callq .move_128_64_xmm2_xmm10_xmm11             #  7     0x1a  5      OPC=callq_label     
  callq .move_r8b_to_byte_31_of_ymm1              #  8     0x1f  5      OPC=callq_label     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  9     0x24  5      OPC=callq_label     
  retq                                            #  10    0x29  1      OPC=retq            
                                                                                            
.size target, .-target
