  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm9, %xmm3, %xmm13     #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  vpsubd %ymm13, %ymm13, %ymm1       #  3     0xa   5      OPC=vpsubd_ymm_ymm_ymm     
  vsqrtss %xmm1, %xmm8, %xmm1        #  4     0xf   4      OPC=vsqrtss_xmm_xmm_xmm    
  retq                               #  5     0x13  1      OPC=retq                   
                                                                                      
.size target, .-target
