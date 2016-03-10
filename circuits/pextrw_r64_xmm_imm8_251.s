  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movq $0x10, %rbx                                #  2     0x5   10     OPC=movq_r64_imm64    
  pmovzxwq %xmm9, %xmm3                           #  3     0xf   6      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11                #  4     0x15  5      OPC=callq_label       
  xchgl %ebx, %r11d                               #  5     0x1a  3      OPC=xchgl_r32_r32     
  retq                                            #  6     0x1d  1      OPC=retq              
                                                                                              
.size target, .-target
