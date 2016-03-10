  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vxorps %ymm1, %ymm1, %ymm5    #  1     0     4      OPC=vxorps_ymm_ymm_ymm   
  vandnpd %xmm5, %xmm5, %xmm15  #  2     0x4   4      OPC=vandnpd_xmm_xmm_xmm  
  vsqrtps %xmm15, %xmm9         #  3     0x8   5      OPC=vsqrtps_xmm_xmm      
  cvtps2pd %xmm9, %xmm1         #  4     0xd   4      OPC=cvtps2pd_xmm_xmm     
  retq                          #  5     0x11  1      OPC=retq                 
                                                                               
.size target, .-target
