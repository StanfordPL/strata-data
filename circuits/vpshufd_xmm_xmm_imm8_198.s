  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vdivss %xmm2, %xmm2, %xmm0                    #  1     0     4      OPC=vdivss_xmm_xmm_xmm       
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  vmovlhps %xmm0, %xmm6, %xmm4                  #  3     0x9   4      OPC=vmovlhps_xmm_xmm_xmm     
  vfmsub132pd %xmm6, %xmm2, %xmm6               #  4     0xd   5      OPC=vfmsub132pd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2  #  5     0x12  5      OPC=callq_label              
  vmovdqu %xmm2, %xmm1                          #  6     0x17  4      OPC=vmovdqu_xmm_xmm          
  retq                                          #  7     0x1b  1      OPC=retq                     
                                                                                                   
.size target, .-target
