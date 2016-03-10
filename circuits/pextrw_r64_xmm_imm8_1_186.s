  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  movddup %xmm1, %xmm2                          #  1     0     4      OPC=movddup_xmm_xmm     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  vmovss %xmm7, %xmm5, %xmm1                    #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0xd   5      OPC=callq_label         
  movzwl %r10w, %ebx                            #  5     0x12  4      OPC=movzwl_r32_r16      
  retq                                          #  6     0x16  1      OPC=retq                
                                                                                              
.size target, .-target
