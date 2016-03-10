  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm2          #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  2     0x5   5      OPC=callq_label        
  xorq %rbx, %rbx                 #  3     0xa   3      OPC=xorq_r64_r64       
  xaddw %r9w, %bx                 #  4     0xd   5      OPC=xaddw_r16_r16      
  retq                            #  5     0x12  1      OPC=retq               
                                                                               
.size target, .-target
