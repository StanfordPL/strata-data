  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vmovd %ebx, %xmm11                            #  2     0x5   4      OPC=vmovd_xmm_r32            
  vfmsub132pd %xmm4, %xmm11, %xmm6              #  3     0x9   5      OPC=vfmsub132pd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  4     0xe   5      OPC=callq_label              
  vorpd %xmm3, %xmm3, %xmm1                     #  5     0x13  4      OPC=vorpd_xmm_xmm_xmm        
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
