  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vmovd %ebx, %xmm6             #  1     0     4      OPC=vmovd_xmm_r32         
  vmovdqa %xmm2, %xmm15         #  2     0x4   4      OPC=vmovdqa_xmm_xmm       
  vmovdqa %ymm15, %ymm9         #  3     0x8   5      OPC=vmovdqa_ymm_ymm       
  vpbroadcastd %xmm6, %ymm1     #  4     0xd   5      OPC=vpbroadcastd_ymm_xmm  
  vaddss %xmm6, %xmm15, %xmm12  #  5     0x12  4      OPC=vaddss_xmm_xmm_xmm    
  movss %xmm1, %xmm12           #  6     0x16  5      OPC=movss_xmm_xmm         
  vmovss %xmm12, %xmm9, %xmm1   #  7     0x1b  5      OPC=vmovss_xmm_xmm_xmm    
  retq                          #  8     0x20  1      OPC=retq                  
                                                                                
.size target, .-target
