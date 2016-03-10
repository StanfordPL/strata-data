  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovupd %ymm3, %ymm10            #  1     0     4      OPC=vmovupd_ymm_ymm         
  vunpckhpd %ymm3, %ymm2, %ymm8    #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vunpckhpd %ymm3, %ymm10, %ymm13  #  3     0x8   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpcklwd %ymm13, %ymm8, %ymm5  #  4     0xc   5      OPC=vpunpcklwd_ymm_ymm_ymm  
  vminpd %ymm5, %ymm5, %ymm1       #  5     0x11  4      OPC=vminpd_ymm_ymm_ymm      
  retq                             #  6     0x15  1      OPC=retq                    
                                                                                     
.size target, .-target
