  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovsldup %xmm2, %xmm8          #  1     0     4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm3, %xmm8, %xmm14  #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmaxps %ymm14, %ymm14, %ymm3    #  3     0x8   5      OPC=vmaxps_ymm_ymm_ymm     
  vmovsd %xmm2, %xmm3, %xmm1      #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm     
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
