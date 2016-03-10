  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  movq $0x80, %rbx                  #  1     0     10     OPC=movq_r64_imm64    
  pmovzxwq %xmm1, %xmm3             #  2     0xa   5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  3     0xf   5      OPC=callq_label       
  xorw %bx, %bx                     #  4     0x14  3      OPC=xorw_r16_r16      
  adcw %r13w, %bx                   #  5     0x17  4      OPC=adcw_r16_r16      
  retq                              #  6     0x1b  1      OPC=retq              
                                                                                
.size target, .-target
