  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmaxss %xmm4, %xmm2, %xmm10                   #  2     0x5   4      OPC=vmaxss_xmm_xmm_xmm  
  vorpd %xmm3, %xmm3, %xmm12                    #  3     0x9   4      OPC=vorpd_xmm_xmm_xmm   
  vmaxpd %ymm12, %ymm10, %ymm1                  #  4     0xd   5      OPC=vmaxpd_ymm_ymm_ymm  
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target
