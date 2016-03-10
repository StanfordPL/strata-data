  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  pmovzxdq %xmm1, %xmm3                         #  1     0     5      OPC=pmovzxdq_xmm_xmm      
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label           
  vbroadcastsd %xmm7, %ymm4                     #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm  
  cvtdq2pd %xmm4, %xmm1                         #  4     0xf   4      OPC=cvtdq2pd_xmm_xmm      
  retq                                          #  5     0x13  1      OPC=retq                  
                                                                                                
.size target, .-target
