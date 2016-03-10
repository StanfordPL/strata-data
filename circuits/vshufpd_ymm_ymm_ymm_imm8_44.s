  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  movdqu %xmm3, %xmm7              #  1     0    4      OPC=movdqu_xmm_xmm           
  vpunpckhqdq %ymm3, %ymm2, %ymm1  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movapd %xmm2, %xmm1              #  3     0x8  4      OPC=movapd_xmm_xmm           
  movlhps %xmm7, %xmm1             #  4     0xc  3      OPC=movlhps_xmm_xmm          
  retq                             #  5     0xf  1      OPC=retq                     
                                                                                     
.size target, .-target
