  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movzbl %cl, %eax  #  1     0     3      OPC=movzbl_r32_r8   
  movq $0x8, %rbx   #  2     0x3   10     OPC=movq_r64_imm64  
  xchgw %ax, %cx    #  3     0xd   2      OPC=xchgw_r16_ax    
  xchgl %ebx, %eax  #  4     0xf   2      OPC=xchgl_r32_r32   
  retq              #  5     0x11  1      OPC=retq            
                                                              
.size target, .-target
