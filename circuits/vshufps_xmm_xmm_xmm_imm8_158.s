  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vpmovzxdq %xmm3, %ymm12            #  1     0     5      OPC=vpmovzxdq_ymm_xmm        
  vunpckhps %xmm3, %xmm12, %xmm9     #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm    
  vhaddpd %xmm12, %xmm2, %xmm8       #  3     0x9   5      OPC=vhaddpd_xmm_xmm_xmm      
  callq .move_64_128_xmm8_xmm9_xmm3  #  4     0xe   5      OPC=callq_label              
  vpunpckhqdq %xmm3, %xmm2, %xmm1    #  5     0x13  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                               #  6     0x17  1      OPC=retq                     
                                                                                        
.size target, .-target
