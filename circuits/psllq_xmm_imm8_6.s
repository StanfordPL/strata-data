  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  paddq %xmm1, %xmm1             #  1     0     4      OPC=paddq_xmm_xmm       
  vpaddq %xmm1, %xmm1, %xmm12    #  2     0x4   4      OPC=vpaddq_xmm_xmm_xmm  
  vmovdqu %ymm12, %ymm12         #  3     0x8   5      OPC=vmovdqu_ymm_ymm     
  vpaddq %xmm12, %xmm12, %xmm6   #  4     0xd   5      OPC=vpaddq_xmm_xmm_xmm  
  vmaxps %xmm6, %xmm6, %xmm12    #  5     0x12  4      OPC=vmaxps_xmm_xmm_xmm  
  vpaddq %xmm12, %xmm12, %xmm12  #  6     0x16  5      OPC=vpaddq_xmm_xmm_xmm  
  vpaddq %xmm12, %xmm12, %xmm14  #  7     0x1b  5      OPC=vpaddq_xmm_xmm_xmm  
  vpaddq %xmm14, %xmm14, %xmm12  #  8     0x20  5      OPC=vpaddq_xmm_xmm_xmm  
  movdqa %xmm12, %xmm1           #  9     0x25  5      OPC=movdqa_xmm_xmm      
  retq                           #  10    0x2a  1      OPC=retq                
                                                                               
.size target, .-target
