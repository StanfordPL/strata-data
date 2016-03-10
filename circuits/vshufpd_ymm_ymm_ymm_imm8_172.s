  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm3, %ymm2, %ymm1  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movq %xmm2, %xmm1                #  2     0x4   4      OPC=movq_xmm_xmm             
  vpor %xmm3, %xmm3, %xmm9         #  3     0x8   4      OPC=vpor_xmm_xmm_xmm         
  unpcklpd %xmm9, %xmm1            #  4     0xc   5      OPC=unpcklpd_xmm_xmm         
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
