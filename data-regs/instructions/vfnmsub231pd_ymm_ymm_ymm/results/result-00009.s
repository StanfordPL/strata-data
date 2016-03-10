  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                        
.target:                            #        0    0      OPC=<label>                   
  vminps %ymm1, %ymm1, %ymm0        #  1     0    4      OPC=vminps_ymm_ymm_ymm        
  vfnmsub132pd %ymm3, %ymm0, %ymm2  #  2     0x4  5      OPC=vfnmsub132pd_ymm_ymm_ymm  
  vmaxps %ymm2, %ymm2, %ymm1        #  3     0x9  4      OPC=vmaxps_ymm_ymm_ymm        
  retq                              #  4     0xd  1      OPC=retq                      
                                                                                       
.size target, .-target
