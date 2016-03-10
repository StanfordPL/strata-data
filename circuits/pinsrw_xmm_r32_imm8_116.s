  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label     
  xchgw %bx, %r13w                  #  2     0x5   4      OPC=xchgw_r16_r16   
  callq .move_064_128_r12_r13_xmm2  #  3     0x9   5      OPC=callq_label     
  movdqu %xmm2, %xmm1               #  4     0xe   4      OPC=movdqu_xmm_xmm  
  retq                              #  5     0x12  1      OPC=retq            
                                                                              
.size target, .-target
