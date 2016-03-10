  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  vmovdqa %xmm5, %xmm1                          #  2     0x5   4      OPC=vmovdqa_xmm_xmm   
  movmskpd %xmm6, %rbx                          #  3     0x9   4      OPC=movmskpd_r64_xmm  
  callq .move_128_064_xmm1_r8_r9                #  4     0xd   5      OPC=callq_label       
  addl %r8d, %ebx                               #  5     0x12  3      OPC=addl_r32_r32      
  retq                                          #  6     0x15  1      OPC=retq              
                                                                                            
.size target, .-target
