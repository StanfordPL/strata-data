  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovapd %xmm1, %xmm11             #  1     0     4      OPC=vmovapd_xmm_xmm          
  vminps %xmm1, %xmm11, %xmm9       #  2     0x4   4      OPC=vminps_xmm_xmm_xmm       
  vpunpckhqdq %ymm11, %ymm9, %ymm8  #  3     0x8   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movd %xmm8, %ebx                  #  4     0xd   5      OPC=movd_r32_xmm             
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
