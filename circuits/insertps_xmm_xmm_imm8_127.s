  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vcvtpd2dqx %xmm5, %xmm15                      #  2     0x5   4      OPC=vcvtpd2dqx_xmm_xmm     
  vunpckhpd %xmm6, %xmm15, %xmm13               #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm  
  sqrtpd %xmm13, %xmm1                          #  4     0xd   5      OPC=sqrtpd_xmm_xmm         
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target
