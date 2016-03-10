  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovsxwq %xmm1, %ymm1                        #  1     0     5      OPC=vpmovsxwq_ymm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label        
  movd %xmm6, %edx                              #  3     0xa   4      OPC=movd_r32_xmm       
  movzwq %dx, %rbx                              #  4     0xe   4      OPC=movzwq_r64_r16     
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
