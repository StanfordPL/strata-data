  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm12_xmm13           #  1     0     5      OPC=callq_label              
  vfmsub213ss %xmm13, %xmm12, %xmm1             #  2     0x5   5      OPC=vfmsub213ss_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label              
  vmovapd %xmm5, %xmm0                          #  4     0xf   4      OPC=vmovapd_xmm_xmm          
  vmovd %xmm0, %ebx                             #  5     0x13  4      OPC=vmovd_r32_xmm            
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
