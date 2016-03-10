  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm3     #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  vxorps %xmm2, %xmm2, %xmm10    #  2     0x4   4      OPC=vxorps_xmm_xmm_xmm   
  pmovsxbq %xmm3, %xmm1          #  3     0x8   5      OPC=pmovsxbq_xmm_xmm     
  vhsubpd %ymm3, %ymm10, %ymm15  #  4     0xd   4      OPC=vhsubpd_ymm_ymm_ymm  
  haddpd %xmm3, %xmm1            #  5     0x11  4      OPC=haddpd_xmm_xmm       
  sqrtsd %xmm15, %xmm1           #  6     0x15  5      OPC=sqrtsd_xmm_xmm       
  retq                           #  7     0x1a  1      OPC=retq                 
                                                                                
.size target, .-target
