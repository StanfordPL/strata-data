  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  movq $0xfffffffffffffff8, %rbx  #  1     0     10     OPC=movq_r64_imm64     
  vmovshdup %xmm1, %xmm5          #  2     0xa   4      OPC=vmovshdup_xmm_xmm  
  vmovd %xmm5, %r12d              #  3     0xe   5      OPC=vmovd_r32_xmm      
  salq $0x1, %rbx                 #  4     0x13  3      OPC=salq_r64_one       
  xchgl %r12d, %ebx               #  5     0x16  3      OPC=xchgl_r32_r32      
  retq                            #  6     0x19  1      OPC=retq               
                                                                               
.size target, .-target
