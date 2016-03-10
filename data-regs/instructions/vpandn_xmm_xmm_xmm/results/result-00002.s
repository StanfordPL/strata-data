  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %xmm3, %xmm2, %xmm12  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  vmovaps %xmm12, %xmm1         #  2     0x4  5      OPC=vmovaps_xmm_xmm      
  retq                          #  3     0x9  1      OPC=retq                 
                                                                              
.size target, .-target
