  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  pmovsxwd %xmm2, %xmm4        #  1     0     5      OPC=pmovsxwd_xmm_xmm    
  vmovaps %xmm4, %xmm2         #  2     0x5   4      OPC=vmovaps_xmm_xmm     
  vmovupd %xmm4, %xmm15        #  3     0x9   4      OPC=vmovupd_xmm_xmm     
  vminps %xmm2, %xmm15, %xmm1  #  4     0xd   4      OPC=vminps_xmm_xmm_xmm  
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
