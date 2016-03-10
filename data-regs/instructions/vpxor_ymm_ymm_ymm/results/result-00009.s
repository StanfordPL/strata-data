  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vandnps %ymm3, %ymm2, %ymm6   #  1     0     4      OPC=vandnps_ymm_ymm_ymm  
  vandnpd %ymm2, %ymm3, %ymm14  #  2     0x4   4      OPC=vandnpd_ymm_ymm_ymm  
  por %xmm14, %xmm6             #  3     0x8   5      OPC=por_xmm_xmm          
  vorps %ymm6, %ymm14, %ymm1    #  4     0xd   4      OPC=vorps_ymm_ymm_ymm    
  retq                          #  5     0x11  1      OPC=retq                 
                                                                               
.size target, .-target
