  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0x6, %rbx                               #  1     0     10     OPC=movq_r64_imm64   
  vmovups %xmm1, %xmm2                          #  2     0xa   4      OPC=vmovups_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  3     0xe   5      OPC=callq_label      
  xchgw %r11w, %bx                              #  4     0x13  4      OPC=xchgw_r16_r16    
  retq                                          #  5     0x17  1      OPC=retq             
                                                                                           
.size target, .-target
