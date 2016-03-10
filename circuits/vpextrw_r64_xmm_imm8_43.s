  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vsqrtss %xmm1, %xmm1, %xmm2                   #  1     0     4      OPC=vsqrtss_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label          
  xorl %ebx, %ebx                               #  3     0x9   2      OPC=xorl_r32_r32         
  vpmovzxwq %xmm5, %ymm1                        #  4     0xb   5      OPC=vpmovzxwq_ymm_xmm    
  callq .move_128_064_xmm1_r10_r11              #  5     0x10  5      OPC=callq_label          
  xchgw %bx, %r11w                              #  6     0x15  4      OPC=xchgw_r16_r16        
  retq                                          #  7     0x19  1      OPC=retq                 
                                                                                               
.size target, .-target
