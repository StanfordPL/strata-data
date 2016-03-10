  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vxorpd %xmm4, %xmm2, %xmm10                   #  2     0x5   4      OPC=vxorpd_xmm_xmm_xmm  
  orps %xmm4, %xmm10                            #  3     0x9   4      OPC=orps_xmm_xmm        
  vmovups %xmm3, %xmm11                         #  4     0xd   4      OPC=vmovups_xmm_xmm     
  callq .move_128_256_xmm10_xmm11_ymm1          #  5     0x11  5      OPC=callq_label         
  retq                                          #  6     0x16  1      OPC=retq                
                                                                                              
.size target, .-target
