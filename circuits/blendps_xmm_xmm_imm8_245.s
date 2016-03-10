  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  1     0     5      OPC=callq_label    
  movss %xmm2, %xmm1                            #  2     0x5   4      OPC=movss_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label    
  movd %r8d, %xmm6                              #  4     0xe   5      OPC=movd_xmm_r32   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x13  5      OPC=callq_label    
  retq                                          #  6     0x18  1      OPC=retq           
                                                                                         
.size target, .-target