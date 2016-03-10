  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm0               #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  vcvtdq2pd %xmm0, %xmm2               #  2     0x5   4      OPC=vcvtdq2pd_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0x9   5      OPC=callq_label        
  movhlps %xmm2, %xmm12                #  4     0xe   4      OPC=movhlps_xmm_xmm    
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label        
  retq                                 #  6     0x17  1      OPC=retq               
                                                                                    
.size target, .-target
