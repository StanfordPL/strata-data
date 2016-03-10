  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13           #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm1_xmm8_xmm9             #  2     0x5   5      OPC=callq_label              
  vxorps %xmm13, %xmm13, %xmm2                  #  3     0xa   5      OPC=vxorps_xmm_xmm_xmm       
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  4     0xf   5      OPC=callq_label              
  vfmsub213sd %xmm4, %xmm9, %xmm13              #  5     0x14  5      OPC=vfmsub213sd_xmm_xmm_xmm  
  movq %xmm13, %xmm1                            #  6     0x19  5      OPC=movq_xmm_xmm             
  addpd %xmm2, %xmm1                            #  7     0x1e  4      OPC=addpd_xmm_xmm            
  retq                                          #  8     0x22  1      OPC=retq                     
                                                                                                   
.size target, .-target
