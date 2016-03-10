  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movapd %xmm2, %xmm0          #  1     0     4      OPC=movapd_xmm_xmm      
  vmovd %ebx, %xmm11           #  2     0x4   4      OPC=vmovd_xmm_r32       
  vminsd %xmm0, %xmm2, %xmm13  #  3     0x8   4      OPC=vminsd_xmm_xmm_xmm  
  vpor %xmm0, %xmm2, %xmm1     #  4     0xc   4      OPC=vpor_xmm_xmm_xmm    
  movhlps %xmm13, %xmm2        #  5     0x10  4      OPC=movhlps_xmm_xmm     
  movss %xmm11, %xmm2          #  6     0x14  5      OPC=movss_xmm_xmm       
  unpcklpd %xmm2, %xmm1        #  7     0x19  4      OPC=unpcklpd_xmm_xmm    
  retq                         #  8     0x1d  1      OPC=retq                
                                                                             
.size target, .-target
