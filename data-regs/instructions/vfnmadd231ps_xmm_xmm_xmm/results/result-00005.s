  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label               
  vxorpd %ymm7, %ymm7, %ymm8           #  2     0x5   4      OPC=vxorpd_ymm_ymm_ymm        
  cvtss2sd %xmm8, %xmm13               #  3     0x9   5      OPC=cvtss2sd_xmm_xmm          
  vfnmsub132ps %xmm3, %xmm3, %xmm13    #  4     0xe   5      OPC=vfnmsub132ps_xmm_xmm_xmm  
  vfmadd213ps %xmm1, %xmm2, %xmm13     #  5     0x13  5      OPC=vfmadd213ps_xmm_xmm_xmm   
  vandps %xmm13, %xmm13, %xmm1         #  6     0x18  5      OPC=vandps_xmm_xmm_xmm        
  retq                                 #  7     0x1d  1      OPC=retq                      
                                                                                           
.size target, .-target
