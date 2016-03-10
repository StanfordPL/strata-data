  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  movd %ebx, %xmm7                   #  2     0x5   4      OPC=movd_xmm_r32           
  vunpcklps %xmm7, %xmm9, %xmm7      #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklpd %xmm7, %xmm1              #  4     0xd   4      OPC=unpcklpd_xmm_xmm       
  retq                               #  5     0x11  1      OPC=retq                   
                                                                                      
.size target, .-target
