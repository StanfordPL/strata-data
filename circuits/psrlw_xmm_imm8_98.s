  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                  
.target:                   #        0     0      OPC=<label>             
  movapd %xmm1, %xmm10     #  1     0     5      OPC=movapd_xmm_xmm      
  vcvtdq2pd %xmm10, %xmm3  #  2     0x5   5      OPC=vcvtdq2pd_xmm_xmm   
  cvtpd2dq %xmm3, %xmm1    #  3     0xa   4      OPC=cvtpd2dq_xmm_xmm    
  punpckhqdq %xmm1, %xmm1  #  4     0xe   4      OPC=punpckhqdq_xmm_xmm  
  retq                     #  5     0x12  1      OPC=retq                
                                                                         
.size target, .-target
