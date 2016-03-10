  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vmovlhps %xmm2, %xmm2, %xmm11  #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm  
  vmovdqu %xmm2, %xmm7           #  2     0x4   4      OPC=vmovdqu_xmm_xmm       
  movdqa %xmm1, %xmm7            #  3     0x8   4      OPC=movdqa_xmm_xmm        
  vsubps %ymm11, %ymm7, %ymm14   #  4     0xc   5      OPC=vsubps_ymm_ymm_ymm    
  movss %xmm14, %xmm1            #  5     0x11  5      OPC=movss_xmm_xmm         
  retq                           #  6     0x16  1      OPC=retq                  
                                                                                 
.size target, .-target
