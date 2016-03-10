  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movd %xmm1, %edx  #  1     0     4      OPC=movd_r32_xmm    
  movq $0x0, %rbx   #  2     0x4   10     OPC=movq_r64_imm64  
  xchgl %edx, %ebx  #  3     0xe   2      OPC=xchgl_r32_r32   
  retq              #  4     0x10  1      OPC=retq            
                                                              
.size target, .-target
