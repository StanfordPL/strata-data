  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  callq .move_r9b_to_byte_6_of_ymm1         #  2     0x5   5      OPC=callq_label             
  vpmovzxbd %xmm1, %xmm5                    #  3     0xa   5      OPC=vpmovzxbd_xmm_xmm       
  vcvtsd2ss %xmm5, %xmm3, %xmm10            #  4     0xf   4      OPC=vcvtsd2ss_xmm_xmm_xmm   
  vcvtpd2dqx %xmm5, %xmm3                   #  5     0x13  4      OPC=vcvtpd2dqx_xmm_xmm      
  punpckhdq %xmm2, %xmm3                    #  6     0x17  4      OPC=punpckhdq_xmm_xmm       
  vpunpckldq %xmm10, %xmm3, %xmm1           #  7     0x1b  5      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                      #  8     0x20  1      OPC=retq                    
                                                                                              
.size target, .-target
