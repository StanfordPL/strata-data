  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm11, %xmm5           #  2     0x5   5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %xmm2, %xmm5, %xmm8        #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmulsd %xmm5, %xmm11, %xmm9          #  4     0xe   4      OPC=vmulsd_xmm_xmm_xmm     
  vmovhlps %xmm8, %xmm9, %xmm11        #  5     0x12  5      OPC=vmovhlps_xmm_xmm_xmm   
  vcvttpd2dq %xmm9, %xmm1              #  6     0x17  5      OPC=vcvttpd2dq_xmm_xmm     
  callq .move_64_128_xmm10_xmm11_xmm1  #  7     0x1c  5      OPC=callq_label            
  retq                                 #  8     0x21  1      OPC=retq                   
                                                                                        
.size target, .-target
