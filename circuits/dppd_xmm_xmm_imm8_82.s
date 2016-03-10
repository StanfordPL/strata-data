  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vxorps %xmm8, %xmm8, %xmm5           #  1     0     5      OPC=vxorps_xmm_xmm_xmm       
  vfmsub213pd %xmm5, %xmm1, %xmm2      #  2     0x5   5      OPC=vfmsub213pd_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label              
  cvtps2pd %xmm5, %xmm1                #  4     0xf   3      OPC=cvtps2pd_xmm_xmm         
  haddpd %xmm10, %xmm1                 #  5     0x12  5      OPC=haddpd_xmm_xmm           
  retq                                 #  6     0x17  1      OPC=retq                     
                                                                                          
.size target, .-target
