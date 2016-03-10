  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vmovd %ebx, %xmm3                             #  2     0x5   4      OPC=vmovd_xmm_r32          
  vunpcklpd %xmm3, %xmm4, %xmm7                 #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vunpckhps %xmm7, %xmm1, %xmm6                 #  4     0xd   4      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm6, %xmm1                         #  5     0x11  4      OPC=unpcklpd_xmm_xmm       
  retq                                          #  6     0x15  1      OPC=retq                   
                                                                                                 
.size target, .-target
