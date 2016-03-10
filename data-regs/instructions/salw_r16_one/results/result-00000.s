  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movzbw %bh, %dx                   #  1     0     4      OPC=movzbw_r16_rh  
  callq .move_016_008_bx_r10b_r11b  #  2     0x4   5      OPC=callq_label    
  xorw %ax, %ax                     #  3     0x9   3      OPC=xorw_r16_r16   
  addb %dl, %ah                     #  4     0xc   2      OPC=addb_rh_r8     
  adcb %r10b, %al                   #  5     0xe   3      OPC=adcb_r8_r8     
  xaddw %ax, %bx                    #  6     0x11  4      OPC=xaddw_r16_r16  
  retq                              #  7     0x15  1      OPC=retq           
                                                                             
.size target, .-target
