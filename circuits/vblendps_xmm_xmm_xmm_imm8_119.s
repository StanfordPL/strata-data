  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovsldup %xmm3, %xmm15         #  1     0     4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm2, %xmm15, %xmm8  #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  vxorps %xmm8, %xmm2, %xmm2      #  3     0x8   5      OPC=vxorps_xmm_xmm_xmm     
  vaddsd %xmm2, %xmm8, %xmm12     #  4     0xd   4      OPC=vaddsd_xmm_xmm_xmm     
  vmovsd %xmm3, %xmm12, %xmm1     #  5     0x11  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
