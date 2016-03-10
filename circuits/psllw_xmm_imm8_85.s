  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmaxss %xmm1, %xmm1, %xmm15  #  1     0    4      OPC=vmaxss_xmm_xmm_xmm  
  vorps %xmm15, %xmm1, %xmm7   #  2     0x4  5      OPC=vorps_xmm_xmm_xmm   
  pandn %xmm7, %xmm1           #  3     0x9  4      OPC=pandn_xmm_xmm       
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
