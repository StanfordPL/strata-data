  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movupd %xmm2, %xmm10           #  1     0     5      OPC=movupd_xmm_xmm         
  vrcpss %xmm2, %xmm10, %xmm0    #  2     0x5   4      OPC=vrcpss_xmm_xmm_xmm     
  vmovaps %xmm2, %xmm1           #  3     0x9   4      OPC=vmovaps_xmm_xmm        
  vunpckhpd %xmm0, %xmm1, %xmm4  #  4     0xd   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovss %xmm10, %xmm4, %xmm1    #  5     0x11  5      OPC=vmovss_xmm_xmm_xmm     
  retq                           #  6     0x16  1      OPC=retq                   
                                                                                  
.size target, .-target
