  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  xorl %ebx, %ebx                               #  1     0     2      OPC=xorl_r32_r32       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x2   5      OPC=callq_label        
  vpmovzxwq %xmm5, %ymm2                        #  3     0x7   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm2_r10_r11              #  4     0xc   5      OPC=callq_label        
  xchgw %r11w, %bx                              #  5     0x11  4      OPC=xchgw_r16_r16      
  retq                                          #  6     0x15  1      OPC=retq               
                                                                                             
.size target, .-target
