  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  pmovzxwd %xmm1, %xmm1             #  1     0     5      OPC=pmovzxwd_xmm_xmm  
  pmovzxdq %xmm1, %xmm3             #  2     0x5   5      OPC=pmovzxdq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  3     0xa   5      OPC=callq_label       
  movq $0x5, %rbx                   #  4     0xf   10     OPC=movq_r64_imm64    
  xchgw %bx, %r11w                  #  5     0x19  4      OPC=xchgw_r16_r16     
  retq                              #  6     0x1d  1      OPC=retq              
                                                                                
.size target, .-target
