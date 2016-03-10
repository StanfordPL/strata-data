  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                          
.target:                               #        0     0      OPC=<label>                     
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label                 
  vmovss %xmm1, %xmm10, %xmm3          #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm          
  movups %xmm3, %xmm9                  #  3     0x9   4      OPC=movups_xmm_xmm              
  vfmaddsub132pd %xmm3, %xmm9, %xmm11  #  4     0xd   5      OPC=vfmaddsub132pd_xmm_xmm_xmm  
  vandnpd %ymm11, %ymm11, %ymm2        #  5     0x12  5      OPC=vandnpd_ymm_ymm_ymm         
  cvtdq2pd %xmm2, %xmm1                #  6     0x17  4      OPC=cvtdq2pd_xmm_xmm            
  retq                                 #  7     0x1b  1      OPC=retq                        
                                                                                             
.size target, .-target
