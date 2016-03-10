  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label       
  pmovzxbd %xmm8, %xmm2              #  2     0x5   6      OPC=pmovzxbd_xmm_xmm  
  vmovddup %ymm2, %ymm1              #  3     0xb   4      OPC=vmovddup_ymm_ymm  
  movddup %xmm9, %xmm1               #  4     0xf   5      OPC=movddup_xmm_xmm   
  retq                               #  5     0x14  1      OPC=retq              
                                                                                 
.size target, .-target
