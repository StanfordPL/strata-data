  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  vpmovsxdq %xmm9, %xmm1             #  2     0x5   5      OPC=vpmovsxdq_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13   #  3     0xa   5      OPC=callq_label        
  callq .move_032_064_r12d_r13d_rbx  #  4     0xf   5      OPC=callq_label        
  retq                               #  5     0x14  1      OPC=retq               
                                                                                  
.size target, .-target
