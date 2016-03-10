  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm10, %xmm1                          #  2     0x5   6      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11                #  3     0xb   5      OPC=callq_label       
  movmskpd %xmm10, %rbx                           #  4     0x10  5      OPC=movmskpd_r64_xmm  
  xaddw %r11w, %bx                                #  5     0x15  5      OPC=xaddw_r16_r16     
  retq                                            #  6     0x1a  1      OPC=retq              
                                                                                              
.size target, .-target
