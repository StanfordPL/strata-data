  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label    
  vmovq %xmm2, %r8                  #  3     0xa   5      OPC=vmovq_r64_xmm  
  vzeroall                          #  4     0xf   3      OPC=vzeroall       
  xchgw %r9w, %r11w                 #  5     0x12  4      OPC=xchgw_r16_r16  
  callq .move_064_128_r8_r9_xmm1    #  6     0x16  5      OPC=callq_label    
  retq                              #  7     0x1b  1      OPC=retq           
                                                                             
.size target, .-target
