  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  callq .move_128_64_xmm2_xmm8_xmm9               #  2     0x5   5      OPC=callq_label         
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  3     0xa   5      OPC=callq_label         
  movss %xmm10, %xmm1                             #  4     0xf   5      OPC=movss_xmm_xmm       
  vmovss %xmm11, %xmm9, %xmm8                     #  5     0x14  5      OPC=vmovss_xmm_xmm_xmm  
  movlhps %xmm8, %xmm1                            #  6     0x19  4      OPC=movlhps_xmm_xmm     
  retq                                            #  7     0x1d  1      OPC=retq                
                                                                                                
.size target, .-target
