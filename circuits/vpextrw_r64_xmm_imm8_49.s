  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  pmovzxwq %xmm1, %xmm1           #  1     0     5      OPC=pmovzxwq_xmm_xmm  
  movq $0x2, %rbx                 #  2     0x5   10     OPC=movq_r64_imm64    
  xorw %bx, %bx                   #  3     0xf   3      OPC=xorw_r16_r16      
  callq .move_128_064_xmm1_r8_r9  #  4     0x12  5      OPC=callq_label       
  xchgq %r9, %rbx                 #  5     0x17  3      OPC=xchgq_r64_r64     
  retq                            #  6     0x1a  1      OPC=retq              
                                                                              
.size target, .-target
