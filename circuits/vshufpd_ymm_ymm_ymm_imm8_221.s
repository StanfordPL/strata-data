  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                     
.target:                              #        0    0      OPC=<label>                
  vunpckhpd %ymm3, %ymm2, %ymm1       #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_256_128_ymm3_xmm8_xmm9  #  2     0x4  5      OPC=callq_label            
  movlhps %xmm8, %xmm1                #  3     0x9  4      OPC=movlhps_xmm_xmm        
  retq                                #  4     0xd  1      OPC=retq                   
                                                                                      
.size target, .-target
