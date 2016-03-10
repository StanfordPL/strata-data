  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movss %xmm2, %xmm3                #  1     0     4      OPC=movss_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  2     0x4   5      OPC=callq_label    
  orq %r11, %r11                    #  3     0x9   3      OPC=orq_r64_r64    
  vzeroall                          #  4     0xc   3      OPC=vzeroall       
  callq .move_064_128_r10_r11_xmm1  #  5     0xf   5      OPC=callq_label    
  retq                              #  6     0x14  1      OPC=retq           
                                                                             
.size target, .-target
