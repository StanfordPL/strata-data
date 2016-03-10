  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vandnpd %ymm2, %ymm3, %ymm1   #  1     0     4      OPC=vandnpd_ymm_ymm_ymm  
  vandnpd %ymm3, %ymm2, %ymm14  #  2     0x4   4      OPC=vandnpd_ymm_ymm_ymm  
  vorpd %ymm1, %ymm14, %ymm13   #  3     0x8   4      OPC=vorpd_ymm_ymm_ymm    
  vmovdqu %ymm13, %ymm1         #  4     0xc   5      OPC=vmovdqu_ymm_ymm      
  retq                          #  5     0x11  1      OPC=retq                 
                                                                               
.size target, .-target
