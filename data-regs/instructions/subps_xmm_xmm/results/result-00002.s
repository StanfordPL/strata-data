  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movddup %xmm2, %xmm15        #  1     0     5      OPC=movddup_xmm_xmm     
  vmovdqa %xmm1, %xmm3         #  2     0x5   4      OPC=vmovdqa_xmm_xmm     
  vmaxss %xmm15, %xmm2, %xmm6  #  3     0x9   5      OPC=vmaxss_xmm_xmm_xmm  
  vsubps %ymm6, %ymm3, %ymm3   #  4     0xe   4      OPC=vsubps_ymm_ymm_ymm  
  movaps %xmm3, %xmm1          #  5     0x12  3      OPC=movaps_xmm_xmm      
  retq                         #  6     0x15  1      OPC=retq                
                                                                             
.size target, .-target
