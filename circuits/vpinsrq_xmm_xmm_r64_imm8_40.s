  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  orb %bh, %bh                      #  1     0     2      OPC=orb_rh_rh     
  callq .move_128_064_xmm2_r10_r11  #  2     0x2   5      OPC=callq_label   
  vzeroall                          #  3     0x7   3      OPC=vzeroall      
  movq %rbx, %r10                   #  4     0xa   3      OPC=movq_r64_r64  
  callq .move_064_128_r10_r11_xmm1  #  5     0xd   5      OPC=callq_label   
  retq                              #  6     0x12  1      OPC=retq          
                                                                            
.size target, .-target
