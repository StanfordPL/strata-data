  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovq %xmm3, %xmm11               #  1     0     4      OPC=vmovq_xmm_xmm            
  vpunpckhdq %ymm3, %ymm11, %ymm4   #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhqdq %ymm4, %ymm2, %ymm11  #  3     0x8   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vphaddd %ymm2, %ymm4, %ymm1       #  4     0xc   5      OPC=vphaddd_ymm_ymm_ymm      
  vpunpcklwd %ymm1, %ymm11, %ymm1   #  5     0x11  4      OPC=vpunpcklwd_ymm_ymm_ymm   
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
