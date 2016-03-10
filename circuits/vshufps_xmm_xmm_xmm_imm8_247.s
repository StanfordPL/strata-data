  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13           #  1     0     5      OPC=callq_label         
  vmovshdup %xmm3, %xmm9                        #  2     0x5   4      OPC=vmovshdup_xmm_xmm   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label         
  vmovss %xmm7, %xmm12, %xmm4                   #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm  
  vmovsd %xmm4, %xmm9, %xmm1                    #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                                          #  6     0x16  1      OPC=retq                
                                                                                              
.size target, .-target
