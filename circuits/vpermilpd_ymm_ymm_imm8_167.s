  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  movhlps %xmm2, %xmm2                #  1     0     3      OPC=movhlps_xmm_xmm          
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x3   5      OPC=callq_label              
  vmaxss %xmm2, %xmm9, %xmm9          #  3     0x8   4      OPC=vmaxss_xmm_xmm_xmm       
  vcvtss2sd %xmm9, %xmm2, %xmm13      #  4     0xc   5      OPC=vcvtss2sd_xmm_xmm_xmm    
  vunpcklpd %ymm2, %ymm13, %ymm6      #  5     0x11  4      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm6, %ymm2, %ymm1     #  6     0x15  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                #  7     0x19  1      OPC=retq                     
                                                                                         
.size target, .-target
