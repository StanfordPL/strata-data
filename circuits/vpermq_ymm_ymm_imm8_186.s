  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm13, %ymm3            #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vcvtpd2ps %ymm3, %xmm0                #  3     0xa   4      OPC=vcvtpd2ps_xmm_ymm      
  orpd %xmm0, %xmm2                     #  4     0xe   4      OPC=orpd_xmm_xmm           
  vunpckhpd %ymm3, %ymm2, %ymm1         #  5     0x12  4      OPC=vunpckhpd_ymm_ymm_ymm  
  unpckhpd %xmm3, %xmm1                 #  6     0x16  4      OPC=unpckhpd_xmm_xmm       
  retq                                  #  7     0x1a  1      OPC=retq                   
                                                                                         
.size target, .-target
