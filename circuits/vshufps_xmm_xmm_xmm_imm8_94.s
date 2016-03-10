  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                    
.target:                                        #        0    0      OPC=<label>               
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label           
  vbroadcastss %xmm5, %xmm5                     #  2     0x5  5      OPC=vbroadcastss_xmm_xmm  
  vmovhlps %xmm2, %xmm5, %xmm1                  #  3     0xa  4      OPC=vmovhlps_xmm_xmm_xmm  
  retq                                          #  4     0xe  1      OPC=retq                  
                                                                                               
.size target, .-target
