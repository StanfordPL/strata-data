  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vunpckhps %xmm3, %xmm2, %xmm5                   #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm    
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vpunpcklqdq %xmm5, %xmm5, %xmm11                #  3     0x9   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm3             #  4     0xd   5      OPC=callq_label              
  vmovsd %xmm8, %xmm3, %xmm1                      #  5     0x12  5      OPC=vmovsd_xmm_xmm_xmm       
  retq                                            #  6     0x17  1      OPC=retq                     
                                                                                                     
.size target, .-target
