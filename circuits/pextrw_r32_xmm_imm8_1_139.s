  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm8_xmm9         #  1     0     5      OPC=callq_label         
  vaddsd %xmm8, %xmm8, %xmm2                #  2     0x5   5      OPC=vaddsd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label         
  callq .move_128_064_xmm2_r10_r11          #  4     0xf   5      OPC=callq_label         
  callq .move_032_016_edx_r10w_r11w         #  5     0x14  5      OPC=callq_label         
  movq %r11, %rbx                           #  6     0x19  3      OPC=movq_r64_r64        
  retq                                      #  7     0x1c  1      OPC=retq                
                                                                                          
.size target, .-target
