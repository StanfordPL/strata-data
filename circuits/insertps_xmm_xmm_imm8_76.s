  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label         
  vmovsldup %xmm5, %xmm2                          #  2     0x5   4      OPC=vmovsldup_xmm_xmm   
  vmovsd %xmm1, %xmm1, %xmm5                      #  3     0x9   4      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label         
  vmovss %xmm8, %xmm5, %xmm10                     #  5     0x12  5      OPC=vmovss_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  6     0x17  5      OPC=callq_label         
  retq                                            #  7     0x1c  1      OPC=retq                
                                                                                                
.size target, .-target
