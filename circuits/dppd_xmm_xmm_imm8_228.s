  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                  
.target:                                        #        0    0      OPC=<label>             
  vxorpd %xmm13, %xmm13, %xmm2                  #  1     0    5      OPC=vxorpd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5  5      OPC=callq_label         
  movdqu %xmm4, %xmm1                           #  3     0xa  4      OPC=movdqu_xmm_xmm      
  retq                                          #  4     0xe  1      OPC=retq                
                                                                                             
.size target, .-target
