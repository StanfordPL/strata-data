  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovaps %xmm1, %xmm0        #  1     0    4      OPC=vmovaps_xmm_xmm     
  vpmovsxdq %xmm0, %xmm3      #  2     0x4  5      OPC=vpmovsxdq_xmm_xmm   
  vmaxss %xmm3, %xmm1, %xmm1  #  3     0x9  4      OPC=vmaxss_xmm_xmm_xmm  
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
