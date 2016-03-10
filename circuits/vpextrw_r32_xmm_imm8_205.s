  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm11, %xmm1               #  2     0x5   6      OPC=pmovzxwq_xmm_xmm  
  xorq %rbx, %rbx                      #  3     0xb   3      OPC=xorq_r64_r64      
  callq .move_128_064_xmm1_r12_r13     #  4     0xe   5      OPC=callq_label       
  xaddw %bx, %r13w                     #  5     0x13  5      OPC=xaddw_r16_r16     
  retq                                 #  6     0x18  1      OPC=retq              
                                                                                   
.size target, .-target
