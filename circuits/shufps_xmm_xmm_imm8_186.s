  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhdq %xmm2, %xmm2, %xmm11  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpckhdq %xmm1, %xmm1, %xmm5   #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vunpckhps %xmm2, %xmm11, %xmm3   #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm3, %xmm5, %xmm5  #  4     0xc   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movapd %xmm5, %xmm1              #  5     0x10  4      OPC=movapd_xmm_xmm           
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
