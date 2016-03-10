  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm3_r8_r9    #  1     0     5      OPC=callq_label         
  callq .move_128_064_xmm2_r10_r11  #  2     0x5   5      OPC=callq_label         
  movw %r9w, %r11w                  #  3     0xa   4      OPC=movw_r16_r16        
  vminsd %xmm3, %xmm3, %xmm11       #  4     0xe   4      OPC=vminsd_xmm_xmm_xmm  
  callq .move_064_128_r10_r11_xmm2  #  5     0x12  5      OPC=callq_label         
  vmovsd %xmm11, %xmm2, %xmm1       #  6     0x17  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                              #  7     0x1c  1      OPC=retq                
                                                                                  
.size target, .-target
