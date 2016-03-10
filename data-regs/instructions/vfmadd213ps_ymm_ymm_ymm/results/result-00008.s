  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vminps %ymm2, %ymm2, %ymm13       #  1     0     4      OPC=vminps_ymm_ymm_ymm       
  vsubps %ymm13, %ymm2, %ymm2       #  2     0x4   5      OPC=vsubps_ymm_ymm_ymm       
  vfmadd132ps %ymm1, %ymm3, %ymm13  #  3     0x9   5      OPC=vfmadd132ps_ymm_ymm_ymm  
  vsubps %ymm2, %ymm13, %ymm1       #  4     0xe   4      OPC=vsubps_ymm_ymm_ymm       
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
