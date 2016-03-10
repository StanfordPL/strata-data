  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vcvtpd2ps %xmm1, %xmm3          #  1     0     4      OPC=vcvtpd2ps_xmm_xmm       
  vpunpckhdq %xmm1, %xmm3, %xmm9  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpbroadcastb %xmm9, %ymm11      #  3     0x8   5      OPC=vpbroadcastb_ymm_xmm    
  movapd %xmm11, %xmm1            #  4     0xd   5      OPC=movapd_xmm_xmm          
  retq                            #  5     0x12  1      OPC=retq                    
                                                                                    
.size target, .-target
