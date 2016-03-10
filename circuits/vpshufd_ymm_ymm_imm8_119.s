  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vunpcklpd %ymm2, %ymm2, %ymm0      #  1     0     4      OPC=vunpcklpd_ymm_ymm_ymm    
  vunpckhps %ymm0, %ymm2, %ymm3      #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm    
  vcvtdq2pd %xmm2, %xmm14            #  3     0x8   4      OPC=vcvtdq2pd_xmm_xmm        
  vunpckhpd %ymm14, %ymm3, %ymm14    #  4     0xc   5      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm14, %ymm14, %ymm1  #  5     0x11  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
