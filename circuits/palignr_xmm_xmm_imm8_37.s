  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  vmovddup %xmm1, %xmm8  #  1     0     4      OPC=vmovddup_xmm_xmm  
  vmovdqa %xmm8, %xmm3   #  2     0x4   5      OPC=vmovdqa_xmm_xmm   
  xorpd %xmm3, %xmm1     #  3     0x9   4      OPC=xorpd_xmm_xmm     
  movddup %xmm1, %xmm1   #  4     0xd   4      OPC=movddup_xmm_xmm   
  retq                   #  5     0x11  1      OPC=retq              
                                                                     
.size target, .-target
