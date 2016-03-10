  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                      #  Line  RIP   Bytes  Opcode                  
.target:                    #        0     0      OPC=<label>             
  vcvtpd2dqx %xmm1, %xmm12  #  1     0     4      OPC=vcvtpd2dqx_xmm_xmm  
  addsd %xmm1, %xmm12       #  2     0x4   5      OPC=addsd_xmm_xmm       
  punpckhqdq %xmm12, %xmm1  #  3     0x9   5      OPC=punpckhqdq_xmm_xmm  
  vrcpps %xmm1, %xmm8       #  4     0xe   4      OPC=vrcpps_xmm_xmm      
  unpckhpd %xmm8, %xmm2     #  5     0x12  5      OPC=unpckhpd_xmm_xmm    
  punpcklwd %xmm2, %xmm1    #  6     0x17  4      OPC=punpcklwd_xmm_xmm   
  retq                      #  7     0x1b  1      OPC=retq                
                                                                          
.size target, .-target
