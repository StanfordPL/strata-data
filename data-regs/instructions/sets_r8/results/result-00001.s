  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  callq .read_sf_into_rcx            #  1     0    5      OPC=callq_label  
  callq .move_064_032_rcx_r10d_r11d  #  2     0x5  5      OPC=callq_label  
  callq .move_008_016_r10b_r11b_bx   #  3     0xa  5      OPC=callq_label  
  retq                               #  4     0xf  1      OPC=retq         
                                                                           
.size target, .-target
