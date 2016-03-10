  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm10_xmm11           #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label         
  vorpd %xmm6, %xmm2, %xmm4                     #  3     0xa   4      OPC=vorpd_xmm_xmm_xmm   
  vmulss %xmm11, %xmm4, %xmm1                   #  4     0xe   5      OPC=vmulss_xmm_xmm_xmm  
  sqrtsd %xmm10, %xmm1                          #  5     0x13  5      OPC=sqrtsd_xmm_xmm      
  retq                                          #  6     0x18  1      OPC=retq                
                                                                                              
.size target, .-target
