  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movq %xmm5, %rdx                              #  2     0x5   5      OPC=movq_r64_xmm    
  movq $0x0, %rbx                               #  3     0xa   10     OPC=movq_r64_imm64  
  callq .move_032_016_edx_r8w_r9w               #  4     0x14  5      OPC=callq_label     
  xaddw %r9w, %bx                               #  5     0x19  5      OPC=xaddw_r16_r16   
  retq                                          #  6     0x1e  1      OPC=retq            
                                                                                          
.size target, .-target
