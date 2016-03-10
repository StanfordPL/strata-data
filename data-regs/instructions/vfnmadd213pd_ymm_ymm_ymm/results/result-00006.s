  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  vfnmadd132pd %ymm1, %ymm3, %ymm2              #  1     0     5      OPC=vfnmadd132pd_ymm_ymm_ymm  
  vmovupd %xmm2, %xmm3                          #  2     0x5   4      OPC=vmovupd_xmm_xmm           
  vminps %ymm2, %ymm2, %ymm1                    #  3     0x9   4      OPC=vminps_ymm_ymm_ymm        
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label               
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label               
  retq                                          #  6     0x17  1      OPC=retq                      
                                                                                                    
.size target, .-target
