  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovddup %ymm3, %ymm1            #  1     0     4      OPC=vmovddup_ymm_ymm         
  vaddpd %ymm3, %ymm1, %ymm4       #  2     0x4   4      OPC=vaddpd_ymm_ymm_ymm       
  vmovddup %ymm2, %ymm9            #  3     0x8   4      OPC=vmovddup_ymm_ymm         
  vaddpd %ymm2, %ymm9, %ymm7       #  4     0xc   4      OPC=vaddpd_ymm_ymm_ymm       
  vpunpckhqdq %ymm4, %ymm7, %ymm1  #  5     0x10  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
