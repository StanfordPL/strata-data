  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxbq %xmm11, %xmm4                         #  2     0x5   5      OPC=vpmovzxbq_xmm_xmm  
  vmovapd %xmm4, %xmm0                            #  3     0xa   4      OPC=vmovapd_xmm_xmm    
  vmovq %xmm0, %rbx                               #  4     0xe   5      OPC=vmovq_r64_xmm      
  retq                                            #  5     0x13  1      OPC=retq               
                                                                                               
.size target, .-target
