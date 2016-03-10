  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vorpd %xmm2, %xmm2, %xmm6    #  1     0     4      OPC=vorpd_xmm_xmm_xmm   
  vmovdqa %xmm1, %xmm13        #  2     0x4   4      OPC=vmovdqa_xmm_xmm     
  vsubps %ymm6, %ymm13, %ymm6  #  3     0x8   4      OPC=vsubps_ymm_ymm_ymm  
  movdqa %xmm6, %xmm1          #  4     0xc   4      OPC=movdqa_xmm_xmm      
  retq                         #  5     0x10  1      OPC=retq                
                                                                             
.size target, .-target
