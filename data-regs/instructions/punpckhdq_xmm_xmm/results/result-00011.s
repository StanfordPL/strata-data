  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovlhps %xmm1, %xmm1, %xmm14  #  1     0    4      OPC=vmovlhps_xmm_xmm_xmm  
  vmovss %xmm14, %xmm2, %xmm3    #  2     0x4  5      OPC=vmovss_xmm_xmm_xmm    
  unpckhps %xmm3, %xmm1          #  3     0x9  3      OPC=unpckhps_xmm_xmm      
  retq                           #  4     0xc  1      OPC=retq                  
                                                                                
.size target, .-target
