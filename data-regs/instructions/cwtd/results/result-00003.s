  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP  Bytes  Opcode             
.target:                           #        0    0      OPC=<label>        
  movzbq %al, %rbx                 #  1     0    4      OPC=movzbq_r64_r8  
  cwtl                             #  2     0x4  1      OPC=cwtl           
  xchgl %eax, %ebx                 #  3     0x5  1      OPC=xchgl_r32_eax  
  callq .move_032_016_ebx_r8w_r9w  #  4     0x6  5      OPC=callq_label    
  movw %r9w, %dx                   #  5     0xb  4      OPC=movw_r16_r16   
  retq                             #  6     0xf  1      OPC=retq           
                                                                           
.size target, .-target
