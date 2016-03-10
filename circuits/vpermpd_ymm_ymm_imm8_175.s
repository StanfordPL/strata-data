  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                     
.target:                              #        0    0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0    5      OPC=callq_label            
  movhlps %xmm9, %xmm2                #  2     0x5  4      OPC=movhlps_xmm_xmm        
  vunpcklpd %ymm2, %ymm2, %ymm1       #  3     0x9  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                #  4     0xd  1      OPC=retq                   
                                                                                      
.size target, .-target
