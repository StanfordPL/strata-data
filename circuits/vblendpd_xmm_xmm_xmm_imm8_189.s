  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r10_r11                #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  vmovq %r11, %xmm1                               #  3     0xa   5      OPC=vmovq_xmm_r64            
  vmovsd %xmm3, %xmm9, %xmm7                      #  4     0xf   4      OPC=vmovsd_xmm_xmm_xmm       
  vpunpcklqdq %xmm1, %xmm7, %xmm1                 #  5     0x13  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq                     
                                                                                                     
.size target, .-target
