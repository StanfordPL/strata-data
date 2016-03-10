  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vbroadcastsd %xmm7, %ymm13                    #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm  
  vrsqrtss %xmm2, %xmm13, %xmm12                #  3     0xa   4      OPC=vrsqrtss_xmm_xmm_xmm  
  movss %xmm6, %xmm13                           #  4     0xe   5      OPC=movss_xmm_xmm         
  callq .move_128_256_xmm12_xmm13_ymm1          #  5     0x13  5      OPC=callq_label           
  pmovzxdq %xmm2, %xmm1                         #  6     0x18  5      OPC=pmovzxdq_xmm_xmm      
  retq                                          #  7     0x1d  1      OPC=retq                  
                                                                                                
.size target, .-target
