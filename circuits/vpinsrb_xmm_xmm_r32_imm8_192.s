  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode           
.target:                          #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label  
  callq .move_008_016_r8b_r9b_dx  #  2     0x5   5      OPC=callq_label  
  vzeroall                        #  3     0xa   3      OPC=vzeroall     
  xaddb %bh, %dh                  #  4     0xd   3      OPC=xaddb_rh_rh  
  callq .move_016_008_bx_r8b_r9b  #  5     0x10  5      OPC=callq_label  
  callq .move_064_128_r8_r9_xmm1  #  6     0x15  5      OPC=callq_label  
  retq                            #  7     0x1a  1      OPC=retq         
                                                                         
.size target, .-target
