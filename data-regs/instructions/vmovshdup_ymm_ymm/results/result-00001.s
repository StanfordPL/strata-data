  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckldq %ymm2, %ymm2, %ymm6    #  1     0    4      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpckhps %ymm2, %ymm2, %ymm14    #  2     0x4  4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm14, %ymm6, %ymm1  #  3     0x8  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
