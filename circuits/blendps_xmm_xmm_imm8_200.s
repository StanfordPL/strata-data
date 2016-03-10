  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovshdup %xmm2, %xmm12          #  1     0     4      OPC=vmovshdup_xmm_xmm      
  movups %xmm1, %xmm5              #  2     0x4   3      OPC=movups_xmm_xmm         
  vunpckhps %xmm12, %xmm5, %xmm13  #  3     0x7   5      OPC=vunpckhps_xmm_xmm_xmm  
  vunpcklpd %xmm13, %xmm5, %xmm2   #  4     0xc   5      OPC=vunpcklpd_xmm_xmm_xmm  
  movdqu %xmm2, %xmm1              #  5     0x11  4      OPC=movdqu_xmm_xmm         
  retq                             #  6     0x15  1      OPC=retq                   
                                                                                    
.size target, .-target
