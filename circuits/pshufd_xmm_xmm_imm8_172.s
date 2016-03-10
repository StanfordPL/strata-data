  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovapd %xmm11, %xmm9                           #  2     0x5   5      OPC=vmovapd_xmm_xmm          
  punpckldq %xmm11, %xmm8                         #  3     0xa   5      OPC=punpckldq_xmm_xmm        
  vfmsub132sd %xmm9, %xmm10, %xmm11               #  4     0xf   5      OPC=vfmsub132sd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x14  5      OPC=callq_label              
  retq                                            #  6     0x19  1      OPC=retq                     
                                                                                                     
.size target, .-target
