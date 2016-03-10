  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  callq .move_128_64_xmm1_xmm8_xmm9    #  2     0x5   5      OPC=callq_label        
  punpckldq %xmm2, %xmm13              #  3     0xa   5      OPC=punpckldq_xmm_xmm  
  movss %xmm9, %xmm1                   #  4     0xf   5      OPC=movss_xmm_xmm      
  unpcklpd %xmm13, %xmm1               #  5     0x14  5      OPC=unpcklpd_xmm_xmm   
  retq                                 #  6     0x19  1      OPC=retq               
                                                                                    
.size target, .-target
