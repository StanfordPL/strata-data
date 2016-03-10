  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vhsubpd %xmm7, %xmm7, %xmm13                  #  2     0x5   4      OPC=vhsubpd_xmm_xmm_xmm       
  vunpcklps %xmm13, %xmm5, %xmm12               #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm     
  vfmsub213sd %xmm7, %xmm7, %xmm5               #  4     0xe   5      OPC=vfmsub213sd_xmm_xmm_xmm   
  vfnmsub132pd %xmm12, %xmm12, %xmm4            #  5     0x13  5      OPC=vfnmsub132pd_xmm_xmm_xmm  
  vmovlhps %xmm5, %xmm2, %xmm7                  #  6     0x18  4      OPC=vmovlhps_xmm_xmm_xmm      
  vpbroadcastq %xmm12, %xmm1                    #  7     0x1c  5      OPC=vpbroadcastq_xmm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x21  5      OPC=callq_label               
  retq                                          #  9     0x26  1      OPC=retq                      
                                                                                                    
.size target, .-target
