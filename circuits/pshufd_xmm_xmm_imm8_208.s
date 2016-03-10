  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm5, %ymm6                       #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label              
  vbroadcastss %xmm2, %xmm10                      #  4     0xf   5      OPC=vbroadcastss_xmm_xmm     
  callq .move_128_256_xmm10_xmm11_ymm2            #  5     0x14  5      OPC=callq_label              
  vfmadd213pd %xmm2, %xmm8, %xmm5                 #  6     0x19  5      OPC=vfmadd213pd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  7     0x1e  5      OPC=callq_label              
  retq                                            #  8     0x23  1      OPC=retq                     
                                                                                                     
.size target, .-target
