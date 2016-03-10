  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovshdup %xmm2, %xmm1                        #  1     0     4      OPC=vmovshdup_xmm_xmm   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  vminss %xmm6, %xmm6, %xmm0                    #  3     0x9   4      OPC=vminss_xmm_xmm_xmm  
  vmovss %xmm0, %xmm1, %xmm1                    #  4     0xd   4      OPC=vmovss_xmm_xmm_xmm  
  retq                                          #  5     0x11  1      OPC=retq                
                                                                                              
.size target, .-target
