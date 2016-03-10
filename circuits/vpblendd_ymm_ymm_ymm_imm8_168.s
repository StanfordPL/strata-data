  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm1             #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckldq %ymm3, %ymm1, %ymm7     #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  movlhps %xmm2, %xmm7               #  3     0x8   3      OPC=movlhps_xmm_xmm         
  vpunpckhdq %ymm3, %ymm1, %ymm1     #  4     0xb   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  callq .move_128_064_xmm3_r8_r9     #  5     0xf   5      OPC=callq_label             
  callq .move_r8b_to_byte_2_of_ymm1  #  6     0x14  5      OPC=callq_label             
  cvtsi2ssl %r8d, %xmm7              #  7     0x19  5      OPC=cvtsi2ssl_xmm_r32       
  vunpckhpd %ymm1, %ymm7, %ymm1      #  8     0x1e  4      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                               #  9     0x22  1      OPC=retq                    
                                                                                       
.size target, .-target
