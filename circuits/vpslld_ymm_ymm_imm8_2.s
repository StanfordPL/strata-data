  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vpaddd %ymm2, %ymm2, %ymm8    #  1     0    4      OPC=vpaddd_ymm_ymm_ymm  
  vpaddd %ymm8, %ymm8, %ymm10   #  2     0x4  5      OPC=vpaddd_ymm_ymm_ymm  
  vmaxpd %ymm10, %ymm10, %ymm1  #  3     0x9  5      OPC=vmaxpd_ymm_ymm_ymm  
  retq                          #  4     0xe  1      OPC=retq                
                                                                             
.size target, .-target
