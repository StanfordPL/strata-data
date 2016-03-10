  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vunpckhpd %xmm2, %xmm3, %xmm1        #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm    
  vunpckhps %xmm3, %xmm2, %xmm14       #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm    
  movss %xmm14, %xmm1                  #  4     0xd   5      OPC=movss_xmm_xmm            
  vpunpcklqdq %xmm1, %xmm12, %xmm1     #  5     0x12  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                 #  6     0x16  1      OPC=retq                     
                                                                                          
.size target, .-target
