  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vdivps %xmm2, %xmm2, %xmm9                #  1     0     4      OPC=vdivps_xmm_xmm_xmm     
  vpbroadcastd %xmm2, %ymm13                #  2     0x4   5      OPC=vpbroadcastd_ymm_xmm   
  vaddsubpd %xmm9, %xmm2, %xmm1             #  3     0x9   5      OPC=vaddsubpd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xe   5      OPC=callq_label            
  vunpckhps %xmm2, %xmm13, %xmm1            #  5     0x13  4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_r9b_to_byte_0_of_ymm1         #  6     0x17  5      OPC=callq_label            
  movhlps %xmm13, %xmm1                     #  7     0x1c  4      OPC=movhlps_xmm_xmm        
  retq                                      #  8     0x20  1      OPC=retq                   
                                                                                             
.size target, .-target
