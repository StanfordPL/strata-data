  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm8_xmm9    #  1     0     5      OPC=callq_label         
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  callq .move_64_128_xmm10_xmm11_xmm1  #  3     0xa   5      OPC=callq_label         
  vmovss %xmm11, %xmm9, %xmm3          #  4     0xf   5      OPC=vmovss_xmm_xmm_xmm  
  movlhps %xmm3, %xmm1                 #  5     0x14  3      OPC=movlhps_xmm_xmm     
  retq                                 #  6     0x17  1      OPC=retq                
                                                                                     
.size target, .-target
