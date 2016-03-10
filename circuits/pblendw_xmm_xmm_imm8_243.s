  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  cvtdq2pd %xmm1, %xmm13                        #  1     0     5      OPC=cvtdq2pd_xmm_xmm        
  callq .move_128_64_xmm2_xmm8_xmm9             #  2     0x5   5      OPC=callq_label             
  pmovsxdq %xmm13, %xmm8                        #  3     0xa   6      OPC=pmovsxdq_xmm_xmm        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  4     0x10  5      OPC=callq_label             
  vpunpckldq %xmm5, %xmm2, %xmm0                #  5     0x15  4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1             #  6     0x19  5      OPC=callq_label             
  movsd %xmm0, %xmm1                            #  7     0x1e  4      OPC=movsd_xmm_xmm           
  retq                                          #  8     0x22  1      OPC=retq                    
                                                                                                  
.size target, .-target
