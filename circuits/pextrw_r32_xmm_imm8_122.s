  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movmskpd %xmm5, %ebx                          #  2     0x5   4      OPC=movmskpd_r32_xmm  
  movq %xmm5, %r15                              #  3     0x9   5      OPC=movq_r64_xmm      
  addw %r15w, %bx                               #  4     0xe   4      OPC=addw_r16_r16      
  retq                                          #  5     0x12  1      OPC=retq              
                                                                                            
.size target, .-target
