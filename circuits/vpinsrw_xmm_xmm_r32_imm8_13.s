  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label     
  movzwl %bx, %edx                    #  2     0x5   3      OPC=movzwl_r32_r16  
  vzeroall                            #  3     0x8   3      OPC=vzeroall        
  callq .move_016_008_dx_r8b_r9b      #  4     0xb   5      OPC=callq_label     
  callq .move_064_128_r12_r13_xmm1    #  5     0x10  5      OPC=callq_label     
  callq .move_r9b_to_byte_11_of_ymm1  #  6     0x15  5      OPC=callq_label     
  callq .move_r8b_to_byte_10_of_ymm1  #  7     0x1a  5      OPC=callq_label     
  retq                                #  8     0x1f  1      OPC=retq            
                                                                                
.size target, .-target
