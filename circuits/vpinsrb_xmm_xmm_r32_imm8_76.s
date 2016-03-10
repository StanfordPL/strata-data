  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                          
.target:                               #        0     0      OPC=<label>                     
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label                 
  vzeroall                             #  2     0x5   3      OPC=vzeroall                    
  callq .move_64_128_xmm12_xmm13_xmm2  #  3     0x8   5      OPC=callq_label                 
  vfmsub231pd %xmm7, %xmm2, %xmm14     #  4     0xd   5      OPC=vfmsub231pd_xmm_xmm_xmm     
  vfmsubadd132ps %xmm14, %xmm9, %xmm1  #  5     0x12  5      OPC=vfmsubadd132ps_xmm_xmm_xmm  
  callq .move_064_128_r8_r9_xmm1       #  6     0x17  5      OPC=callq_label                 
  xchgl %ebx, %r8d                     #  7     0x1c  3      OPC=xchgl_r32_r32               
  callq .move_r8b_to_byte_12_of_ymm1   #  8     0x1f  5      OPC=callq_label                 
  retq                                 #  9     0x24  1      OPC=retq                        
                                                                                             
.size target, .-target
