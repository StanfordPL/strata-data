  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label  
  addb %bh, %bh                       #  2     0x5   2      OPC=addb_rh_rh   
  vzeroall                            #  3     0x7   3      OPC=vzeroall     
  salb $0x1, %bh                      #  4     0xa   2      OPC=salb_rh_one  
  callq .move_064_128_r8_r9_xmm1      #  5     0xc   5      OPC=callq_label  
  callq .move_016_008_bx_r8b_r9b      #  6     0x11  5      OPC=callq_label  
  callq .move_r8b_to_byte_12_of_ymm1  #  7     0x16  5      OPC=callq_label  
  retq                                #  8     0x1b  1      OPC=retq         
                                                                             
.size target, .-target
