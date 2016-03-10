  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x0, %rdi   #  1     0    10     OPC=movq_r64_imm64  
  movd %edi, %xmm1  #  2     0xa  4      OPC=movd_xmm_r32    
  retq              #  3     0xe  1      OPC=retq            
                                                             
.size target, .-target
