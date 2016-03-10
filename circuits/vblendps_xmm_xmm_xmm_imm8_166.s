  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmaxps %xmm3, %xmm3, %xmm8      #  1     0     4      OPC=vmaxps_xmm_xmm_xmm     
  movsldup %xmm8, %xmm3           #  2     0x4   5      OPC=movsldup_xmm_xmm       
  vunpckhps %xmm2, %xmm3, %xmm13  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  movss %xmm2, %xmm8              #  4     0xd   5      OPC=movss_xmm_xmm          
  vmovsd %xmm8, %xmm13, %xmm1     #  5     0x12  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                            #  6     0x17  1      OPC=retq                   
                                                                                   
.size target, .-target
