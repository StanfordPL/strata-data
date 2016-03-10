  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  movshdup %xmm1, %xmm13           #  1     0     5      OPC=movshdup_xmm_xmm       
  vmovss %xmm1, %xmm2, %xmm7       #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm     
  movdqu %xmm7, %xmm1              #  3     0x9   4      OPC=movdqu_xmm_xmm         
  vunpckhps %xmm13, %xmm7, %xmm10  #  4     0xd   5      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm10, %xmm1           #  5     0x12  5      OPC=unpcklpd_xmm_xmm       
  retq                             #  6     0x17  1      OPC=retq                   
                                                                                    
.size target, .-target
