  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm13               #  1     0     4      OPC=vmovd_xmm_r32            
  vmovaps %xmm1, %xmm8             #  2     0x4   4      OPC=vmovaps_xmm_xmm          
  vbroadcastss %xmm1, %ymm0        #  3     0x8   5      OPC=vbroadcastss_ymm_xmm     
  vpunpckhqdq %ymm0, %ymm8, %ymm5  #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckldq %ymm13, %ymm5, %ymm3  #  5     0x11  5      OPC=vpunpckldq_ymm_ymm_ymm   
  movlhps %xmm3, %xmm1             #  6     0x16  3      OPC=movlhps_xmm_xmm          
  retq                             #  7     0x19  1      OPC=retq                     
                                                                                      
.size target, .-target
