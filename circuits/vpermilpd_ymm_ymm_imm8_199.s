  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovdqa %xmm2, %xmm4              #  1     0     4      OPC=vmovdqa_xmm_xmm          
  vunpcklpd %ymm2, %ymm4, %ymm0     #  2     0x4   4      OPC=vunpcklpd_ymm_ymm_ymm    
  vmaxps %ymm0, %ymm0, %ymm15       #  3     0x8   4      OPC=vmaxps_ymm_ymm_ymm       
  movdqa %xmm2, %xmm15              #  4     0xc   5      OPC=movdqa_xmm_xmm           
  vpunpckhqdq %ymm15, %ymm2, %ymm1  #  5     0x11  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target
