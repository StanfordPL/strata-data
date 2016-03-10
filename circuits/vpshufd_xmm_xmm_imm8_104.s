  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r12_r13                #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  callq .move_032_064_r12d_r13d_rbx               #  3     0xa   5      OPC=callq_label        
  vmovq %rbx, %xmm1                               #  4     0xf   5      OPC=vmovq_xmm_r64      
  movss %xmm10, %xmm2                             #  5     0x14  5      OPC=movss_xmm_xmm      
  punpckldq %xmm2, %xmm1                          #  6     0x19  4      OPC=punpckldq_xmm_xmm  
  retq                                            #  7     0x1d  1      OPC=retq               
                                                                                               
.size target, .-target
