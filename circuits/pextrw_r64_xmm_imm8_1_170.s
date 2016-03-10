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
  vmovq %xmm5, %r15                             #  3     0xf   5      OPC=vmovq_r64_xmm   
  xchgw %r15w, %bx                              #  4     0x14  4      OPC=xchgw_r16_r16   
  retq                                          #  5     0x18  1      OPC=retq            
                                                                                          
.size target, .-target
