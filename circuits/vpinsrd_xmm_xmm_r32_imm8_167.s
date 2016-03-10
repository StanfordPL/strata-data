  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm4                #  1     0     4      OPC=vmovd_xmm_r32            
  vbroadcastss %xmm4, %xmm15       #  2     0x4   5      OPC=vbroadcastss_xmm_xmm     
  vmovupd %xmm2, %xmm4             #  3     0x9   4      OPC=vmovupd_xmm_xmm          
  unpckhps %xmm15, %xmm4           #  4     0xd   4      OPC=unpckhps_xmm_xmm         
  vpunpcklqdq %xmm4, %xmm4, %xmm3  #  5     0x11  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovlhps %xmm3, %xmm2, %xmm1     #  6     0x15  4      OPC=vmovlhps_xmm_xmm_xmm     
  retq                             #  7     0x19  1      OPC=retq                     
                                                                                      
.size target, .-target
