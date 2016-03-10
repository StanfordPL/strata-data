  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  movlhps %xmm2, %xmm2                #  1     0     3      OPC=movlhps_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9      #  2     0x3   5      OPC=callq_label      
  vzeroall                            #  3     0x8   3      OPC=vzeroall         
  callq .move_064_128_r8_r9_xmm1      #  4     0xb   5      OPC=callq_label      
  callq .move_byte_6_of_ymm1_to_r9b   #  5     0x10  5      OPC=callq_label      
  callq .move_r9b_to_byte_14_of_ymm1  #  6     0x15  5      OPC=callq_label      
  retq                                #  7     0x1a  1      OPC=retq             
                                                                                 
.size target, .-target
