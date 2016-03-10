  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm5, %ebx                         #  2     0x5   4      OPC=vmovmskpd_r32_xmm  
  vpmovzxwq %xmm6, %ymm1                        #  3     0x9   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0xe   5      OPC=callq_label        
  xaddw %r12w, %bx                              #  5     0x13  5      OPC=xaddw_r16_r16      
  retq                                          #  6     0x18  1      OPC=retq               
                                                                                             
.size target, .-target
