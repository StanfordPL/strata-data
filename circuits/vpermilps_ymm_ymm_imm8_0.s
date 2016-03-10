  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovups %ymm2, %ymm14            #  1     0     4      OPC=vmovups_ymm_ymm        
  vmovupd %ymm14, %ymm5            #  2     0x4   5      OPC=vmovupd_ymm_ymm        
  vmovsldup %ymm5, %ymm4           #  3     0x9   4      OPC=vmovsldup_ymm_ymm      
  vunpcklpd %ymm5, %ymm4, %ymm9    #  4     0xd   4      OPC=vunpcklpd_ymm_ymm_ymm  
  vunpcklpd %ymm4, %ymm9, %ymm14   #  5     0x11  4      OPC=vunpcklpd_ymm_ymm_ymm  
  vunpckhpd %ymm14, %ymm14, %ymm1  #  6     0x15  5      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                             #  7     0x1a  1      OPC=retq                   
                                                                                    
.size target, .-target
