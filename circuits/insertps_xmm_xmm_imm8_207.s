  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label       
  movmskpd %xmm6, %rax                          #  2     0x5  4      OPC=movmskpd_r64_xmm  
  movq %rax, %xmm1                              #  3     0x9  5      OPC=movq_xmm_r64      
  retq                                          #  4     0xe  1      OPC=retq              
                                                                                           
.size target, .-target
