  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vcvtdq2pd %xmm2, %xmm6           #  1     0     4      OPC=vcvtdq2pd_xmm_xmm        
  vunpckhpd %ymm6, %ymm2, %ymm0    #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpckldq %ymm2, %ymm0, %ymm1   #  3     0x8   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpcklqdq %ymm0, %ymm1, %ymm1  #  4     0xc   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
