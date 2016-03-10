  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vandnpd %ymm3, %ymm2, %ymm12  #  1     0     4      OPC=vandnpd_ymm_ymm_ymm  
  vandnps %ymm2, %ymm3, %ymm1   #  2     0x4   4      OPC=vandnps_ymm_ymm_ymm  
  vorpd %ymm12, %ymm1, %ymm5    #  3     0x8   5      OPC=vorpd_ymm_ymm_ymm    
  vmovdqa %ymm5, %ymm1          #  4     0xd   4      OPC=vmovdqa_ymm_ymm      
  retq                          #  5     0x11  1      OPC=retq                 
                                                                               
.size target, .-target
