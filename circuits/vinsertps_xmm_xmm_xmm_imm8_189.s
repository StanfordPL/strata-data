  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vpbroadcastb %xmm4, %xmm12                    #  2     0x5   5      OPC=vpbroadcastb_xmm_xmm      
  callq .move_128_64_xmm2_xmm8_xmm9             #  3     0xa   5      OPC=callq_label               
  vandnpd %xmm8, %xmm8, %xmm1                   #  4     0xf   5      OPC=vandnpd_xmm_xmm_xmm       
  callq .move_128_64_xmm1_xmm12_xmm13           #  5     0x14  5      OPC=callq_label               
  vcvtsd2ss %xmm6, %xmm8, %xmm4                 #  6     0x19  4      OPC=vcvtsd2ss_xmm_xmm_xmm     
  vfnmadd132pd %ymm12, %ymm4, %ymm1             #  7     0x1d  5      OPC=vfnmadd132pd_ymm_ymm_ymm  
  retq                                          #  8     0x22  1      OPC=retq                      
                                                                                                    
.size target, .-target
