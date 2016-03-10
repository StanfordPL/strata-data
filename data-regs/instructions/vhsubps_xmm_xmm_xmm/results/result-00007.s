  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vminps %xmm2, %xmm5, %xmm1                    #  2     0x5   4      OPC=vminps_xmm_xmm_xmm  
  hsubps %xmm3, %xmm2                           #  3     0x9   4      OPC=hsubps_xmm_xmm      
  movaps %xmm2, %xmm1                           #  4     0xd   3      OPC=movaps_xmm_xmm      
  retq                                          #  5     0x10  1      OPC=retq                
                                                                                              
.size target, .-target
