  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                    
.target:                                        #        0    0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label           
  vpbroadcastw %xmm7, %ymm13                    #  2     0x5  5      OPC=vpbroadcastw_ymm_xmm  
  vmovlhps %xmm13, %xmm2, %xmm1                 #  3     0xa  5      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                          #  4     0xf  1      OPC=retq                  
                                                                                               
.size target, .-target
