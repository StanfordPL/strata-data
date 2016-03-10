  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  movupd %xmm9, %xmm0                             #  2     0x5   5      OPC=movupd_xmm_xmm  
  orpd %xmm0, %xmm0                               #  3     0xa   4      OPC=orpd_xmm_xmm    
  movq %xmm0, %rbx                                #  4     0xe   5      OPC=movq_r64_xmm    
  retq                                            #  5     0x13  1      OPC=retq            
                                                                                            
.size target, .-target
