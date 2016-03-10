  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxbq %xmm10, %xmm3               #  2     0x5   6      OPC=pmovzxbq_xmm_xmm  
  movshdup %xmm3, %xmm1                #  3     0xb   4      OPC=movshdup_xmm_xmm  
  movshdup %xmm1, %xmm10               #  4     0xf   5      OPC=movshdup_xmm_xmm  
  movddup %xmm10, %xmm1                #  5     0x14  5      OPC=movddup_xmm_xmm   
  retq                                 #  6     0x19  1      OPC=retq              
                                                                                   
.size target, .-target
