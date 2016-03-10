  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm7, %ymm2                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  movmskpd %xmm2, %ebx                          #  3     0xa   4      OPC=movmskpd_r32_xmm   
  callq .move_128_064_xmm2_r8_r9                #  4     0xe   5      OPC=callq_label        
  xchgw %r9w, %bx                               #  5     0x13  4      OPC=xchgw_r16_r16      
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
