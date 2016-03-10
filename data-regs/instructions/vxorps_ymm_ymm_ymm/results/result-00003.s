  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vmovdqa %ymm2, %ymm4          #  1     0     4      OPC=vmovdqa_ymm_ymm      
  vorpd %ymm4, %ymm3, %ymm12    #  2     0x4   4      OPC=vorpd_ymm_ymm_ymm    
  vpand %ymm4, %ymm3, %ymm2     #  3     0x8   4      OPC=vpand_ymm_ymm_ymm    
  vandnps %ymm12, %ymm2, %ymm1  #  4     0xc   5      OPC=vandnps_ymm_ymm_ymm  
  retq                          #  5     0x11  1      OPC=retq                 
                                                                               
.size target, .-target
