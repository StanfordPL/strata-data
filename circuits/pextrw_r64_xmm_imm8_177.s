  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  pmovzxwq %xmm1, %xmm1                         #  1     0     5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label       
  unpckhpd %xmm5, %xmm1                         #  3     0xa   4      OPC=unpckhpd_xmm_xmm  
  vmovq %xmm1, %rbx                             #  4     0xe   5      OPC=vmovq_r64_xmm     
  retq                                          #  5     0x13  1      OPC=retq              
                                                                                            
.size target, .-target
