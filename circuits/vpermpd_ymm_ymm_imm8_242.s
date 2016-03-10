  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vunpckhpd %ymm2, %ymm2, %ymm1         #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm    
  cvtdq2pd %xmm1, %xmm1                 #  2     0x4   4      OPC=cvtdq2pd_xmm_xmm         
  vmaxps %ymm2, %ymm1, %ymm4            #  3     0x8   4      OPC=vmaxps_ymm_ymm_ymm       
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xc   5      OPC=callq_label              
  movapd %xmm11, %xmm1                  #  5     0x11  5      OPC=movapd_xmm_xmm           
  vpunpcklqdq %xmm4, %xmm2, %xmm14      #  6     0x16  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  unpcklpd %xmm14, %xmm1                #  7     0x1a  5      OPC=unpcklpd_xmm_xmm         
  retq                                  #  8     0x1f  1      OPC=retq                     
                                                                                           
.size target, .-target
