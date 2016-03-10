  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vsqrtps %xmm3, %xmm10        #  1     0     4      OPC=vsqrtps_xmm_xmm     
  vmovss %xmm10, %xmm2, %xmm3  #  2     0x4   5      OPC=vmovss_xmm_xmm_xmm  
  vmovss %xmm3, %xmm2, %xmm2   #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm  
  vorps %xmm2, %xmm2, %xmm1    #  4     0xd   4      OPC=vorps_xmm_xmm_xmm   
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
