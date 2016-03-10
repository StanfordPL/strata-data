  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movq $0x3, %rbx                  #  1     0     10     OPC=movq_r64_imm64           
  vpunpckhqdq %xmm1, %xmm1, %xmm8  #  2     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movd %xmm8, %edx                 #  3     0xe   5      OPC=movd_r32_xmm             
  xchgq %rdx, %rbx                 #  4     0x13  3      OPC=xchgq_r64_r64            
  retq                             #  5     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
