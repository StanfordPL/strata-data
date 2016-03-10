  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vxorpd %xmm5, %xmm5, %xmm2                    #  1     0     4      OPC=vxorpd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x4   5      OPC=callq_label         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  3     0x9   5      OPC=callq_label         
  callq .move_032_016_edx_r10w_r11w             #  4     0xe   5      OPC=callq_label         
  movslq %r11d, %rbx                            #  5     0x13  3      OPC=movslq_r64_r32      
  retq                                          #  6     0x16  1      OPC=retq                
                                                                                              
.size target, .-target
