  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovlhps %xmm3, %xmm3, %xmm0  #  1     0    4      OPC=vmovlhps_xmm_xmm_xmm  
  vmulss %xmm3, %xmm0, %xmm9    #  2     0x4  4      OPC=vmulss_xmm_xmm_xmm    
  vmovhlps %xmm2, %xmm9, %xmm1  #  3     0x8  4      OPC=vmovhlps_xmm_xmm_xmm  
  retq                          #  4     0xc  1      OPC=retq                  
                                                                               
.size target, .-target
