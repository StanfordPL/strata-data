  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  punpcklwd %xmm3, %xmm2            #  1     0     4      OPC=punpcklwd_xmm_xmm        
  vbroadcastsd %xmm2, %ymm1         #  2     0x4   5      OPC=vbroadcastsd_ymm_xmm     
  vmulss %xmm3, %xmm1, %xmm11       #  3     0x9   4      OPC=vmulss_xmm_xmm_xmm       
  vmovhlps %xmm2, %xmm2, %xmm6      #  4     0xd   4      OPC=vmovhlps_xmm_xmm_xmm     
  vpunpckhqdq %xmm6, %xmm11, %xmm1  #  5     0x11  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
