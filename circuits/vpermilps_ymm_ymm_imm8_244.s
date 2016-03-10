  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovshdup %ymm2, %ymm3            #  1     0    4      OPC=vmovshdup_ymm_ymm        
  vunpckhps %ymm3, %ymm3, %ymm10    #  2     0x4  4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm10, %ymm2, %ymm1  #  3     0x8  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
