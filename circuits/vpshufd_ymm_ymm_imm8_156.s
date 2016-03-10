  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm6           #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vunpckhpd %ymm6, %ymm2, %ymm5    #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vmovddup %ymm2, %ymm10           #  3     0x8   4      OPC=vmovddup_ymm_ymm        
  vpunpckhdq %ymm5, %ymm2, %ymm1   #  4     0xc   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhps %ymm1, %ymm10, %ymm14  #  5     0x10  4      OPC=vunpckhps_ymm_ymm_ymm   
  vmovupd %ymm14, %ymm1            #  6     0x14  5      OPC=vmovupd_ymm_ymm         
  retq                             #  7     0x19  1      OPC=retq                    
                                                                                     
.size target, .-target
