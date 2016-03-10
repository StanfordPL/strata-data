  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm3_r10_r11              #  2     0x5   5      OPC=callq_label    
  callq .move_032_064_r12d_r13d_rbx             #  3     0xa   5      OPC=callq_label    
  vzeroall                                      #  4     0xf   3      OPC=vzeroall       
  xaddq %r10, %rbx                              #  5     0x12  4      OPC=xaddq_r64_r64  
  callq .move_064_128_r10_r11_xmm1              #  6     0x16  5      OPC=callq_label    
  retq                                          #  7     0x1b  1      OPC=retq           
                                                                                         
.size target, .-target
