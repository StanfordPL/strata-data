  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  pmovzxdq %xmm11, %xmm7               #  2     0x5   6      OPC=pmovzxdq_xmm_xmm   
  vpmovzxwq %xmm7, %xmm0               #  3     0xb   5      OPC=vpmovzxwq_xmm_xmm  
  vmovq %xmm0, %rbx                    #  4     0x10  5      OPC=vmovq_r64_xmm      
  retq                                 #  5     0x15  1      OPC=retq               
                                                                                    
.size target, .-target
