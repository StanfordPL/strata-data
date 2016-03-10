  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm8                 #  1     0     4      OPC=vmovd_xmm_r32            
  vpunpcklqdq %ymm8, %ymm8, %ymm13  #  2     0x4   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhdq %xmm13, %xmm1, %xmm7   #  3     0x9   5      OPC=vpunpckhdq_xmm_xmm_xmm   
  movlhps %xmm7, %xmm1              #  4     0xe   3      OPC=movlhps_xmm_xmm          
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
