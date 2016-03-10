  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  callq .move_064_032_rcx_r10d_r11d  #  1     0    5      OPC=callq_label    
  movsbq %r11b, %rax                 #  2     0x5  4      OPC=movsbq_r64_r8  
  xorq %rcx, %rax                    #  3     0x9  3      OPC=xorq_r64_r64   
  adcq %rcx, %rbx                    #  4     0xc  3      OPC=adcq_r64_r64   
  retq                               #  5     0xf  1      OPC=retq           
                                                                             
.size target, .-target
