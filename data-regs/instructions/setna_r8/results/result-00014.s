  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .read_cf_into_rbx            #  1     0     5      OPC=callq_label  
  setbe %bl                          #  2     0x5   3      OPC=setbe_r8     
  callq .move_064_032_rbx_r10d_r11d  #  3     0x8   5      OPC=callq_label  
  callq .move_008_016_r10b_r11b_bx   #  4     0xd   5      OPC=callq_label  
  retq                               #  5     0x12  1      OPC=retq         
                                                                            
.size target, .-target
