  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movd %xmm7, %ebp                              #  2     0x5   4      OPC=movd_r32_xmm    
  movq $0x0, %rbx                               #  3     0x9   10     OPC=movq_r64_imm64  
  addw %bp, %bx                                 #  4     0x13  3      OPC=addw_r16_r16    
  retq                                          #  5     0x16  1      OPC=retq            
                                                                                          
.size target, .-target
