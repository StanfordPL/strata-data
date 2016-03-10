  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vandpd %ymm2, %ymm3, %ymm13                     #  1     0     4      OPC=vandpd_ymm_ymm_ymm       
  vpunpcklqdq %ymm3, %ymm2, %ymm1                 #  2     0x4   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label              
  vunpcklps %ymm13, %ymm1, %ymm8                  #  4     0xd   5      OPC=vunpcklps_ymm_ymm_ymm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label              
  movhlps %xmm2, %xmm1                            #  6     0x17  3      OPC=movhlps_xmm_xmm          
  retq                                            #  7     0x1a  1      OPC=retq                     
                                                                                                     
.size target, .-target
