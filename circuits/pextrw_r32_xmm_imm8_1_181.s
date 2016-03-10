  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  punpckhqdq %xmm1, %xmm1              #  1     0     4      OPC=punpckhqdq_xmm_xmm  
  vpmovzxwq %xmm1, %xmm1               #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm   
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0x9   5      OPC=callq_label         
  movq %xmm13, %rbx                    #  4     0xe   5      OPC=movq_r64_xmm        
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
