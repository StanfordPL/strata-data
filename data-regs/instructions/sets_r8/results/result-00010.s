  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  clc                      #  1     0     1      OPC=clc             
  callq .read_sf_into_rcx  #  2     0x1   5      OPC=callq_label     
  movq $0x0, %rbx          #  3     0x6   10     OPC=movq_r64_imm64  
  adcw %bx, %bx            #  4     0x10  3      OPC=adcw_r16_r16    
  xorl %ecx, %ebx          #  5     0x13  2      OPC=xorl_r32_r32    
  retq                     #  6     0x15  1      OPC=retq            
                                                                     
.size target, .-target
