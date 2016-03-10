  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                  
.target:                                        #        0    0      OPC=<label>             
  vsubpd %xmm3, %xmm3, %xmm1                    #  1     0    4      OPC=vsubpd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x4  5      OPC=callq_label         
  movd %r10d, %xmm1                             #  3     0x9  5      OPC=movd_xmm_r32        
  retq                                          #  4     0xe  1      OPC=retq                
                                                                                             
.size target, .-target
