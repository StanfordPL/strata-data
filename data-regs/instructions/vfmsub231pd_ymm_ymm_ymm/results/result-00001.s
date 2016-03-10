  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vfmsub132pd %ymm3, %ymm1, %ymm2      #  2     0x5   5      OPC=vfmsub132pd_ymm_ymm_ymm   
  callq .move_64_128_xmm10_xmm11_xmm3  #  3     0xa   5      OPC=callq_label               
  vfnmadd132pd %ymm3, %ymm2, %ymm3     #  4     0xf   5      OPC=vfnmadd132pd_ymm_ymm_ymm  
  vmaxpd %ymm2, %ymm3, %ymm1           #  5     0x14  4      OPC=vmaxpd_ymm_ymm_ymm        
  retq                                 #  6     0x18  1      OPC=retq                      
                                                                                           
.size target, .-target
