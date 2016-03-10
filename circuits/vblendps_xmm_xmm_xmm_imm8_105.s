  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vfmsub213ss %xmm3, %xmm3, %xmm2                 #  1     0     5      OPC=vfmsub213ss_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  vbroadcastss %xmm10, %xmm7                      #  3     0xa   5      OPC=vbroadcastss_xmm_xmm     
  vmovshdup %xmm2, %xmm9                          #  4     0xf   4      OPC=vmovshdup_xmm_xmm        
  vmovapd %xmm8, %xmm1                            #  5     0x13  5      OPC=vmovapd_xmm_xmm          
  vpunpckhqdq %ymm1, %ymm2, %ymm10                #  6     0x18  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpckhps %xmm3, %xmm2, %xmm12                  #  7     0x1c  4      OPC=vunpckhps_xmm_xmm_xmm    
  vfmadd132ps %xmm7, %xmm12, %xmm1                #  8     0x20  5      OPC=vfmadd132ps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  9     0x25  5      OPC=callq_label              
  retq                                            #  10    0x2a  1      OPC=retq                     
                                                                                                     
.size target, .-target
