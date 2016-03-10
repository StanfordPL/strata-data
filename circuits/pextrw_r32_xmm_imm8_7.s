  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm7, %xmm2                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  vpmovzxbd %xmm5, %ymm3                        #  3     0xa   5      OPC=vpmovzxbd_ymm_xmm  
  callq .move_128_064_xmm2_r10_r11              #  4     0xf   5      OPC=callq_label        
  vmovd %xmm3, %ebx                             #  5     0x14  4      OPC=vmovd_r32_xmm      
  xchgw %r11w, %bx                              #  6     0x18  4      OPC=xchgw_r16_r16      
  retq                                          #  7     0x1c  1      OPC=retq               
                                                                                             
.size target, .-target
