  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm2            #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  xorq %rbx, %rbx                   #  2     0x5   3      OPC=xorq_r64_r64       
  callq .move_128_064_xmm2_r12_r13  #  3     0x8   5      OPC=callq_label        
  cmovngw %r13w, %bx                #  4     0xd   5      OPC=cmovngw_r16_r16    
  retq                              #  5     0x12  1      OPC=retq               
                                                                                 
.size target, .-target
