  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vpmovsxdq %xmm5, %xmm1                        #  2     0x5   5      OPC=vpmovsxdq_xmm_xmm     
  vpbroadcastd %xmm6, %xmm2                     #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm  
  punpckldq %xmm2, %xmm1                        #  4     0xf   4      OPC=punpckldq_xmm_xmm     
  movlhps %xmm2, %xmm1                          #  5     0x13  3      OPC=movlhps_xmm_xmm       
  retq                                          #  6     0x16  1      OPC=retq                  
                                                                                                
.size target, .-target
