  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  unpckhps %xmm11, %xmm1                          #  2     0x5   4      OPC=unpckhps_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11                #  3     0x9   5      OPC=callq_label       
  movq $0x80, %rbx                                #  4     0xe   10     OPC=movq_r64_imm64    
  movw %r11w, %bx                                 #  5     0x18  4      OPC=movw_r16_r16      
  retq                                            #  6     0x1c  1      OPC=retq              
                                                                                              
.size target, .-target
