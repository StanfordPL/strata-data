  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckldq %xmm3, %xmm3, %xmm5   #  1     0     4      OPC=vpunpckldq_xmm_xmm_xmm   
  vmovss %xmm5, %xmm2, %xmm7       #  2     0x4   4      OPC=vmovss_xmm_xmm_xmm       
  vunpckhps %xmm3, %xmm3, %xmm3    #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm    
  vunpckhps %xmm3, %xmm7, %xmm0    #  4     0xc   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm0, %xmm7, %xmm1  #  5     0x10  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
