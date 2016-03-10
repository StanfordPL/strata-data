  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_256_128_ymm1_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vunpckhpd %xmm9, %xmm8, %xmm2       #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm    
  vpunpckhqdq %xmm9, %xmm1, %xmm6     #  3     0xa   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vandnps %ymm6, %ymm2, %ymm12        #  4     0xf   4      OPC=vandnps_ymm_ymm_ymm      
  vunpcklpd %xmm9, %xmm12, %xmm0      #  5     0x13  5      OPC=vunpcklpd_xmm_xmm_xmm    
  vpunpckhqdq %xmm2, %xmm0, %xmm1     #  6     0x18  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                #  7     0x1c  1      OPC=retq                     
                                                                                         
.size target, .-target
