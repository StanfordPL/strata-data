  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxss %xmm2, %xmm2, %xmm2  #  1     0    4      OPC=vmaxss_xmm_xmm_xmm  
  unpcklps %xmm2, %xmm1       #  2     0x4  3      OPC=unpcklps_xmm_xmm    
  retq                        #  3     0x7  1      OPC=retq                
                                                                           
.size target, .-target
