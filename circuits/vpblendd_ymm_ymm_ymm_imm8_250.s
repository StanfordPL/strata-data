  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  vfmadd213sd %xmm10, %xmm5, %xmm6                #  3     0xa   5      OPC=vfmadd213sd_xmm_xmm_xmm  
  vmovss %xmm8, %xmm5, %xmm15                     #  4     0xf   5      OPC=vmovss_xmm_xmm_xmm       
  mulpd %xmm5, %xmm4                              #  5     0x14  4      OPC=mulpd_xmm_xmm            
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3    #  6     0x18  5      OPC=callq_label              
  vpxor %ymm15, %ymm3, %ymm1                      #  7     0x1d  5      OPC=vpxor_ymm_ymm_ymm        
  retq                                            #  8     0x22  1      OPC=retq                     
                                                                                                     
.size target, .-target
