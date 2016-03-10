  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_bx_r12b_r13b  #  1     0     5      OPC=callq_label     
  movq $0xffffffffffffffff, %r11    #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_008_016_r12b_r13b_bx  #  3     0xf   5      OPC=callq_label     
  clc                               #  4     0x14  1      OPC=clc             
  adcw %r11w, %bx                   #  5     0x15  4      OPC=adcw_r16_r16    
  retq                              #  6     0x19  1      OPC=retq            
                                                                              
.size target, .-target
