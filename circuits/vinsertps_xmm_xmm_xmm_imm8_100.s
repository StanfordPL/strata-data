  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  callq .move_128_64_xmm2_xmm10_xmm11             #  2     0x5   5      OPC=callq_label               
  vfnmadd132ss %xmm11, %xmm9, %xmm11              #  3     0xa   5      OPC=vfnmadd132ss_xmm_xmm_xmm  
  vpunpckldq %xmm11, %xmm8, %xmm3                 #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm    
  vpunpckhqdq %xmm1, %xmm3, %xmm1                 #  5     0x14  4      OPC=vpunpckhqdq_xmm_xmm_xmm   
  vmovhlps %xmm3, %xmm1, %xmm11                   #  6     0x18  4      OPC=vmovhlps_xmm_xmm_xmm      
  callq .move_64_128_xmm10_xmm11_xmm1             #  7     0x1c  5      OPC=callq_label               
  retq                                            #  8     0x21  1      OPC=retq                      
                                                                                                      
.size target, .-target
