  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm7, %rbx                         #  2     0x5   4      OPC=vmovmskpd_r64_xmm  
  vpmovzxwq %xmm5, %xmm10                       #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm  
  vmovapd %ymm10, %ymm1                         #  4     0xe   5      OPC=vmovapd_ymm_ymm    
  callq .move_128_064_xmm1_r12_r13              #  5     0x13  5      OPC=callq_label        
  addw %r13w, %bx                               #  6     0x18  4      OPC=addw_r16_r16       
  retq                                          #  7     0x1c  1      OPC=retq               
                                                                                             
.size target, .-target
