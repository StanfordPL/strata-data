  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm1_xmm8_xmm9             #  2     0x5   5      OPC=callq_label            
  vmaxpd %xmm8, %xmm1, %xmm6                    #  3     0xa   5      OPC=vmaxpd_xmm_xmm_xmm     
  vmovshdup %xmm6, %xmm10                       #  4     0xf   4      OPC=vmovshdup_xmm_xmm      
  vunpcklps %xmm4, %xmm7, %xmm11                #  5     0x13  4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1           #  6     0x17  5      OPC=callq_label            
  retq                                          #  7     0x1c  1      OPC=retq                   
                                                                                                 
.size target, .-target
