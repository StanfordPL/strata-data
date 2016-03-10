  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vcvttss2sil %xmm3, %r12d         #  1     0     4      OPC=vcvttss2sil_r32_xmm      
  vmovsldup %ymm2, %ymm5           #  2     0x4   4      OPC=vmovsldup_ymm_ymm        
  vpunpckhdq %ymm3, %ymm5, %ymm1   #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckldq %ymm3, %ymm5, %ymm2   #  4     0xc   4      OPC=vpunpckldq_ymm_ymm_ymm   
  cvtsi2sdl %r12d, %xmm1           #  5     0x10  5      OPC=cvtsi2sdl_xmm_r32        
  vpunpckhqdq %ymm1, %ymm2, %ymm1  #  6     0x15  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  7     0x19  1      OPC=retq                     
                                                                                      
.size target, .-target
