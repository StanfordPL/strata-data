  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r10_r11      #  1     0     5      OPC=callq_label     
  vzeroall                              #  2     0x5   3      OPC=vzeroall        
  callq .move_064_128_r10_r11_xmm3      #  3     0x8   5      OPC=callq_label     
  vrcpps %ymm3, %ymm12                  #  4     0xd   4      OPC=vrcpps_ymm_ymm  
  callq .move_byte_30_of_ymm1_to_r8b    #  5     0x11  5      OPC=callq_label     
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x16  5      OPC=callq_label     
  callq .move_r8b_to_byte_18_of_ymm1    #  7     0x1b  5      OPC=callq_label     
  retq                                  #  8     0x20  1      OPC=retq            
                                                                                  
.size target, .-target
