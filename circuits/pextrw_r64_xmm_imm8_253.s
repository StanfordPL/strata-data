  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vpmovzxwq %xmm13, %xmm1              #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm     
  vmovhlps %xmm1, %xmm12, %xmm1        #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm  
  movq %xmm1, %rbx                     #  4     0xe   5      OPC=movq_r64_xmm          
  retq                                 #  5     0x13  1      OPC=retq                  
                                                                                       
.size target, .-target
