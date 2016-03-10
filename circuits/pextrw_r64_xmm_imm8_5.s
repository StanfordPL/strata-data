  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm7, %ebx                         #  2     0x5   4      OPC=vmovmskpd_r32_xmm  
  vpmovzxwq %xmm6, %ymm2                        #  3     0x9   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm2_r10_r11              #  4     0xe   5      OPC=callq_label        
  addw %r11w, %bx                               #  5     0x13  4      OPC=addw_r16_r16       
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
