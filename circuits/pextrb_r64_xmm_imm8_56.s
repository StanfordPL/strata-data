  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm3                   #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  3     0x9   5      OPC=callq_label            
  callq .move_128_064_xmm3_r12_r13                #  4     0xe   5      OPC=callq_label            
  movzbq %r12b, %rbx                              #  5     0x13  4      OPC=movzbq_r64_r8          
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
