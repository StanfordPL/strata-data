  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vmovddup %xmm2, %xmm12                          #  3     0xa   4      OPC=vmovddup_xmm_xmm       
  callq .move_r8b_to_byte_0_of_ymm1               #  4     0xe   5      OPC=callq_label            
  vunpckhps %xmm12, %xmm10, %xmm9                 #  5     0x13  5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovss %xmm9, %xmm1, %xmm8                      #  6     0x18  5      OPC=vmovss_xmm_xmm_xmm     
  callq .move_64_128_xmm8_xmm9_xmm1               #  7     0x1d  5      OPC=callq_label            
  retq                                            #  8     0x22  1      OPC=retq                   
                                                                                                   
.size target, .-target
