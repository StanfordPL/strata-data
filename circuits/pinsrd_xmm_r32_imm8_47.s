  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  movd %ebx, %xmm15                #  1     0     5      OPC=movd_xmm_r32           
  vpbroadcastd %xmm15, %ymm10      #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm   
  vunpckhps %xmm10, %xmm1, %xmm11  #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm11, %xmm1           #  4     0xf   5      OPC=unpcklpd_xmm_xmm       
  retq                             #  5     0x14  1      OPC=retq                   
                                                                                    
.size target, .-target
