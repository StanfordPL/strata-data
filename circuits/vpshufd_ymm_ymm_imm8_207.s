  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm15           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vpunpcklqdq %ymm2, %ymm2, %ymm14  #  2     0x4   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhdq %ymm15, %ymm14, %ymm7  #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpckhpd %ymm7, %ymm15, %ymm0    #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vunpcklpd %ymm7, %ymm0, %ymm1     #  5     0x11  4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
