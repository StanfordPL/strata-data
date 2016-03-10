  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm7          #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  2     0x5   5      OPC=callq_label        
  movmskpd %xmm7, %rbx            #  3     0xa   4      OPC=movmskpd_r64_xmm   
  addw %r9w, %bx                  #  4     0xe   4      OPC=addw_r16_r16       
  retq                            #  5     0x12  1      OPC=retq               
                                                                               
.size target, .-target
