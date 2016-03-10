  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm1, %xmm10, %xmm12                 #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  movaps %xmm12, %xmm1                            #  3     0x9   4      OPC=movaps_xmm_xmm         
  vunpcklps %xmm8, %xmm1, %xmm0                   #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm0, %xmm1                              #  5     0x12  4      OPC=movsd_xmm_xmm          
  retq                                            #  6     0x16  1      OPC=retq                   
                                                                                                   
.size target, .-target
