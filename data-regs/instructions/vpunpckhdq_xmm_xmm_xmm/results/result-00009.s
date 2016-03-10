  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  movsd %xmm3, %xmm3                            #  2     0x5   4      OPC=movsd_xmm_xmm       
  vsubss %xmm4, %xmm2, %xmm1                    #  3     0x9   4      OPC=vsubss_xmm_xmm_xmm  
  unpckhps %xmm3, %xmm1                         #  4     0xd   3      OPC=unpckhps_xmm_xmm    
  retq                                          #  5     0x10  1      OPC=retq                
                                                                                              
.size target, .-target
