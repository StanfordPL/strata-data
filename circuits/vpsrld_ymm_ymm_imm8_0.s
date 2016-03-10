  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxps %ymm2, %ymm2, %ymm5  #  1     0    4      OPC=vmaxps_ymm_ymm_ymm  
  vmovupd %ymm5, %ymm1        #  2     0x4  4      OPC=vmovupd_ymm_ymm     
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
