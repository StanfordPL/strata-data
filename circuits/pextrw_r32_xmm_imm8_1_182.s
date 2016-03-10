  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movmskpd %xmm10, %rbx                           #  2     0x5   5      OPC=movmskpd_r64_xmm  
  movd %xmm11, %ecx                               #  3     0xa   5      OPC=movd_r32_xmm      
  xorw %cx, %bx                                   #  4     0xf   3      OPC=xorw_r16_r16      
  retq                                            #  5     0x12  1      OPC=retq              
                                                                                              
.size target, .-target
