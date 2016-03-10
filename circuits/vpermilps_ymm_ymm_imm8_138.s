  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpunpckhdq %ymm2, %ymm2, %ymm9      #  1     0     4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vmovsldup %ymm2, %ymm11             #  2     0x4   4      OPC=vmovsldup_ymm_ymm        
  callq .move_128_064_xmm2_r8_r9      #  3     0x8   5      OPC=callq_label              
  vpunpckldq %ymm9, %ymm11, %ymm6     #  4     0xd   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpcklps %ymm9, %ymm6, %ymm1       #  5     0x12  5      OPC=vunpcklps_ymm_ymm_ymm    
  callq .move_r9b_to_byte_13_of_ymm1  #  6     0x17  5      OPC=callq_label              
  vpunpcklqdq %ymm1, %ymm9, %ymm1     #  7     0x1c  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                #  8     0x20  1      OPC=retq                     
                                                                                         
.size target, .-target
