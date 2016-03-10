  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovshdup %ymm3, %ymm11            #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vunpckhps %ymm3, %ymm11, %ymm9     #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm9, %ymm11, %ymm10  #  3     0x8   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhpd %ymm10, %ymm2, %ymm1     #  4     0xd   5      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
