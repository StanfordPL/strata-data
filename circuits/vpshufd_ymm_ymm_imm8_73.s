  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm7      #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm7, %ymm1       #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm   
  callq .move_byte_28_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label             
  callq .move_r9b_to_byte_31_of_ymm1  #  4     0xd   5      OPC=callq_label             
  vunpcklpd %ymm2, %ymm1, %ymm1       #  5     0x12  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                                #  6     0x16  1      OPC=retq                    
                                                                                        
.size target, .-target
