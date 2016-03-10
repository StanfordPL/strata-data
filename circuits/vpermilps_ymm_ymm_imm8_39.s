  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm14            #  1     0     4      OPC=vmovddup_ymm_ymm         
  vpunpckldq %ymm14, %ymm2, %ymm6   #  2     0x4   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckhdq %ymm14, %ymm2, %ymm10  #  3     0x9   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpckhps %ymm6, %ymm10, %ymm9    #  4     0xe   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm10, %ymm9, %ymm1  #  5     0x12  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  6     0x17  1      OPC=retq                     
                                                                                       
.size target, .-target
