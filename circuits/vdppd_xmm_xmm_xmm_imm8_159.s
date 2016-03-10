  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  mulpd %xmm3, %xmm2                #  1     0     4      OPC=mulpd_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  2     0x4   5      OPC=callq_label    
  movq %r10, %r11                   #  3     0x9   3      OPC=movq_r64_r64   
  vzeroall                          #  4     0xc   3      OPC=vzeroall       
  callq .move_064_128_r10_r11_xmm1  #  5     0xf   5      OPC=callq_label    
  addpd %xmm8, %xmm1                #  6     0x14  5      OPC=addpd_xmm_xmm  
  retq                              #  7     0x19  1      OPC=retq           
                                                                             
.size target, .-target
