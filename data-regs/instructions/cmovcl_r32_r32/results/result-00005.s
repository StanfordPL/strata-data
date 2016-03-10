  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  movq %rbx, %rax          #  1     0    3      OPC=movq_r64_r64     
  callq .read_cf_into_rbx  #  2     0x3  5      OPC=callq_label      
  xchgl %eax, %ebx         #  3     0x8  2      OPC=xchgl_r32_r32    
  cmc                      #  4     0xa  1      OPC=cmc              
  cmovael %ecx, %ebx       #  5     0xb  3      OPC=cmovael_r32_r32  
  retq                     #  6     0xe  1      OPC=retq             
                                                                     
.size target, .-target
