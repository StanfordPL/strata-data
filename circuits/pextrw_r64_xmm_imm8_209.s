  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm2            #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label        
  xorq %rbx, %rbx                   #  3     0xa   3      OPC=xorq_r64_r64       
  xchgw %bx, %r13w                  #  4     0xd   4      OPC=xchgw_r16_r16      
  retq                              #  5     0x11  1      OPC=retq               
                                                                                 
.size target, .-target
