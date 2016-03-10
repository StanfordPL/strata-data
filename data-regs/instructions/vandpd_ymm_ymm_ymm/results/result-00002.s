  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  andps %xmm3, %xmm2          #  1     0    3      OPC=andps_xmm_xmm       
  vandps %ymm2, %ymm3, %ymm7  #  2     0x3  4      OPC=vandps_ymm_ymm_ymm  
  vmovupd %ymm7, %ymm1        #  3     0x7  4      OPC=vmovupd_ymm_ymm     
  retq                        #  4     0xb  1      OPC=retq                
                                                                           
.size target, .-target
