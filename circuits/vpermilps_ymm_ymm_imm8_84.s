  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vcvtdq2ps %ymm2, %ymm4          #  1     0     4      OPC=vcvtdq2ps_ymm_ymm      
  vmovshdup %ymm2, %ymm8          #  2     0x4   4      OPC=vmovshdup_ymm_ymm      
  subpd %xmm8, %xmm4              #  3     0x8   5      OPC=subpd_xmm_xmm          
  vhaddps %ymm2, %ymm4, %ymm9     #  4     0xd   4      OPC=vhaddps_ymm_ymm_ymm    
  vunpcklpd %ymm9, %ymm8, %ymm10  #  5     0x11  5      OPC=vunpcklpd_ymm_ymm_ymm  
  vunpcklps %ymm10, %ymm2, %ymm1  #  6     0x16  5      OPC=vunpcklps_ymm_ymm_ymm  
  retq                            #  7     0x1b  1      OPC=retq                   
                                                                                   
.size target, .-target
