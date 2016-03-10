  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vorps %ymm2, %ymm2, %ymm4           #  1     0     4      OPC=vorps_ymm_ymm_ymm        
  vpunpckldq %ymm2, %ymm2, %ymm11     #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vandpd %ymm4, %ymm2, %ymm1          #  3     0x8   4      OPC=vandpd_ymm_ymm_ymm       
  vpunpcklqdq %ymm11, %ymm11, %ymm10  #  4     0xc   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhps %ymm1, %ymm2, %ymm0       #  5     0x11  4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpckhps %ymm10, %ymm0, %ymm1      #  6     0x15  5      OPC=vunpckhps_ymm_ymm_ymm    
  retq                                #  7     0x1a  1      OPC=retq                     
                                                                                         
.size target, .-target
