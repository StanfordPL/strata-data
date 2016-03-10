  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movups %xmm2, %xmm1               #  1     0     3      OPC=movups_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  2     0x3   5      OPC=callq_label     
  vzeroall                          #  3     0x8   3      OPC=vzeroall        
  xchgq %rbx, %r11                  #  4     0xb   3      OPC=xchgq_r64_r64   
  callq .move_064_128_r10_r11_xmm1  #  5     0xe   5      OPC=callq_label     
  retq                              #  6     0x13  1      OPC=retq            
                                                                              
.size target, .-target
