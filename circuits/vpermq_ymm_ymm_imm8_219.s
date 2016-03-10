  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm13, %xmm2, %xmm5      #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vunpckhpd %xmm2, %xmm12, %xmm2        #  3     0xa   4      OPC=vunpckhpd_xmm_xmm_xmm    
  vmovupd %xmm5, %xmm9                  #  4     0xe   4      OPC=vmovupd_xmm_xmm          
  pand %xmm2, %xmm12                    #  5     0x12  5      OPC=pand_xmm_xmm             
  cvtpd2ps %xmm12, %xmm8                #  6     0x17  5      OPC=cvtpd2ps_xmm_xmm         
  callq .move_128_256_xmm8_xmm9_ymm1    #  7     0x1c  5      OPC=callq_label              
  vunpckhpd %ymm9, %ymm5, %ymm12        #  8     0x21  5      OPC=vunpckhpd_ymm_ymm_ymm    
  callq .move_64_128_xmm12_xmm13_xmm1   #  9     0x26  5      OPC=callq_label              
  retq                                  #  10    0x2b  1      OPC=retq                     
                                                                                           
.size target, .-target
