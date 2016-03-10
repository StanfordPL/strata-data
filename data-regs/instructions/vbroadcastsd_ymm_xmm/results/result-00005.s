  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm2        #  2     0x5   5      OPC=callq_label            
  vmaxps %xmm2, %xmm2, %xmm13           #  3     0xa   4      OPC=vmaxps_xmm_xmm_xmm     
  movlhps %xmm13, %xmm13                #  4     0xe   4      OPC=movlhps_xmm_xmm        
  vunpcklpd %xmm2, %xmm13, %xmm12       #  5     0x12  4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x16  5      OPC=callq_label            
  retq                                  #  7     0x1b  1      OPC=retq                   
                                                                                         
.size target, .-target
