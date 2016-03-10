  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movq %xmm5, %rsi                              #  2     0x5   5      OPC=movq_r64_xmm    
  movq $0x0, %rbx                               #  3     0xa   10     OPC=movq_r64_imm64  
  addl %esi, %ebx                               #  4     0x14  2      OPC=addl_r32_r32    
  retq                                          #  5     0x16  1      OPC=retq            
                                                                                          
.size target, .-target
