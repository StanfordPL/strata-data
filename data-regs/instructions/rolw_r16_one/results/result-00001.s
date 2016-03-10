  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_016_008_bx_r10b_r11b  #  1     0     5      OPC=callq_label    
  callq .clear_cf                   #  2     0x5   5      OPC=callq_label    
  movsbl %r11b, %ecx                #  3     0xa   4      OPC=movsbl_r32_r8  
  adcb %r11b, %cl                   #  4     0xe   3      OPC=adcb_r8_r8     
  adcw %bx, %bx                     #  5     0x11  3      OPC=adcw_r16_r16   
  retq                              #  6     0x14  1      OPC=retq           
                                                                             
.size target, .-target
