  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %xmm3              #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  vmovmskpd %xmm3, %rbx                #  3     0xa   4      OPC=vmovmskpd_r64_xmm  
  callq .move_128_064_xmm3_r8_r9       #  4     0xe   5      OPC=callq_label        
  addw %r9w, %bx                       #  5     0x13  4      OPC=addw_r16_r16       
  retq                                 #  6     0x17  1      OPC=retq               
                                                                                    
.size target, .-target
