  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  vpor %xmm9, %xmm9, %xmm12             #  2     0x5   5      OPC=vpor_xmm_xmm_xmm       
  vminps %xmm8, %xmm8, %xmm15           #  3     0xa   5      OPC=vminps_xmm_xmm_xmm     
  vunpckhpd %ymm15, %ymm12, %ymm13      #  4     0xf   5      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x14  5      OPC=callq_label            
  retq                                  #  6     0x19  1      OPC=retq                   
                                                                                         
.size target, .-target
