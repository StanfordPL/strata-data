  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmulpd %xmm2, %xmm1, %xmm3                    #  2     0x5   4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_128_64_xmm3_xmm12_xmm13           #  3     0x9   5      OPC=callq_label         
  callq .move_64_128_xmm12_xmm13_xmm1           #  4     0xe   5      OPC=callq_label         
  vaddss %xmm1, %xmm7, %xmm13                   #  5     0x13  4      OPC=vaddss_xmm_xmm_xmm  
  addpd %xmm6, %xmm1                            #  6     0x17  4      OPC=addpd_xmm_xmm       
  movhlps %xmm13, %xmm1                         #  7     0x1b  4      OPC=movhlps_xmm_xmm     
  retq                                          #  8     0x1f  1      OPC=retq                
                                                                                              
.size target, .-target
