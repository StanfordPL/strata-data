  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovss %xmm11, %xmm2, %xmm8                     #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm       
  vmovlhps %xmm9, %xmm10, %xmm1                   #  3     0xa   5      OPC=vmovlhps_xmm_xmm_xmm     
  vfmadd213ss %xmm11, %xmm1, %xmm10               #  4     0xf   5      OPC=vfmadd213ss_xmm_xmm_xmm  
  vpbroadcastd %xmm1, %ymm13                      #  5     0x14  5      OPC=vpbroadcastd_ymm_xmm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  6     0x19  5      OPC=callq_label              
  vmovlhps %xmm2, %xmm13, %xmm1                   #  7     0x1e  4      OPC=vmovlhps_xmm_xmm_xmm     
  retq                                            #  8     0x22  1      OPC=retq                     
                                                                                                     
.size target, .-target
