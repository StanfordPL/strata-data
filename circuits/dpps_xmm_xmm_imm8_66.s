  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vmulps %xmm2, %xmm1, %xmm0                    #  1     0     4      OPC=vmulps_xmm_xmm_xmm       
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  xorps %xmm3, %xmm3                            #  3     0x9   3      OPC=xorps_xmm_xmm            
  vpunpckhqdq %xmm5, %xmm0, %xmm0               #  4     0xc   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_64_xmm3_xmm8_xmm9             #  5     0x10  5      OPC=callq_label              
  vfmadd231ss %xmm8, %xmm9, %xmm0               #  6     0x15  5      OPC=vfmadd231ss_xmm_xmm_xmm  
  punpckldq %xmm0, %xmm8                        #  7     0x1a  5      OPC=punpckldq_xmm_xmm        
  callq .move_64_128_xmm8_xmm9_xmm1             #  8     0x1f  5      OPC=callq_label              
  retq                                          #  9     0x24  1      OPC=retq                     
                                                                                                   
.size target, .-target
