  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  movq $0x0, %rbx                               #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0xa   5      OPC=callq_label     
  movq %xmm5, %rdi                              #  3     0xf   5      OPC=movq_r64_xmm    
  addw %di, %bx                                 #  4     0x14  3      OPC=addw_r16_r16    
  retq                                          #  5     0x17  1      OPC=retq            
                                                                                          
.size target, .-target
