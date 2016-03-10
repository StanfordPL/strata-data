  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r10_r11    #  1     0     5      OPC=callq_label        
  vzeroall                            #  2     0x5   3      OPC=vzeroall           
  callq .move_128_256_xmm8_xmm9_ymm2  #  3     0x8   5      OPC=callq_label        
  callq .move_064_128_r10_r11_xmm1    #  4     0xd   5      OPC=callq_label        
  callq .move_256_128_ymm1_xmm8_xmm9  #  5     0x12  5      OPC=callq_label        
  vorps %xmm1, %xmm2, %xmm9           #  6     0x17  4      OPC=vorps_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  7     0x1b  5      OPC=callq_label        
  retq                                #  8     0x20  1      OPC=retq               
                                                                                   
.size target, .-target
