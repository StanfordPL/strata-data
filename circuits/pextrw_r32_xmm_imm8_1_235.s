  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vpmovzxwd %xmm1, %ymm9                        #  1     0     5      OPC=vpmovzxwd_ymm_xmm       
  movmskpd %xmm9, %ebx                          #  2     0x5   5      OPC=movmskpd_r32_xmm        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label             
  vpunpckhdq %xmm7, %xmm9, %xmm2                #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11              #  5     0x13  5      OPC=callq_label             
  orw %r11w, %bx                                #  6     0x18  4      OPC=orw_r16_r16             
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
