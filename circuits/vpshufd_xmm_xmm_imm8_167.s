  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vcvtpd2dqx %xmm4, %xmm1                       #  2     0x5   4      OPC=vcvtpd2dqx_xmm_xmm        
  vbroadcastsd %xmm6, %ymm10                    #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm      
  vmovhlps %xmm10, %xmm7, %xmm6                 #  4     0xe   5      OPC=vmovhlps_xmm_xmm_xmm      
  vfnmadd132pd %xmm5, %xmm7, %xmm4              #  5     0x13  5      OPC=vfnmadd132pd_xmm_xmm_xmm  
  vmovsldup %ymm10, %ymm7                       #  6     0x18  5      OPC=vmovsldup_ymm_ymm         
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1d  5      OPC=callq_label               
  retq                                          #  8     0x22  1      OPC=retq                      
                                                                                                    
.size target, .-target
