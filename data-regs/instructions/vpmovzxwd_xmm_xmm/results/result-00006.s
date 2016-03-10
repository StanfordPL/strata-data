  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vmovaps %xmm4, %xmm1                          #  2     0x5   4      OPC=vmovaps_xmm_xmm      
  vpmovzxwq %xmm5, %xmm0                        #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm    
  vpmovzxwq %xmm1, %xmm5                        #  4     0xe   5      OPC=vpmovzxwq_xmm_xmm    
  vhaddps %xmm0, %xmm5, %xmm1                   #  5     0x13  4      OPC=vhaddps_xmm_xmm_xmm  
  retq                                          #  6     0x17  1      OPC=retq                 
                                                                                               
.size target, .-target
