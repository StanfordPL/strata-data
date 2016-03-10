  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovups %ymm2, %ymm14             #  1     0     4      OPC=vmovups_ymm_ymm         
  vunpcklps %ymm14, %ymm2, %ymm15   #  2     0x4   5      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm2, %ymm15, %ymm10  #  3     0x9   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm10, %ymm2, %ymm1    #  4     0xd   5      OPC=vunpcklps_ymm_ymm_ymm   
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target
