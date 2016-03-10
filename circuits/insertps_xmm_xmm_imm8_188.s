  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  vmovddup %xmm1, %xmm7  #  1     0     4      OPC=vmovddup_xmm_xmm  
  vmovdqu %ymm7, %ymm8   #  2     0x4   4      OPC=vmovdqu_ymm_ymm   
  vmovq %xmm8, %xmm5     #  3     0x8   5      OPC=vmovq_xmm_xmm     
  movdqu %xmm5, %xmm1    #  4     0xd   4      OPC=movdqu_xmm_xmm    
  retq                   #  5     0x11  1      OPC=retq              
                                                                     
.size target, .-target
