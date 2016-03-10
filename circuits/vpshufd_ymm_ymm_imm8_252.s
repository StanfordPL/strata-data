  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpunpckhdq %ymm2, %ymm2, %ymm9  #  1     0     4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovdqa %ymm2, %ymm1            #  2     0x4   4      OPC=vmovdqa_ymm_ymm         
  vunpckhpd %ymm1, %ymm9, %ymm14  #  3     0x8   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vunpcklps %ymm14, %ymm1, %ymm2  #  4     0xc   5      OPC=vunpcklps_ymm_ymm_ymm   
  vunpcklps %ymm14, %ymm2, %ymm1  #  5     0x11  5      OPC=vunpcklps_ymm_ymm_ymm   
  retq                            #  6     0x16  1      OPC=retq                    
                                                                                    
.size target, .-target
