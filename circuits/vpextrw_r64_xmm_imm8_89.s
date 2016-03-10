  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm3            #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  xorl %ebx, %ebx                   #  2     0x5   2      OPC=xorl_r32_r32       
  callq .move_128_064_xmm3_r12_r13  #  3     0x7   5      OPC=callq_label        
  cmovew %r13w, %bx                 #  4     0xc   5      OPC=cmovew_r16_r16     
  retq                              #  5     0x11  1      OPC=retq               
                                                                                 
.size target, .-target
