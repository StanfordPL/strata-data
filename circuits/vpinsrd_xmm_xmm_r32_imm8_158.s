  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode            
.target:                                          #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label   
  vzeroall                                        #  2     0x5   3      OPC=vzeroall      
  orw %bx, %r9w                                   #  3     0x8   4      OPC=orw_r16_r16   
  callq .move_064_128_r8_r9_xmm3                  #  4     0xc   5      OPC=callq_label   
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  5     0x11  5      OPC=callq_label   
  movd %ebx, %xmm10                               #  6     0x16  5      OPC=movd_xmm_r32  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label   
  retq                                            #  8     0x20  1      OPC=retq          
                                                                                          
.size target, .-target
