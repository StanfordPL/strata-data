  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  movq $0x4, %rbx                               #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0xa   5      OPC=callq_label     
  vmovd %xmm5, %r9d                             #  3     0xf   5      OPC=vmovd_r32_xmm   
  movzwq %bx, %rbx                              #  4     0x14  4      OPC=movzwq_r64_r16  
  xchgw %r9w, %bx                               #  5     0x18  4      OPC=xchgw_r16_r16   
  retq                                          #  6     0x1c  1      OPC=retq            
                                                                                          
.size target, .-target
