  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vpmovzxwq %xmm5, %xmm1                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm   
  vpmovzxwq %xmm4, %xmm4                        #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm   
  hsubps %xmm1, %xmm4                           #  4     0xf   4      OPC=hsubps_xmm_xmm      
  vmaxps %ymm4, %ymm4, %ymm1                    #  5     0x13  4      OPC=vmaxps_ymm_ymm_ymm  
  retq                                          #  6     0x17  1      OPC=retq                
                                                                                              
.size target, .-target
