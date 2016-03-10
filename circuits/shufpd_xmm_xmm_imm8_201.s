  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vminps %xmm2, %xmm2, %xmm11                     #  2     0x5   4      OPC=vminps_xmm_xmm_xmm     
  vpaddq %xmm2, %xmm10, %xmm12                    #  3     0x9   4      OPC=vpaddq_xmm_xmm_xmm     
  vmulps %xmm9, %xmm12, %xmm14                    #  4     0xd   5      OPC=vmulps_xmm_xmm_xmm     
  vunpckhpd %xmm14, %xmm1, %xmm10                 #  5     0x12  5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  6     0x17  5      OPC=callq_label            
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
