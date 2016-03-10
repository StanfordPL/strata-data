  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_064_xmm2_r10_r11     #  1     0     5      OPC=callq_label          
  callq .move_064_128_r10_r11_xmm2     #  2     0x5   5      OPC=callq_label          
  pandn %xmm1, %xmm1                   #  3     0xa   4      OPC=pandn_xmm_xmm        
  vpmovzxdq %xmm1, %xmm3               #  4     0xe   5      OPC=vpmovzxdq_xmm_xmm    
  callq .move_128_64_xmm2_xmm12_xmm13  #  5     0x13  5      OPC=callq_label          
  vsqrtss %xmm3, %xmm12, %xmm1         #  6     0x18  4      OPC=vsqrtss_xmm_xmm_xmm  
  retq                                 #  7     0x1c  1      OPC=retq                 
                                                                                      
.size target, .-target
