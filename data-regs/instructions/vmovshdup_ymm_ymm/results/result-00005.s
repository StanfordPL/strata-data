  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vorpd %ymm2, %ymm2, %ymm4       #  1     0     4      OPC=vorpd_ymm_ymm_ymm       
  vpunpckhdq %ymm4, %ymm4, %ymm8  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm2, %ymm4, %ymm9   #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhpd %ymm8, %ymm9, %ymm10  #  4     0xc   5      OPC=vunpckhpd_ymm_ymm_ymm   
  vmovdqa %ymm10, %ymm1           #  5     0x11  5      OPC=vmovdqa_ymm_ymm         
  retq                            #  6     0x16  1      OPC=retq                    
                                                                                    
.size target, .-target
