  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm13, %xmm12, %xmm15    #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm15, %xmm5       #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm   
  vunpcklpd %ymm15, %ymm5, %ymm7       #  4     0xe   5      OPC=vunpcklpd_ymm_ymm_ymm   
  movups %xmm7, %xmm1                  #  5     0x13  3      OPC=movups_xmm_xmm          
  retq                                 #  6     0x16  1      OPC=retq                    
                                                                                         
.size target, .-target
