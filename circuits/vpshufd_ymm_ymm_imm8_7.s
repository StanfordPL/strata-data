  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vpunpckldq %ymm2, %ymm2, %ymm10               #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  paddd %xmm6, %xmm2                            #  3     0x9   4      OPC=paddd_xmm_xmm            
  vmovshdup %ymm2, %ymm9                        #  4     0xd   4      OPC=vmovshdup_ymm_ymm        
  vpunpckhdq %ymm10, %ymm9, %ymm9               #  5     0x11  5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpcklqdq %ymm10, %ymm9, %ymm1              #  6     0x16  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movss %xmm7, %xmm1                            #  7     0x1b  4      OPC=movss_xmm_xmm            
  retq                                          #  8     0x1f  1      OPC=retq                     
                                                                                                   
.size target, .-target
