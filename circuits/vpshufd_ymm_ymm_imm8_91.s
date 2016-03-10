  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovshdup %ymm2, %ymm12           #  1     0    4      OPC=vmovshdup_ymm_ymm        
  vunpckhps %ymm2, %ymm12, %ymm1    #  2     0x4  4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm12, %ymm1, %ymm1  #  3     0x8  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
