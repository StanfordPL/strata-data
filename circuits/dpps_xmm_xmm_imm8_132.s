  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vmulps %xmm2, %xmm1, %xmm2                    #  1     0     4      OPC=vmulps_xmm_xmm_xmm   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label          
  vhaddps %xmm7, %xmm5, %xmm6                   #  3     0x9   4      OPC=vhaddps_xmm_xmm_xmm  
  vsubsd %xmm6, %xmm6, %xmm0                    #  4     0xd   4      OPC=vsubsd_xmm_xmm_xmm   
  vmovupd %ymm0, %ymm15                         #  5     0x11  4      OPC=vmovupd_ymm_ymm      
  pmovsxbd %xmm15, %xmm1                        #  6     0x15  6      OPC=pmovsxbd_xmm_xmm     
  por %xmm15, %xmm1                             #  7     0x1b  5      OPC=por_xmm_xmm          
  retq                                          #  8     0x20  1      OPC=retq                 
                                                                                               
.size target, .-target
