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
  xchgw %r11w, %r11w                #  3     0x8   4      OPC=xchgw_r16_r16  
  xchgq %r10, %r11                  #  4     0xc   3      OPC=xchgq_r64_r64  
  callq .move_064_128_r10_r11_xmm1  #  5     0xf   5      OPC=callq_label    
  retq                              #  6     0x14  1      OPC=retq           
                                                                             
.size target, .-target
