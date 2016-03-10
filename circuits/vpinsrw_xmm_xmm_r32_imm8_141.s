  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r10_r11    #  1     0     5      OPC=callq_label  
  orb %bh, %bh                        #  2     0x5   2      OPC=orb_rh_rh    
  vzeroall                            #  3     0x7   3      OPC=vzeroall     
  callq .move_064_128_r10_r11_xmm1    #  4     0xa   5      OPC=callq_label  
  callq .move_016_008_bx_r8b_r9b      #  5     0xf   5      OPC=callq_label  
  callq .move_r8b_to_byte_10_of_ymm1  #  6     0x14  5      OPC=callq_label  
  callq .move_r9b_to_byte_11_of_ymm1  #  7     0x19  5      OPC=callq_label  
  retq                                #  8     0x1e  1      OPC=retq         
                                                                             
.size target, .-target
