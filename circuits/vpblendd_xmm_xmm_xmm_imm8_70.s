  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vaddsubpd %xmm3, %xmm11, %xmm4                  #  2     0x5   4      OPC=vaddsubpd_xmm_xmm_xmm    
  vmovshdup %xmm3, %xmm15                         #  3     0x9   4      OPC=vmovshdup_xmm_xmm        
  vfmadd213pd %xmm15, %xmm10, %xmm9               #  4     0xd   5      OPC=vfmadd213pd_xmm_xmm_xmm  
  vmovdqu %xmm2, %xmm0                            #  5     0x12  4      OPC=vmovdqu_xmm_xmm          
  vminps %xmm3, %xmm0, %xmm1                      #  6     0x16  4      OPC=vminps_xmm_xmm_xmm       
  vpunpckhqdq %xmm1, %xmm4, %xmm10                #  7     0x1a  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x1e  5      OPC=callq_label              
  retq                                            #  9     0x23  1      OPC=retq                     
                                                                                                     
.size target, .-target
