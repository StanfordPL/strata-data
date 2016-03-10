  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovshdup %ymm3, %ymm8            #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vpunpckldq %ymm8, %ymm2, %ymm9    #  2     0x4   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpckhps %ymm9, %ymm3, %ymm3     #  3     0x9   5      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm3, %ymm2, %ymm14  #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vminpd %ymm14, %ymm14, %ymm1      #  5     0x12  5      OPC=vminpd_ymm_ymm_ymm       
  retq                              #  6     0x17  1      OPC=retq                     
                                                                                       
.size target, .-target
