  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  unpckhpd %xmm2, %xmm2                 #  1     0     4      OPC=unpckhpd_xmm_xmm       
  callq .move_128_64_xmm2_xmm10_xmm11   #  2     0x4   5      OPC=callq_label            
  callq .move_128_256_xmm10_xmm11_ymm1  #  3     0x9   5      OPC=callq_label            
  vunpcklpd %ymm2, %ymm1, %ymm1         #  4     0xe   4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                  #  5     0x12  1      OPC=retq                   
                                                                                         
.size target, .-target
