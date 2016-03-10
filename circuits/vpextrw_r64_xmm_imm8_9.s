  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  pmovzxwq %xmm1, %xmm3                #  1     0     5      OPC=pmovzxwq_xmm_xmm  
  vmovaps %xmm3, %xmm1                 #  2     0x5   4      OPC=vmovaps_xmm_xmm   
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0x9   5      OPC=callq_label       
  vmovq %xmm11, %rbx                   #  4     0xe   5      OPC=vmovq_r64_xmm     
  retq                                 #  5     0x13  1      OPC=retq              
                                                                                   
.size target, .-target
