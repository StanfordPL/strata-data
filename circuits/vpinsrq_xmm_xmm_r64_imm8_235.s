  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label         
  vzeroall                          #  2     0x5   3      OPC=vzeroall            
  vpsubd %xmm5, %xmm3, %xmm1        #  3     0x8   4      OPC=vpsubd_xmm_xmm_xmm  
  movq %rbx, %r11                   #  4     0xc   3      OPC=movq_r64_r64        
  movw %bx, %r11w                   #  5     0xf   4      OPC=movw_r16_r16        
  callq .move_064_128_r10_r11_xmm1  #  6     0x13  5      OPC=callq_label         
  retq                              #  7     0x18  1      OPC=retq                
                                                                                  
.size target, .-target
