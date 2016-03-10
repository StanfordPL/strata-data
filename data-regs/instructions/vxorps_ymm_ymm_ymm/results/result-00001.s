  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vandnpd %ymm3, %ymm2, %ymm0  #  1     0     4      OPC=vandnpd_ymm_ymm_ymm  
  vandnps %ymm2, %ymm3, %ymm1  #  2     0x4   4      OPC=vandnps_ymm_ymm_ymm  
  vpor %ymm1, %ymm0, %ymm1     #  3     0x8   4      OPC=vpor_ymm_ymm_ymm     
  orpd %xmm0, %xmm1            #  4     0xc   4      OPC=orpd_xmm_xmm         
  retq                         #  5     0x10  1      OPC=retq                 
                                                                              
.size target, .-target
