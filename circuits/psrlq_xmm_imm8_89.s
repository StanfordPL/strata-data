  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                      #  Line  RIP   Bytes  Opcode                  
.target:                    #        0     0      OPC=<label>             
  vcvttpd2dq %xmm1, %xmm3   #  1     0     4      OPC=vcvttpd2dq_xmm_xmm  
  vcvtpd2dq %ymm3, %xmm13   #  2     0x4   4      OPC=vcvtpd2dq_xmm_ymm   
  punpckhqdq %xmm13, %xmm1  #  3     0x8   5      OPC=punpckhqdq_xmm_xmm  
  unpckhpd %xmm1, %xmm1     #  4     0xd   4      OPC=unpckhpd_xmm_xmm    
  retq                      #  5     0x11  1      OPC=retq                
                                                                          
.size target, .-target
