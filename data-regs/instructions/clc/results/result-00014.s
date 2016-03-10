  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  xorq %rax, %rax          #  1     0    3      OPC=xorq_r64_r64   
  callq .read_cf_into_rcx  #  2     0x3  5      OPC=callq_label    
  movsbq %cl, %rax         #  3     0x8  4      OPC=movsbq_r64_r8  
  orq %rax, %rax           #  4     0xc  3      OPC=orq_r64_r64    
  retq                     #  5     0xf  1      OPC=retq           
                                                                   
.size target, .-target
