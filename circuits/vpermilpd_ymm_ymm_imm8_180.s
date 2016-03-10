  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm9     #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklpd %ymm2, %ymm9, %ymm1       #  2     0x4   4      OPC=vunpcklpd_ymm_ymm_ymm    
  callq .move_byte_16_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label              
  callq .move_r8b_to_byte_0_of_ymm1   #  4     0xd   5      OPC=callq_label              
  movhlps %xmm1, %xmm1                #  5     0x12  3      OPC=movhlps_xmm_xmm          
  retq                                #  6     0x15  1      OPC=retq                     
                                                                                         
.size target, .-target
