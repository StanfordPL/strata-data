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
  vmovsd %xmm9, %xmm8, %xmm8          #  3     0x9   5      OPC=vmovsd_xmm_xmm_xmm     
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xe   5      OPC=callq_label            
  retq                                #  5     0x13  1      OPC=retq                   
                                                                                       
.size target, .-target
