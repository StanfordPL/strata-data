  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm9           #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vpunpckhdq %ymm2, %ymm9, %ymm14  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm9, %ymm14, %ymm10  #  3     0x8   5      OPC=vunpcklps_ymm_ymm_ymm   
  vunpcklpd %ymm14, %ymm10, %ymm1  #  4     0xd   5      OPC=vunpcklpd_ymm_ymm_ymm   
  movsd %xmm10, %xmm1              #  5     0x12  5      OPC=movsd_xmm_xmm           
  retq                             #  6     0x17  1      OPC=retq                    
                                                                                     
.size target, .-target
