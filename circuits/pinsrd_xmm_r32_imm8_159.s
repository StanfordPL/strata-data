  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movd %ebx, %xmm4                     #  2     0x5   4      OPC=movd_xmm_r32      
  unpcklps %xmm4, %xmm11               #  3     0x9   4      OPC=unpcklps_xmm_xmm  
  unpcklpd %xmm11, %xmm1               #  4     0xd   5      OPC=unpcklpd_xmm_xmm  
  retq                                 #  5     0x12  1      OPC=retq              
                                                                                   
.size target, .-target
