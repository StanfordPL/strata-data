  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  clc                               #  1     0     1      OPC=clc             
  movq $0xfffffffffffffffc, %r11    #  2     0x1   10     OPC=movq_r64_imm64  
  callq .read_cf_into_rcx           #  3     0xb   5      OPC=callq_label     
  addw %r11w, %cx                   #  4     0x10  4      OPC=addw_r16_r16    
  shlb $0x1, %cl                    #  5     0x14  2      OPC=shlb_r8_one     
  callq .move_016_008_cx_r10b_r11b  #  6     0x16  5      OPC=callq_label     
  clc                               #  7     0x1b  1      OPC=clc             
  adcw %r11w, %bx                   #  8     0x1c  4      OPC=adcw_r16_r16    
  retq                              #  9     0x20  1      OPC=retq            
                                                                              
.size target, .-target
