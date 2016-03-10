  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vunpcklps %ymm2, %ymm2, %ymm1   #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm1, %ymm2, %ymm9  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm2, %ymm9, %ymm9   #  3     0x8   4      OPC=vunpcklpd_ymm_ymm_ymm   
  vmovdqu %ymm9, %ymm1            #  4     0xc   5      OPC=vmovdqu_ymm_ymm         
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target
