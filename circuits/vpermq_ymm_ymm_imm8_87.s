  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vunpckhpd %ymm2, %ymm2, %ymm1       #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label            
  vpbroadcastq %xmm1, %ymm1           #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm   
  movhlps %xmm9, %xmm1                #  4     0xe   4      OPC=movhlps_xmm_xmm        
  retq                                #  5     0x12  1      OPC=retq                   
                                                                                       
.size target, .-target
