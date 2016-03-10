  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                    
.target:                                #        0    0      OPC=<label>               
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0    5      OPC=callq_label           
  vpbroadcastq %xmm12, %ymm1            #  2     0x5  5      OPC=vpbroadcastq_ymm_xmm  
  unpcklpd %xmm13, %xmm1                #  3     0xa  5      OPC=unpcklpd_xmm_xmm      
  retq                                  #  4     0xf  1      OPC=retq                  
                                                                                       
.size target, .-target
