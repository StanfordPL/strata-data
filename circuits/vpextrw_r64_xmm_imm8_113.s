  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  movq $0x40, %rbx                #  1     0     10     OPC=movq_r64_imm64    
  pmovzxwq %xmm1, %xmm1           #  2     0xa   5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  3     0xf   5      OPC=callq_label       
  xchgw %r9w, %bx                 #  4     0x14  4      OPC=xchgw_r16_r16     
  retq                            #  5     0x18  1      OPC=retq              
                                                                              
.size target, .-target
