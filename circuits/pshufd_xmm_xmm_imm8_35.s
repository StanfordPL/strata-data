  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm2_xmm12_xmm13             #  2     0x5   5      OPC=callq_label              
  movups %xmm2, %xmm15                            #  3     0xa   4      OPC=movups_xmm_xmm           
  vfmsub132sd %xmm11, %xmm2, %xmm9                #  4     0xe   5      OPC=vfmsub132sd_xmm_xmm_xmm  
  vunpcklps %xmm12, %xmm11, %xmm8                 #  5     0x13  5      OPC=vunpcklps_xmm_xmm_xmm    
  vmovups %xmm15, %xmm11                          #  6     0x18  5      OPC=vmovups_xmm_xmm          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1d  5      OPC=callq_label              
  retq                                            #  8     0x22  1      OPC=retq                     
                                                                                                     
.size target, .-target
