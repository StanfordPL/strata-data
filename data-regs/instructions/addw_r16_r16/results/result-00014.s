  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movq $0x20, %rbp                 #  1     0     10     OPC=movq_r64_imm64  
  movswq %bx, %r8                  #  2     0xa   4      OPC=movswq_r64_r16  
  movslq %r8d, %r9                 #  3     0xe   3      OPC=movslq_r64_r32  
  xorq %rbp, %r9                   #  4     0x11  3      OPC=xorq_r64_r64    
  callq .move_032_064_r8d_r9d_rbx  #  5     0x14  5      OPC=callq_label     
  clc                              #  6     0x19  1      OPC=clc             
  adcw %cx, %bx                    #  7     0x1a  3      OPC=adcw_r16_r16    
  retq                             #  8     0x1d  1      OPC=retq            
                                                                             
.size target, .-target
