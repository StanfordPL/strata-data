  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label         
  vminps %xmm2, %xmm2, %xmm1                #  2     0x5   4      OPC=vminps_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11          #  3     0x9   5      OPC=callq_label         
  callq .move_064_128_r10_r11_xmm2          #  4     0xe   5      OPC=callq_label         
  punpckhwd %xmm2, %xmm1                    #  5     0x13  4      OPC=punpckhwd_xmm_xmm   
  callq .move_r8b_to_byte_0_of_ymm1         #  6     0x17  5      OPC=callq_label         
  retq                                      #  7     0x1c  1      OPC=retq                
                                                                                          
.size target, .-target
