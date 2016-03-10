  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vmovshdup %xmm2, %xmm1              #  1     0     4      OPC=vmovshdup_xmm_xmm      
  callq .move_128_64_xmm1_xmm8_xmm9   #  2     0x4   5      OPC=callq_label            
  callq .move_byte_3_of_ymm1_to_r9b   #  3     0x9   5      OPC=callq_label            
  vunpcklpd %xmm2, %xmm9, %xmm8       #  4     0xe   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vminsd %xmm8, %xmm8, %xmm11         #  5     0x12  5      OPC=vminsd_xmm_xmm_xmm     
  callq .move_r9b_to_byte_24_of_ymm1  #  6     0x17  5      OPC=callq_label            
  vmovss %xmm11, %xmm1, %xmm1         #  7     0x1c  5      OPC=vmovss_xmm_xmm_xmm     
  vunpckhps %xmm2, %xmm11, %xmm8      #  8     0x21  4      OPC=vunpckhps_xmm_xmm_xmm  
  movlhps %xmm8, %xmm1                #  9     0x25  4      OPC=movlhps_xmm_xmm        
  retq                                #  10    0x29  1      OPC=retq                   
                                                                                       
.size target, .-target
