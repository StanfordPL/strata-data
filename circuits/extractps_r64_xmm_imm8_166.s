  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmaxsd %xmm1, %xmm1, %xmm1                    #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x4   5      OPC=callq_label         
  vmovd %r12d, %xmm5                            #  3     0x9   5      OPC=vmovd_xmm_r32       
  vmovss %xmm5, %xmm1, %xmm5                    #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm  
  movd %xmm5, %ebx                              #  5     0x12  4      OPC=movd_r32_xmm        
  retq                                          #  6     0x16  1      OPC=retq                
                                                                                              
.size target, .-target
