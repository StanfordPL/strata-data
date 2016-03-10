  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vpmovzxwq %xmm5, %xmm2                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm    
  callq .move_128_064_xmm2_r8_r9                #  3     0xa   5      OPC=callq_label          
  vhsubpd %xmm7, %xmm6, %xmm13                  #  4     0xf   4      OPC=vhsubpd_xmm_xmm_xmm  
  movmskpd %xmm13, %ebx                         #  5     0x13  5      OPC=movmskpd_r32_xmm     
  xaddw %bx, %r9w                               #  6     0x18  5      OPC=xaddw_r16_r16        
  retq                                          #  7     0x1d  1      OPC=retq                 
                                                                                               
.size target, .-target
