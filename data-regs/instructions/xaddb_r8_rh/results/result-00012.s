  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movzbl %bl, %r11d               #  1     0     4      OPC=movzbl_r32_r8   
  movzbl %ah, %ecx                #  2     0x4   3      OPC=movzbl_r32_rh   
  movq $0x0, %rdx                 #  3     0x7   10     OPC=movq_r64_imm64  
  callq .move_016_008_cx_r8b_r9b  #  4     0x11  5      OPC=callq_label     
  xchgl %edx, %r11d               #  5     0x16  3      OPC=xchgl_r32_r32   
  shlb $0x1, %r9b                 #  6     0x19  3      OPC=shlb_r8_one     
  movb %dl, %ah                   #  7     0x1c  2      OPC=movb_rh_r8      
  adcb %r8b, %bl                  #  8     0x1e  3      OPC=adcb_r8_r8      
  retq                            #  9     0x21  1      OPC=retq            
                                                                            
.size target, .-target
