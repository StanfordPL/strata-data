  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_64_128_xmm10_xmm11_xmm1             #  2     0x5   5      OPC=callq_label            
  vunpckhps %xmm3, %xmm10, %xmm4                  #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovapd %xmm1, %xmm8                            #  4     0xe   4      OPC=vmovapd_xmm_xmm        
  vxorps %xmm8, %xmm4, %xmm1                      #  5     0x12  5      OPC=vxorps_xmm_xmm_xmm     
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
