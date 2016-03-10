  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  movups %xmm1, %xmm10                            #  2     0x5   4      OPC=movups_xmm_xmm     
  paddd %xmm10, %xmm11                            #  3     0x9   5      OPC=paddd_xmm_xmm      
  vmovmskpd %xmm11, %rbx                          #  4     0xe   5      OPC=vmovmskpd_r64_xmm  
  retq                                            #  5     0x13  1      OPC=retq               
                                                                                               
.size target, .-target
