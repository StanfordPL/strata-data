  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm1              #  1     0     4      OPC=vmovshdup_ymm_ymm       
  callq .move_128_064_xmm1_r8_r9      #  2     0x4   5      OPC=callq_label             
  callq .move_r9b_to_byte_14_of_ymm1  #  3     0x9   5      OPC=callq_label             
  vunpckhpd %ymm2, %ymm2, %ymm4       #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpckldq %ymm1, %ymm1, %ymm13     #  5     0x12  4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckldq %ymm13, %ymm4, %ymm1     #  6     0x16  5      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                                #  7     0x1b  1      OPC=retq                    
                                                                                        
.size target, .-target
