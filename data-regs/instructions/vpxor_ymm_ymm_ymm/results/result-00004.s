  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vmovups %ymm2, %ymm11          #  1     0     4      OPC=vmovups_ymm_ymm      
  vmovdqu %ymm3, %ymm2           #  2     0x4   4      OPC=vmovdqu_ymm_ymm      
  vandnpd %ymm11, %ymm2, %ymm8   #  3     0x8   5      OPC=vandnpd_ymm_ymm_ymm  
  vandnpd %ymm3, %ymm11, %ymm10  #  4     0xd   4      OPC=vandnpd_ymm_ymm_ymm  
  vorpd %ymm8, %ymm10, %ymm1     #  5     0x11  5      OPC=vorpd_ymm_ymm_ymm    
  retq                           #  6     0x16  1      OPC=retq                 
                                                                                
.size target, .-target
