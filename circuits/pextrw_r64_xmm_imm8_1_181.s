  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  pmovsxwq %xmm6, %xmm1                         #  2     0x5   5      OPC=pmovsxwq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9                #  3     0xa   5      OPC=callq_label       
  movzbq %r9b, %rbx                             #  4     0xf   4      OPC=movzbq_r64_r8     
  xchgw %r9w, %bx                               #  5     0x13  4      OPC=xchgw_r16_r16     
  retq                                          #  6     0x17  1      OPC=retq              
                                                                                            
.size target, .-target
