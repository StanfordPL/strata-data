  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                      
.target:                                        #        0    0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm2                #  1     0    4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x4  5      OPC=callq_label             
  movl %r12d, %ebx                              #  3     0x9  3      OPC=movl_r32_r32            
  retq                                          #  4     0xc  1      OPC=retq                    
                                                                                                 
.size target, .-target
