  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %xmm1                     #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label           
  vpbroadcastd %xmm6, %xmm14                    #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm  
  movlhps %xmm14, %xmm1                         #  4     0xf   4      OPC=movlhps_xmm_xmm       
  retq                                          #  5     0x13  1      OPC=retq                  
                                                                                                
.size target, .-target
