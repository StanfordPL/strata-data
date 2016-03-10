  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmaxss %xmm2, %xmm3, %xmm9      #  1     0     4      OPC=vmaxss_xmm_xmm_xmm     
  vmovsldup %xmm9, %xmm10         #  2     0x4   5      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm2, %xmm10, %xmm6  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  movdqu %xmm2, %xmm0             #  4     0xd   4      OPC=movdqu_xmm_xmm         
  vmovsd %xmm0, %xmm6, %xmm1      #  5     0x11  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
