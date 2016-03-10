  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movzbl %bl, %ecx                   #  1     0     3      OPC=movzbl_r32_r8  
  movsbw %ah, %dx                    #  2     0x3   4      OPC=movsbw_r16_rh  
  callq .move_064_032_rcx_r10d_r11d  #  3     0x7   5      OPC=callq_label    
  xorw %dx, %r11w                    #  4     0xc   4      OPC=xorw_r16_r16   
  rcll $0x1, %ecx                    #  5     0x10  2      OPC=rcll_r32_one   
  movb %bl, %ah                      #  6     0x12  2      OPC=movb_rh_r8     
  adcb %dl, %bl                      #  7     0x14  2      OPC=adcb_r8_r8     
  retq                               #  8     0x16  1      OPC=retq           
                                                                              
.size target, .-target
