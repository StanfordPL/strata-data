  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  xorq %rbx, %rbx                                 #  1     0     3      OPC=xorq_r64_r64      
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label       
  pmovzxwq %xmm10, %xmm2                          #  3     0x8   6      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13                #  4     0xe   5      OPC=callq_label       
  cmovew %r13w, %bx                               #  5     0x13  5      OPC=cmovew_r16_r16    
  retq                                            #  6     0x18  1      OPC=retq              
                                                                                              
.size target, .-target
