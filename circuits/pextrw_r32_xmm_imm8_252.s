  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm13, %ymm6              #  2     0x5   5      OPC=vpmovzxwd_ymm_xmm  
  pmovzxwq %xmm6, %xmm6                #  3     0xa   5      OPC=pmovzxwq_xmm_xmm   
  movq %xmm6, %rbx                     #  4     0xf   5      OPC=movq_r64_xmm       
  retq                                 #  5     0x14  1      OPC=retq               
                                                                                    
.size target, .-target
