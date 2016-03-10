  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  unpcklps %xmm1, %xmm5                         #  2     0x5   3      OPC=unpcklps_xmm_xmm  
  vmovq %xmm5, %xmm12                           #  3     0x8   4      OPC=vmovq_xmm_xmm     
  movshdup %xmm2, %xmm13                        #  4     0xc   5      OPC=movshdup_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1           #  5     0x11  5      OPC=callq_label       
  retq                                          #  6     0x16  1      OPC=retq              
                                                                                            
.size target, .-target
