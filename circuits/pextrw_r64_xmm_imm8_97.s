  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  xorl %ebx, %ebx                   #  1     0     2      OPC=xorl_r32_r32      
  pmovzxwq %xmm1, %xmm2             #  2     0x2   5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  3     0x7   5      OPC=callq_label       
  adcw %r13w, %bx                   #  4     0xc   4      OPC=adcw_r16_r16      
  retq                              #  5     0x10  1      OPC=retq              
                                                                                
.size target, .-target
