  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                        
.target:                            #        0    0      OPC=<label>                   
  vfnmsub132pd %ymm1, %ymm3, %ymm2  #  1     0    5      OPC=vfnmsub132pd_ymm_ymm_ymm  
  vminps %ymm2, %ymm3, %ymm11       #  2     0x5  4      OPC=vminps_ymm_ymm_ymm        
  vmaxps %ymm11, %ymm2, %ymm1       #  3     0x9  5      OPC=vmaxps_ymm_ymm_ymm        
  retq                              #  4     0xe  1      OPC=retq                      
                                                                                       
.size target, .-target
