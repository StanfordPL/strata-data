  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm4, %xmm1, %xmm3                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d      #  3     0x9   5      OPC=callq_label             
  movmskpd %xmm6, %rbx                          #  4     0xe   4      OPC=movmskpd_r64_xmm        
  xchgl %ebx, %r8d                              #  5     0x12  3      OPC=xchgl_r32_r32           
  retq                                          #  6     0x15  1      OPC=retq                    
                                                                                                  
.size target, .-target
