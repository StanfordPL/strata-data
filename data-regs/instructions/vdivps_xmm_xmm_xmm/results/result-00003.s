  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  divps %xmm3, %xmm2                  #  1     0     3      OPC=divps_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11    #  2     0x3   5      OPC=callq_label    
  vzeroall                            #  3     0x8   3      OPC=vzeroall       
  callq .move_064_128_r10_r11_xmm2    #  4     0xb   5      OPC=callq_label    
  callq .move_128_064_xmm2_r12_r13    #  5     0x10  5      OPC=callq_label    
  callq .move_byte_9_of_ymm1_to_r8b   #  6     0x15  5      OPC=callq_label    
  callq .move_064_128_r12_r13_xmm1    #  7     0x1a  5      OPC=callq_label    
  callq .move_r8b_to_byte_20_of_ymm1  #  8     0x1f  5      OPC=callq_label    
  retq                                #  9     0x24  1      OPC=retq           
                                                                               
.size target, .-target
