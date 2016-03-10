  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpbroadcastq %xmm2, %xmm9         #  1     0    5      OPC=vpbroadcastq_xmm_xmm     
  vmaxps %xmm2, %xmm2, %xmm15       #  2     0x5  4      OPC=vmaxps_xmm_xmm_xmm       
  vpunpckhqdq %xmm9, %xmm15, %xmm1  #  3     0x9  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
