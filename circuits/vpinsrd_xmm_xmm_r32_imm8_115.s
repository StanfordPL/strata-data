  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movd %ebx, %xmm3                 #  1     0     4      OPC=movd_xmm_r32             
  vmovhlps %xmm2, %xmm2, %xmm1     #  2     0x4   4      OPC=vmovhlps_xmm_xmm_xmm     
  punpckldq %xmm3, %xmm1           #  3     0x8   4      OPC=punpckldq_xmm_xmm        
  vpbroadcastq %xmm1, %xmm9        #  4     0xc   5      OPC=vpbroadcastq_xmm_xmm     
  vpunpcklqdq %xmm9, %xmm2, %xmm1  #  5     0x11  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
