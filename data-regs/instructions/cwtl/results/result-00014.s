  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movw %ax, %r14w                 #  1     0     4      OPC=movw_r16_r16    
  movswl %r14w, %edx              #  2     0x4   4      OPC=movswl_r32_r16  
  movq $0xfffffffffffffffb, %rax  #  3     0x8   10     OPC=movq_r64_imm64  
  xchgl %edx, %eax                #  4     0x12  1      OPC=xchgl_eax_r32   
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
