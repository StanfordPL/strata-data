  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vcvtsi2ssl %ebx, %xmm1, %xmm14  #  1     0     4      OPC=vcvtsi2ssl_xmm_xmm_r32  
  vmovshdup %xmm14, %xmm4         #  2     0x4   5      OPC=vmovshdup_xmm_xmm       
  movd %ebx, %xmm0                #  3     0x9   4      OPC=movd_xmm_r32            
  vmulpd %xmm1, %xmm4, %xmm5      #  4     0xd   4      OPC=vmulpd_xmm_xmm_xmm      
  vunpcklps %xmm5, %xmm0, %xmm14  #  5     0x11  4      OPC=vunpcklps_xmm_xmm_xmm   
  movss %xmm14, %xmm1             #  6     0x15  5      OPC=movss_xmm_xmm           
  retq                            #  7     0x1a  1      OPC=retq                    
                                                                                    
.size target, .-target
