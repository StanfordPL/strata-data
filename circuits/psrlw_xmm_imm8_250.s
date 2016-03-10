  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmaxps %xmm4, %xmm4, %xmm2                    #  2     0x5   4      OPC=vmaxps_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9            #  3     0x9   5      OPC=callq_label         
  hsubpd %xmm9, %xmm1                           #  4     0xe   5      OPC=hsubpd_xmm_xmm      
  movhlps %xmm7, %xmm1                          #  5     0x13  3      OPC=movhlps_xmm_xmm     
  retq                                          #  6     0x16  1      OPC=retq                
                                                                                              
.size target, .-target
