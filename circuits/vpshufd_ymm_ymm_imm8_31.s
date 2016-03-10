  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm14           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vmovupd %ymm2, %ymm13             #  2     0x4   4      OPC=vmovupd_ymm_ymm          
  vmovsldup %ymm13, %ymm6           #  3     0x8   5      OPC=vmovsldup_ymm_ymm        
  vunpcklps %ymm6, %ymm13, %ymm9    #  4     0xd   4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhqdq %ymm9, %ymm14, %ymm1  #  5     0x11  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target
