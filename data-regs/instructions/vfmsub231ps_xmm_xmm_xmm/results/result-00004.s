  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vfmsub132ps %xmm3, %xmm1, %xmm2               #  2     0x5   5      OPC=vfmsub132ps_xmm_xmm_xmm  
  vmovhlps %xmm5, %xmm7, %xmm4                  #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm     
  vxorps %xmm2, %xmm4, %xmm1                    #  4     0xe   4      OPC=vxorps_xmm_xmm_xmm       
  retq                                          #  5     0x12  1      OPC=retq                     
                                                                                                   
.size target, .-target
