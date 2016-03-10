  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  vmovshdup %xmm8, %xmm7             #  2     0x5   5      OPC=vmovshdup_xmm_xmm  
  pmovzxwq %xmm7, %xmm0              #  3     0xa   5      OPC=pmovzxwq_xmm_xmm   
  vmovq %xmm0, %rbx                  #  4     0xf   5      OPC=vmovq_r64_xmm      
  retq                               #  5     0x14  1      OPC=retq               
                                                                                  
.size target, .-target
