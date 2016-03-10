  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm14  #  1     0     4      OPC=vmovshdup_xmm_xmm  
  pmovzxwq %xmm14, %xmm12  #  2     0x4   6      OPC=pmovzxwq_xmm_xmm   
  vmovdqa %xmm12, %xmm15   #  3     0xa   5      OPC=vmovdqa_xmm_xmm    
  vmovd %xmm15, %ebx       #  4     0xf   4      OPC=vmovd_r32_xmm      
  retq                     #  5     0x13  1      OPC=retq               
                                                                        
.size target, .-target
