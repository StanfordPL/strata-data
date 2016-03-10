  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm0            #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vunpckhps %ymm0, %ymm2, %ymm5     #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm5, %ymm14  #  3     0x8   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhpd %ymm5, %ymm14, %ymm1    #  4     0xc   4      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                              #  5     0x10  1      OPC=retq                     
                                                                                       
.size target, .-target
