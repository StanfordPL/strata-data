  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  vmovshdup %xmm1, %xmm3             #  1     0     4      OPC=vmovshdup_xmm_xmm       
  vaddss %xmm1, %xmm3, %xmm14        #  2     0x4   4      OPC=vaddss_xmm_xmm_xmm      
  vphaddd %xmm3, %xmm14, %xmm15      #  3     0x8   5      OPC=vphaddd_xmm_xmm_xmm     
  vpunpckhdq %ymm15, %ymm14, %ymm15  #  4     0xd   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovd %xmm15, %ebx                 #  5     0x12  4      OPC=vmovd_r32_xmm           
  retq                               #  6     0x16  1      OPC=retq                    
                                                                                       
.size target, .-target
