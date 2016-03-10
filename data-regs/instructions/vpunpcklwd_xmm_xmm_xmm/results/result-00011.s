  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  punpcklwd %xmm3, %xmm2                        #  2     0x5   4      OPC=punpcklwd_xmm_xmm   
  vmovmskpd %xmm4, %r10d                        #  3     0x9   4      OPC=vmovmskpd_r32_xmm   
  vpandn %xmm4, %xmm5, %xmm10                   #  4     0xd   4      OPC=vpandn_xmm_xmm_xmm  
  cvtsi2ssl %r10d, %xmm10                       #  5     0x11  5      OPC=cvtsi2ssl_xmm_r32   
  vpor %xmm10, %xmm2, %xmm1                     #  6     0x16  5      OPC=vpor_xmm_xmm_xmm    
  retq                                          #  7     0x1b  1      OPC=retq                
                                                                                              
.size target, .-target
