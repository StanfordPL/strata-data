  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vpmovzxbq %xmm1, %xmm14            #  1     0     5      OPC=vpmovzxbq_xmm_xmm      
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm14, %xmm9, %xmm8     #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  pmovzxbq %xmm8, %xmm1              #  4     0xf   6      OPC=pmovzxbq_xmm_xmm       
  retq                               #  5     0x15  1      OPC=retq                   
                                                                                      
.size target, .-target
