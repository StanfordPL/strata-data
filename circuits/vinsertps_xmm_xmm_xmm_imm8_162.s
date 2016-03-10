  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label               
  vunpckhps %xmm5, %xmm3, %xmm0                   #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm     
  vfmadd213sd %xmm0, %xmm8, %xmm10                #  4     0xe   5      OPC=vfmadd213sd_xmm_xmm_xmm   
  vpandn %xmm4, %xmm4, %xmm9                      #  5     0x13  4      OPC=vpandn_xmm_xmm_xmm        
  vfnmsub231sd %xmm10, %xmm9, %xmm1               #  6     0x17  5      OPC=vfnmsub231sd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1c  5      OPC=callq_label               
  retq                                            #  8     0x21  1      OPC=retq                      
                                                                                                      
.size target, .-target
