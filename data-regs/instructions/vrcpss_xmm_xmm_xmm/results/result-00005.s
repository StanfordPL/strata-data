  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                  
.target:                                        #        0    0      OPC=<label>             
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label         
  rcpss %xmm4, %xmm2                            #  2     0x5  4      OPC=rcpss_xmm_xmm       
  vminps %xmm2, %xmm2, %xmm1                    #  3     0x9  4      OPC=vminps_xmm_xmm_xmm  
  retq                                          #  4     0xd  1      OPC=retq                
                                                                                             
.size target, .-target
