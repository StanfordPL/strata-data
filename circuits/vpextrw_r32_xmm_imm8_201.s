  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                 
.target:                               #        0    0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm3               #  1     0    5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_64_xmm3_xmm12_xmm13  #  2     0x5  5      OPC=callq_label        
  vmovq %xmm13, %rbx                   #  3     0xa  5      OPC=vmovq_r64_xmm      
  retq                                 #  4     0xf  1      OPC=retq               
                                                                                   
.size target, .-target
