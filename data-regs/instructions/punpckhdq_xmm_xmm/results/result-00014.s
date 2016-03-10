  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vrcpss %xmm1, %xmm2, %xmm5  #  1     0    4      OPC=vrcpss_xmm_xmm_xmm  
  unpckhps %xmm5, %xmm1       #  2     0x4  3      OPC=unpckhps_xmm_xmm    
  retq                        #  3     0x7  1      OPC=retq                
                                                                           
.size target, .-target
