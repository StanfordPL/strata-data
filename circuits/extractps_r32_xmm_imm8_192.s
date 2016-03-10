  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x6, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  movd %xmm1, %r14d  #  2     0xa   5      OPC=movd_r32_xmm    
  xchgl %r14d, %ebx  #  3     0xf   3      OPC=xchgl_r32_r32   
  retq               #  4     0x12  1      OPC=retq            
                                                               
.size target, .-target
