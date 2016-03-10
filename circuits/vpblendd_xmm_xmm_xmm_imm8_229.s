  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovsldup %xmm3, %xmm10         #  1     0     4      OPC=vmovsldup_xmm_xmm      
  vmovss %xmm10, %xmm2, %xmm8     #  2     0x4   5      OPC=vmovss_xmm_xmm_xmm     
  vunpckhps %xmm8, %xmm10, %xmm1  #  3     0x9   5      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm8, %xmm1              #  4     0xe   5      OPC=movsd_xmm_xmm          
  retq                            #  5     0x13  1      OPC=retq                   
                                                                                   
.size target, .-target
