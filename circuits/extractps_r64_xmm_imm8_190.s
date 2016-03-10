  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vminss %xmm1, %xmm1, %xmm12        #  1     0     4      OPC=vminss_xmm_xmm_xmm       
  vpunpckhqdq %xmm1, %xmm1, %xmm14   #  2     0x4   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovhlps %xmm14, %xmm1, %xmm15     #  3     0x8   5      OPC=vmovhlps_xmm_xmm_xmm     
  vpunpckhqdq %ymm12, %ymm15, %ymm4  #  4     0xd   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movd %xmm4, %ebx                   #  5     0x12  4      OPC=movd_r32_xmm             
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
