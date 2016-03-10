  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm5, %xmm1                  #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhpd %xmm6, %xmm9, %xmm0                   #  4     0xe   4      OPC=vunpckhpd_xmm_xmm_xmm   
  cvtsd2ss %xmm0, %xmm3                           #  5     0x12  4      OPC=cvtsd2ss_xmm_xmm        
  callq .move_byte_5_of_ymm1_to_r8b               #  6     0x16  5      OPC=callq_label             
  paddq %xmm10, %xmm3                             #  7     0x1b  5      OPC=paddq_xmm_xmm           
  callq .move_r8b_to_byte_5_of_ymm1               #  8     0x20  5      OPC=callq_label             
  movlhps %xmm3, %xmm1                            #  9     0x25  3      OPC=movlhps_xmm_xmm         
  retq                                            #  10    0x28  1      OPC=retq                    
                                                                                                    
.size target, .-target
