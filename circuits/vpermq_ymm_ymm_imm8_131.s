  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpbroadcastq %xmm8, %ymm8           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm     
  vpmovsxdq %xmm8, %xmm15             #  3     0xa   5      OPC=vpmovsxdq_xmm_xmm        
  vunpckhpd %ymm15, %ymm8, %ymm15     #  4     0xf   5      OPC=vunpckhpd_ymm_ymm_ymm    
  vfmadd132ss %xmm2, %xmm15, %xmm9    #  5     0x14  5      OPC=vfmadd132ss_xmm_xmm_xmm  
  movhlps %xmm9, %xmm15               #  6     0x19  4      OPC=movhlps_xmm_xmm          
  vunpcklpd %ymm2, %ymm15, %ymm1      #  7     0x1d  4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                                #  8     0x21  1      OPC=retq                     
                                                                                         
.size target, .-target
