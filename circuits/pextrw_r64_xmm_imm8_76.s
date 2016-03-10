  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  vmovdqa %xmm1, %xmm2              #  1     0     4      OPC=vmovdqa_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label      
  movq $0x4c, %rbx                  #  3     0x9   10     OPC=movq_r64_imm64   
  xchgw %r13w, %bx                  #  4     0x13  4      OPC=xchgw_r16_r16    
  retq                              #  5     0x17  1      OPC=retq             
                                                                               
.size target, .-target
