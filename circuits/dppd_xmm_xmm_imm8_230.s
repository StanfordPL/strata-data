  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label                 
  vmulpd %xmm2, %xmm1, %xmm3                    #  2     0x5   4      OPC=vmulpd_xmm_xmm_xmm          
  callq .move_256_128_ymm3_xmm8_xmm9            #  3     0x9   5      OPC=callq_label                 
  psubd %xmm1, %xmm1                            #  4     0xe   4      OPC=psubd_xmm_xmm               
  cvtss2sd %xmm9, %xmm8                         #  5     0x12  5      OPC=cvtss2sd_xmm_xmm            
  vfmaddsub132pd %xmm7, %xmm8, %xmm5            #  6     0x17  5      OPC=vfmaddsub132pd_xmm_xmm_xmm  
  por %xmm5, %xmm1                              #  7     0x1c  4      OPC=por_xmm_xmm                 
  retq                                          #  8     0x20  1      OPC=retq                        
                                                                                                      
.size target, .-target
