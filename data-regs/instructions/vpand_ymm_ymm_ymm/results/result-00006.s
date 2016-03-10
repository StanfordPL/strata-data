  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vandpd %ymm2, %ymm3, %ymm12  #  1     0    4      OPC=vandpd_ymm_ymm_ymm  
  vmovapd %ymm12, %ymm1        #  2     0x4  5      OPC=vmovapd_ymm_ymm     
  retq                         #  3     0x9  1      OPC=retq                
                                                                            
.size target, .-target
