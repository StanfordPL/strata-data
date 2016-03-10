  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                  
.target:                         #        0    0      OPC=<label>             
  vpmovzxbq %xmm1, %ymm14        #  1     0    5      OPC=vpmovzxbq_ymm_xmm   
  vsubps %xmm14, %xmm14, %xmm15  #  2     0x5  5      OPC=vsubps_xmm_xmm_xmm  
  movddup %xmm15, %xmm1          #  3     0xa  5      OPC=movddup_xmm_xmm     
  retq                           #  4     0xf  1      OPC=retq                
                                                                              
.size target, .-target
