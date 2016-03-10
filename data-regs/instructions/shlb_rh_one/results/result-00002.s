  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movzbl %ah, %ecx                   #  1     0     3      OPC=movzbl_r32_rh  
  callq .move_032_016_ecx_r8w_r9w    #  2     0x3   5      OPC=callq_label    
  callq .move_064_032_rcx_r10d_r11d  #  3     0x8   5      OPC=callq_label    
  callq .move_008_016_r10b_r11b_cx   #  4     0xd   5      OPC=callq_label    
  addw %r8w, %cx                     #  5     0x12  4      OPC=addw_r16_r16   
  adcb %r10b, %r11b                  #  6     0x16  3      OPC=adcb_r8_r8     
  movb %cl, %ah                      #  7     0x19  2      OPC=movb_rh_r8     
  shlb $0x1, %r11b                   #  8     0x1b  3      OPC=shlb_r8_one    
  retq                               #  9     0x1e  1      OPC=retq           
                                                                              
.size target, .-target
