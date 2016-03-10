  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode              
.target:                          #        0    0      OPC=<label>         
  movq $0xfffffffffffffff9, %rbx  #  1     0    10     OPC=movq_r64_imm64  
  movd %xmm1, %eax                #  2     0xa  4      OPC=movd_r32_xmm    
  xchgl %ebx, %eax                #  3     0xe  1      OPC=xchgl_eax_r32   
  retq                            #  4     0xf  1      OPC=retq            
                                                                           
.size target, .-target
