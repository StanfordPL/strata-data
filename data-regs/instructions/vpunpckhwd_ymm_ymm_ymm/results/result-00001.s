  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpand %ymm3, %ymm3, %ymm1        #  1     0     4      OPC=vpand_ymm_ymm_ymm       
  vunpckhpd %ymm1, %ymm2, %ymm12   #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vunpckhpd %ymm2, %ymm1, %ymm0    #  3     0x8   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpcklwd %ymm0, %ymm12, %ymm8  #  4     0xc   4      OPC=vpunpcklwd_ymm_ymm_ymm  
  vorpd %ymm8, %ymm8, %ymm1        #  5     0x10  5      OPC=vorpd_ymm_ymm_ymm       
  retq                             #  6     0x15  1      OPC=retq                    
                                                                                     
.size target, .-target
