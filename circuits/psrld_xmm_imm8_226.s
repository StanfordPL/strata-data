  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vaddsubpd %xmm1, %xmm1, %xmm12  #  1     0     4      OPC=vaddsubpd_xmm_xmm_xmm  
  punpckhqdq %xmm1, %xmm12        #  2     0x4   5      OPC=punpckhqdq_xmm_xmm     
  vandnps %xmm12, %xmm12, %xmm4   #  3     0x9   5      OPC=vandnps_xmm_xmm_xmm    
  cvtpd2dq %xmm4, %xmm1           #  4     0xe   4      OPC=cvtpd2dq_xmm_xmm       
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
