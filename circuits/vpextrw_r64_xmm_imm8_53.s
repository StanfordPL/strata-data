  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  xorq %rbx, %rbx                   #  1     0     3      OPC=xorq_r64_r64             
  vpunpckhqdq %xmm1, %xmm1, %xmm5   #  2     0x3   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  setnz %bl                         #  3     0x7   3      OPC=setnz_r8                 
  pmovzxwq %xmm5, %xmm2             #  4     0xa   5      OPC=pmovzxwq_xmm_xmm         
  callq .move_128_064_xmm2_r10_r11  #  5     0xf   5      OPC=callq_label              
  cmovncw %r11w, %bx                #  6     0x14  5      OPC=cmovncw_r16_r16          
  retq                              #  7     0x19  1      OPC=retq                     
                                                                                       
.size target, .-target
