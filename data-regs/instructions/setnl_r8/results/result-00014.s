  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  setge %dh                         #  1     0     3      OPC=setge_rh      
  xorl %ebx, %ebx                   #  2     0x3   2      OPC=xorl_r32_r32  
  movb %dh, %dl                     #  3     0x5   2      OPC=movb_r8_rh    
  setne %ah                         #  4     0x7   3      OPC=setne_rh      
  callq .move_016_008_bx_r10b_r11b  #  5     0xa   5      OPC=callq_label   
  xorb %dl, %ah                     #  6     0xf   2      OPC=xorb_rh_r8    
  adcw %dx, %bx                     #  7     0x11  3      OPC=adcw_r16_r16  
  adcb %r11b, %bl                   #  8     0x14  3      OPC=adcb_r8_r8    
  retq                              #  9     0x17  1      OPC=retq          
                                                                            
.size target, .-target
