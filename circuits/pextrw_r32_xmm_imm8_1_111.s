  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm3                 #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  pmovzxwd %xmm9, %xmm3                           #  3     0x9   6      OPC=pmovzxwd_xmm_xmm         
  callq .move_128_032_xmm3_eax_edx_r8d_r9d        #  4     0xf   5      OPC=callq_label              
  callq .move_032_016_edx_r8w_r9w                 #  5     0x14  5      OPC=callq_label              
  callq .move_032_064_r8d_r9d_rbx                 #  6     0x19  5      OPC=callq_label              
  retq                                            #  7     0x1e  1      OPC=retq                     
                                                                                                     
.size target, .-target
