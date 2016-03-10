  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vminpd %xmm1, %xmm1, %xmm4                    #  1     0     4      OPC=vminpd_xmm_xmm_xmm  
  vmovshdup %ymm4, %ymm3                        #  2     0x4   4      OPC=vmovshdup_ymm_ymm   
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label         
  movq %xmm7, %rdi                              #  4     0xd   5      OPC=movq_r64_xmm        
  movq %rdi, %rbx                               #  5     0x12  3      OPC=movq_r64_r64        
  retq                                          #  6     0x15  1      OPC=retq                
                                                                                              
.size target, .-target
