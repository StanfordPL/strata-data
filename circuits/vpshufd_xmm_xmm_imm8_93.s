  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  movshdup %xmm2, %xmm9                #  2     0x5   5      OPC=movshdup_xmm_xmm    
  vpor %xmm11, %xmm2, %xmm1            #  3     0xa   5      OPC=vpor_xmm_xmm_xmm    
  vmovss %xmm9, %xmm11, %xmm8          #  4     0xf   5      OPC=vmovss_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1    #  5     0x14  5      OPC=callq_label         
  retq                                 #  6     0x19  1      OPC=retq                
                                                                                     
.size target, .-target
