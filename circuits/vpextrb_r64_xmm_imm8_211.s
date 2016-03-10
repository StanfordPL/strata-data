  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpmovzxbq %xmm1, %ymm3                #  1     0     5      OPC=vpmovzxbq_ymm_xmm      
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm13, %xmm13, %xmm0       #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovq %xmm0, %rbx                     #  4     0xf   5      OPC=vmovq_r64_xmm          
  retq                                  #  5     0x14  1      OPC=retq                   
                                                                                         
.size target, .-target
