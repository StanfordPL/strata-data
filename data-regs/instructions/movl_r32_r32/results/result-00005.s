  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  stc                      #  1     0     1      OPC=stc             
  movq $0x1, %r13          #  2     0x1   10     OPC=movq_r64_imm64  
  movzbq %r13b, %rax       #  3     0xb   4      OPC=movzbq_r64_r8   
  adcl %eax, %eax          #  4     0xf   2      OPC=adcl_r32_r32    
  callq .read_cf_into_rbx  #  5     0x11  5      OPC=callq_label     
  xchgl %ebx, %ecx         #  6     0x16  2      OPC=xchgl_r32_r32   
  retq                     #  7     0x18  1      OPC=retq            
                                                                     
.size target, .-target
